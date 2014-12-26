CON
  _CLKMODE      = XTAL1 + PLL16X                        
  _XINFREQ      = 5_000_000

  PUSH = 10     '' Rotary Encoder Input
  CCLK = 22     '' Display Clock
  DPOT = 23     '' Dispaly Data Out
  DPIN = 24     '' CPLD Data Out
  SCLK = 25     '' CPLD Clock
  CSRE = 26     '' CPLD Data Latch  
  CSCK = 27     '' Display Latch

  SDA_pin = 29
  SCL_pin = 28
  BITRATE = 100_000

  RTC  = %01101000  ''DS3231, Real Time Clock Address
  PRX  = %00010011  ''VCNL4000, Proximity & Light Sensor Address
  FRQ  = %01011000  ''DS1077, Address

VAR
  Long REDS
  Long LEDS
  Byte Bright
  Byte Display
  Byte Seconds
  Byte Minutes
  Byte Hours
  Byte Day
  Byte Month
  Byte Year
  Byte TempH
  Byte TempL
  Byte Select
  Long Temp
  Long Diff
  Byte Old
  Byte New
  Byte Target
  Byte M,N,O,P,Q,R,X
  Byte Color
  Byte RegState
  Byte Duty
  Byte LightH
  Byte LightL
  Long Light
  Byte ProxH
  Byte ProxL
  Long Prox
  Byte OldMinutes

OBJ
  COMM  : "Parallax Serial Terminal"
  I2C   : "I2C PASM driver v1.3"
  MATH  : "FloatMath"                ' Float Math
  MS    : "FloatStringNew"           ' Float Math
  PWM   : "PWM_32_sv2"
  SPI   : "SPI_Asm"  
  
PUB MAIN|Settings
  I2C.start(SCL_pin,SDA_pin,BITRATE)
  Comm.Start(115200)
  PWM.Start
  SPI.Start(55,1)  
  I2C.Write(RTC,$0E,%0000_0111) '' Enable alarms and alarm output.
  I2C.Write(RTC,$07,%0000_0000) '' Set Alarm, Seconds
  I2C.Write(RTC,$08,%0001_0101) '' Set Alarm, Minutes
  I2C.Write(RTC,$09,%1000_0000) '' Set Alarm, Hours
  I2C.Write(RTC,$0A,%1000_0000) '' Set Alarm, Days

  I2C.Write(PRX,$83,20)         '' Set IR current
  I2C.Write(PRX,$89,3)          '' Set IR frequency
  I2C.Write(PRX,$8A,$81)        '' Set Proximity timing

  I2C.Write(FRQ,$0D,$08)
  I2C.Write_Page(FRQ,$02,@REGS,2) ''Setup registers
  I2C.Write_Page(FRQ,$01,@FQS,2)  ''Set output frequency

  dira[push]~
  dira[16]~~
  dira[17]~
  dira[DPIN]~~
  dira[CSCK]~~
  dira[CCLK]~~
  dira[CSRE]~~
  dira[DPOT]~~
  dira[SCLK]~~

  PWM.Duty(16,99,1000)
  
  waitcnt(10000 + cnt)
  OldMinutes := O
  RefreshNumber

PUB RefreshNumber|LEDON,LEDFLAG
    LEDON := 0
    LEDFLAG := 0
    Repeat      
      I2C.Write(PRX,$80,$18)        ''Take a light and proximity sample.
      RegState := I2C.Read(RTC,$0F)
      Seconds  := I2C.Read(RTC,$00)
      Minutes  := I2C.Read(RTC,$01)
      Hours    := I2C.Read(RTC,$02)
      LightH   := I2C.Read(PRX,$85)
      LightL   := I2C.Read(PRX,$86)
      Light    := (LightH<<8) + LightL
      ProxH    := I2C.Read(PRX,$87)
      ProxL    := I2C.Read(PRX,$88)
      Prox     := (ProxH<<8) + ProxL
      
      M := (Seconds & %0000_1111)
      N := (Seconds>>4) & %0000_1111
      O := (Minutes & %0000_1111)
      P := (Minutes>>4) & %0000_1111
      Q := (((Hours & %0001_0000)>>4)*10)+(Hours & %0000_1111)
      R := (Hours & %0010_0000)>>5
      
      Debug   ''Shows the debug data.

      if Prox > 2030 and Color == 0
        LEDON := 1
      else
        PWM.Duty(16,Bright,1000) 

      if Light > 40 and LEDON == 0
        Color := 1
        PWM.Duty(16,00,1000)
