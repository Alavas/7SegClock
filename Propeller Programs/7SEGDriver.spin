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
    Byte REDS
    Long stack[50]

OBJ
    SPI   : "SPI_Asm"

PUB Start(DATA,CLOCK,CSELECT,DATACLK,CLCLK,CLKSELECT,ENCODER,Second,Minute) : success
    DPIN    := DATA
    CLK     := CLOCK
    CS      := CSELECT
    CSRE    := CLKSELECT
    DPCK    := DATACLK
    SCLK    := CLCLK
    READ    := ENCODER
    Seconds := SECOND
    Minutes := MINUTE
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
      outa[CSRE]~~
      byte[READ] := SPI.SHIFTIN(DPCK,SCLK,1,8)
      waitcnt(4000+cnt)  ''Added, needs to be checked.
      outa[CSRE]~
      M := byte[Minutes]
      N := (M) & %0000_1111
      Repeat i from 0 to 49
        Repeat j from 0 to 7
          REDS := Select & byte[@Number][N]
          Select := Select >> 1
          outa[CS]~
          SPI.SHIFTOUT(DPIN,CLK,5,8,%1111_1111)
          SPI.SHIFTOUT(DPIN,CLK,5,8,REDS)
          SPI.SHIFTOUT(DPIN,CLK,5,8,%1111_1111)
          waitcnt(4000+cnt) ''Pause for CS line.
          outa[CS]~~
          ''waitcnt(clkfreq/10 + cnt)
        Select := %1000_0000

DAT

    Number byte %0011_1111,%0000_0111,%0101_1011,%0100_1111,%0110_0110,%0110_1101,%0111_1101,%0000_0111,%0111_1111,%0110_1111

    {{
┌──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                   TERMS OF USE: MIT License                                                  │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation    │
│files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,    │
│modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software│
│is furnished to do so, subject to the following conditions:                                                                   │
│                                                                                                                              │
│The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.│
│                                                                                                                              │
│THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE          │
│WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR         │
│COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,   │
│ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                         │
└──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
}}
