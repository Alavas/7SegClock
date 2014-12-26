{{ 7 Segment Display Driver }}

VAR
    Byte cog
    Long Seconds
    Long Minutes
    Byte DPIN
    Byte CLK
    Byte CS
    Byte CSRE
    Byte DPCK
    Byte SCLK
    Long READ
    Long REDS
    Long Color
    Long X
    Long stack[60]

OBJ
    SPI   : "SPI_Asm"

PUB Start(DATA,CLOCK,CSELECT,DATACLK,CLCLK,CLKSELECT,ENCODER,Second,Minute,RG) : success
    DPIN    := DATA
    CLK     := CLOCK
    CS      := CSELECT
    CSRE    := CLKSELECT
    DPCK    := DATACLK
    SCLK    := CLCLK
    READ    := ENCODER
    Seconds := SECOND
    Minutes := MINUTE
    Color   := RG
    success := cog := cognew(DisplayTime,@stack) +1

PUB DisplayTime :success|I,J,N,M,Select
    dira[DPIN]~~
    dira[CS]~~
    dira[CLK]~~
    dira[CSRE]~~
    dira[DPCK]~~
    dira[SCLK]~~
    SPI.Start(55,1)
    Repeat
      outa[CS]~
      SPI.SHIFTOUT(DPIN,CLK,5,8,$FF) 
      waitcnt(4000+cnt)  ''Added, needs to be checked.
      outa[CS]~~  
      M := byte[Minutes]
      N := (M) & %0000_1111
      REDS := byte[@Number][N]
      X := byte[Color]
      if X == 1
        REDS := REDS & %0000_0000_1111_1111
      else
        REDS := (REDS<<8) & %1111_1111_0000_0000
      outa[CSRE]~~
      SPI.SHIFTOUT(DPCK,SCLK,5,16,REDS)    
      waitcnt(4000+cnt) ''Pause for CS line.
      outa[CSRE]~
      waitcnt(clkfreq/2 + cnt)


DAT

    Number byte %0011_1111,%0000_0110,%0101_1011,%0100_1111,%0110_0110,%0110_1101,%0111_1101,%0000_0111,%0111_1111,%0110_1111