''        LEDON := 1
      else
        Color := 0

      if ina[17] == 0 and ina[PUSH] == 0
        ClearAlarm
      elseif ina[PUSH] == 0
        repeat until ina[PUSH] == 1
        ButtonPress

      if LEDON == 1
        LEDFLAG := LEDFLAG + 1
        if bright == 98
          repeat 98
             PWM.Duty(16,Bright,1000)
             Bright := Bright - 1
             waitcnt(clkfreq/13 + cnt)      
        else
          PWM.Duty(16,Bright,1000)
          
      if LEDFLAG == 20
         LEDFLAG := 0
         LEDON := 0
         repeat 49
             PWM.Duty(16,Bright,1000)
             Bright := Bright + 2
             waitcnt(clkfreq/15 + cnt)

      Update
        
      waitcnt(clkfreq/10 + cnt)

PUB Update
      outa[CSCK]~
      SPI.SHIFTOUT(DPOT,CCLK,5,8,%1111_1110)
      waitcnt(4000+cnt)  ''Added, needs to be checked.
      outa[CSCK]~~
      LEDS := byte[@Number][O]
      if Color == 1
        LEDS := LEDS & %0000_0000_1111_1111
      else
        LEDS := (LEDS<<8) & %1111_1111_0000_0000
      outa[CSRE]~~
      SPI.SHIFTOUT(DPIN,SCLK,5,16,LEDS)
      waitcnt(4000+cnt) ''Pause for CS line.
      outa[CSRE]~

PUB ButtonPress|Z
    Target := byte[@NumLK][O]
    Old := New
    Diff := Old - Target
    Repeat until ina[PUSH] == 0
      waitcnt(clkfreq/5 + cnt)
      !outa[16]
      If (256-(||Diff)) =< New
        if 0 > Diff
          Z := New - (256-(||Diff))
        Else
          Z := New + (256-(||Diff))
      Elseif (256-(||Diff)) > New
        Z := New - Diff
      case Z
        0..25:
          Minutes := 0
        26..51:
          Minutes := 1
        52..77:
          Minutes := 2
        78..103:
          Minutes := 3
        104..129:
          Minutes := 4
        130..155:
          Minutes := 5
        156..181:
          Minutes := 6
        182..207:
          Minutes := 7
        208..233:
          Minutes := 8
        234..255:
          Minutes := 9

      Comm.NewLine
      Comm.Str(string("Z = "))
      Comm.DEC(Z)
      Comm.NewLine
      Comm.Str(string("Diff = "))
      Comm.DEC(Diff)
      Comm.NewLine
      Comm.Str(string("Target = "))
      Comm.DeC(Target)
      Comm.NewLine
      Comm.Str(string("New = "))
      Comm.DEC(NEW)
    repeat until ina[PUSH] == 1
    I2C.Write(RTC,$01,Minutes)           
    outa[16]~

PUB ClearAlarm
    I2C.Write(RTC,$0F,%0000_1000) ''Clears the alarm register.

PUB Debug
      Comm.Clear
      Comm.DEC(Q)
      Comm.Str(string(":"))
      Comm.DEC(P)
      Comm.DEC(O)
      Comm.Str(string(":"))
      Comm.DEC(N)
      Comm.DEC(M)      
      Comm.NewLine
      Comm.DEC(NEW)
      Comm.NewLine
      Comm.BIN(RegState,8)
      Comm.NewLine
      Comm.DEC(Light)
      Comm.NewLine
      Comm.DEC(Prox)
      Comm.NewLine
      Comm.DEC(X)
      Comm.NewLine
      Comm.BIN(REDS,16)
      Comm.NewLine

DAT
    REGS   byte $18,$00
    FQS    byte $22,$40
    NumLK  byte 12,38,63,89,115,141,167,193,219,244
    Number byte %0011_1111,%0000_0110,%0101_1011,%0100_1111,%0110_0110,%0110_1101,%0111_1101,%0000_0111,%0111_1111,%0110_1111
    