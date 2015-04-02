// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.3.0.109
// Netlist written on Thu Apr  2 04:22:56 2015
//
// Verilog Description of module AutoShift
//

module AutoShift (Digit1, Digit2, Digit3, Digit4, pwm, latch, clk, 
            data, heartbeat) /* synthesis syn_module_defined=1 */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(9[8:17])
    output [20:0]Digit1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    output [20:0]Digit2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    output [20:0]Digit3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    output [20:0]Digit4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    input pwm;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(17[7:10])
    input latch;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(18[8:13])
    input clk;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(19[7:10])
    input data;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(20[7:11])
    output heartbeat;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(15[9:18])
    
    wire pwm_c /* synthesis SET_AS_NETWORK=pwm_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(17[7:10])
    wire latch_c /* synthesis SET_AS_NETWORK=latch_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(18[8:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(19[7:10])
    wire data_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(20[7:11])
    wire heartbeat_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(15[9:18])
    wire [20:0]Digit1_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    wire [20:0]Digit2_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    wire [20:0]Digit3_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    wire [20:0]Digit4_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    wire [6:0]RedD1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(29[12:17])
    wire [6:0]RedD2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[12:17])
    wire [6:0]RedD3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(31[12:17])
    wire [6:0]RedD4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(32[12:17])
    wire [6:0]GrnD1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(33[12:17])
    wire [6:0]GrnD2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(34[12:17])
    wire [6:0]GrnD3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(35[12:17])
    wire [6:0]GrnD4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(36[12:17])
    wire [6:0]ledA1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(37[12:17])
    wire [6:0]ledA2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(38[12:17])
    wire [6:0]ledA3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(39[12:17])
    wire [6:0]ledA4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(40[12:17])
    wire [20:0]LEDS1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(43[13:18])
    wire [20:0]LEDS2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(44[13:18])
    wire [20:0]LEDS3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(45[13:18])
    wire [20:0]LEDS4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(46[13:18])
    wire [11:0]cnt;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(47[14:17])
    wire [11:0]bright;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(48[13:19])
    wire [95:0]tmp;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(49[14:17])
    wire [6:0]Seg;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(50[13:16])
    wire [6:0]Led;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(51[12:15])
    wire osc_clk_c_c /* synthesis SET_AS_NETWORK=osc_clk_c_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(57[22:33])
    wire n8;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8338;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    wire n7;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(95[6:14])
    wire n6;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n10;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n12;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n16;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n18;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n20;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire [11:0]n54;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    wire n8_adj_1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(95[6:14])
    wire n8337;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    wire n8415;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8336;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    wire n8335;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    wire n8334;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    wire n8425;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8333;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    wire n8424;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8463;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8445;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8443;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8408;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8492;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8486;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    wire n8_adj_2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(98[7:15])
    
    wire GND_net, VCC_net, n183, n985;
    wire [6:0]n292;
    
    wire n11, n9, n14, n22, n986, n8461, n8455, n8491, n8490, 
        n8489, n8488, n8487;
    
    VHI i2 (.Z(VCC_net));
    FD1S3IX Digit3_i0 (.D(LEDS3[0]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i0.GSR = "ENABLED";
    FD1S3IX Digit4_i0 (.D(LEDS4[0]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i0.GSR = "ENABLED";
    FD1S3AY Led_i0 (.D(n292[0]), .CK(osc_clk_c_c), .Q(Led[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Led_i0.GSR = "ENABLED";
    FD1S3AX heartbeat_56 (.D(n183), .CK(osc_clk_c_c), .Q(heartbeat_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(75[8] 83[4])
    defparam heartbeat_56.GSR = "ENABLED";
    OB Digit1_pad_20 (.I(Digit1_c[20]), .O(Digit1[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    FD1S3AX tmp_i1 (.D(data_c), .CK(clk_c), .Q(tmp[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i1.GSR = "ENABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk_c_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "3.50";
    FD1S3AX RedD4_i0 (.D(tmp[88]), .CK(latch_c), .Q(RedD4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD4_i0.GSR = "ENABLED";
    FD1S3AX GrnD4_i0 (.D(tmp[80]), .CK(latch_c), .Q(GrnD4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD4_i0.GSR = "ENABLED";
    FD1S3AX ledA4_i0 (.D(tmp[72]), .CK(latch_c), .Q(ledA4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA4_i0.GSR = "ENABLED";
    FD1S3AX RedD3_i0 (.D(tmp[64]), .CK(latch_c), .Q(RedD3[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD3_i0.GSR = "ENABLED";
    FD1S3AX GrnD3_i0 (.D(tmp[56]), .CK(latch_c), .Q(GrnD3[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD3_i0.GSR = "ENABLED";
    FD1S3AX ledA3_i0 (.D(tmp[48]), .CK(latch_c), .Q(ledA3[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA3_i0.GSR = "ENABLED";
    FD1S3AX RedD2_i0 (.D(tmp[40]), .CK(latch_c), .Q(RedD2[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD2_i0.GSR = "ENABLED";
    FD1S3AX GrnD2_i0 (.D(tmp[32]), .CK(latch_c), .Q(GrnD2[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD2_i0.GSR = "ENABLED";
    FD1S3AX ledA2_i0 (.D(tmp[24]), .CK(latch_c), .Q(ledA2[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA2_i0.GSR = "ENABLED";
    FD1S3AX RedD1_i0 (.D(tmp[16]), .CK(latch_c), .Q(RedD1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD1_i0.GSR = "ENABLED";
    FD1S3AX GrnD1_i0 (.D(tmp[8]), .CK(latch_c), .Q(GrnD1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD1_i0.GSR = "ENABLED";
    FD1S3AX ledA1_i0 (.D(tmp[0]), .CK(latch_c), .Q(ledA1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA1_i0.GSR = "ENABLED";
    FD1S3AX bright_i0 (.D(tmp[0]), .CK(pwm_c), .Q(bright[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i0.GSR = "ENABLED";
    FD1S3IX Digit1_i0 (.D(LEDS1[0]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i0.GSR = "ENABLED";
    FD1P3AY Seg_i0_i0 (.D(n11), .SP(n292[0]), .CK(osc_clk_c_c), .Q(Seg[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Seg_i0_i0.GSR = "ENABLED";
    FD1S3AX cnt_94__i0 (.D(n54[0]), .CK(osc_clk_c_c), .Q(cnt[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i0.GSR = "ENABLED";
    LUT4 and_24_i2_2_lut (.A(RedD4[1]), .B(Seg[1]), .Z(LEDS4[15])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[12:25])
    defparam and_24_i2_2_lut.init = 16'h8888;
    LUT4 and_23_i3_2_lut (.A(ledA3[2]), .B(Led[2]), .Z(LEDS3[2])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[40:53])
    defparam and_23_i3_2_lut.init = 16'h8888;
    LUT4 and_24_i3_2_lut (.A(RedD4[2]), .B(Seg[2]), .Z(LEDS4[16])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[12:25])
    defparam and_24_i3_2_lut.init = 16'h8888;
    LUT4 and_26_i1_2_lut (.A(ledA4[0]), .B(Led[0]), .Z(LEDS4[0])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[40:53])
    defparam and_26_i1_2_lut.init = 16'h8888;
    LUT4 i7576_2_lut_3_lut (.A(cnt[11]), .B(bright[11]), .C(n8461), .Z(n8445)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam i7576_2_lut_3_lut.init = 16'hf6f6;
    LUT4 and_24_i4_2_lut (.A(RedD4[3]), .B(Seg[3]), .Z(LEDS4[17])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[12:25])
    defparam and_24_i4_2_lut.init = 16'h8888;
    LUT4 and_24_i5_2_lut (.A(RedD4[4]), .B(Seg[4]), .Z(LEDS4[18])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[12:25])
    defparam and_24_i5_2_lut.init = 16'h8888;
    LUT4 and_23_i4_2_lut (.A(ledA3[3]), .B(Led[3]), .Z(LEDS3[3])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[40:53])
    defparam and_23_i4_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i17_2_lut_rep_9 (.A(cnt[8]), .B(bright[8]), .Z(n8487)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i17_2_lut_rep_9.init = 16'h6666;
    LUT4 and_24_i6_2_lut (.A(RedD4[5]), .B(Seg[5]), .Z(LEDS4[19])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[12:25])
    defparam and_24_i6_2_lut.init = 16'h8888;
    LUT4 and_24_i7_2_lut (.A(RedD4[6]), .B(Seg[6]), .Z(LEDS4[20])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[12:25])
    defparam and_24_i7_2_lut.init = 16'h8888;
    LUT4 and_17_i2_2_lut (.A(ledA1[1]), .B(Led[1]), .Z(LEDS1[1])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[40:53])
    defparam and_17_i2_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i8_3_lut_3_lut (.A(cnt[8]), .B(bright[8]), .C(bright[4]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_12_i21_2_lut_rep_10 (.A(cnt[10]), .B(bright[10]), .Z(n8488)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i21_2_lut_rep_10.init = 16'h6666;
    LUT4 and_17_i3_2_lut (.A(ledA1[2]), .B(Led[2]), .Z(LEDS1[2])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[40:53])
    defparam and_17_i3_2_lut.init = 16'h8888;
    LUT4 and_23_i5_2_lut (.A(ledA3[4]), .B(Led[4]), .Z(LEDS3[4])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[40:53])
    defparam and_23_i5_2_lut.init = 16'h8888;
    LUT4 and_17_i4_2_lut (.A(ledA1[3]), .B(Led[3]), .Z(LEDS1[3])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[40:53])
    defparam and_17_i4_2_lut.init = 16'h8888;
    LUT4 and_17_i5_2_lut (.A(ledA1[4]), .B(Led[4]), .Z(LEDS1[4])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[40:53])
    defparam and_17_i5_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i19_2_lut_rep_11 (.A(cnt[9]), .B(bright[9]), .Z(n8489)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i19_2_lut_rep_11.init = 16'h6666;
    LUT4 and_17_i6_2_lut (.A(ledA1[5]), .B(Led[5]), .Z(LEDS1[5])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[40:53])
    defparam and_17_i6_2_lut.init = 16'h8888;
    LUT4 and_23_i6_2_lut (.A(ledA3[5]), .B(Led[5]), .Z(LEDS3[5])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[40:53])
    defparam and_23_i6_2_lut.init = 16'h8888;
    LUT4 and_17_i7_2_lut (.A(ledA1[6]), .B(Led[6]), .Z(LEDS1[6])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[40:53])
    defparam and_17_i7_2_lut.init = 16'h8888;
    LUT4 and_16_i1_2_lut (.A(GrnD1[0]), .B(Seg[0]), .Z(LEDS1[7])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[26:39])
    defparam and_16_i1_2_lut.init = 16'h8888;
    LUT4 i7567_4_lut (.A(Led[3]), .B(n7), .C(Led[4]), .D(n8_adj_1), 
         .Z(n292[0])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7567_4_lut.init = 16'h0001;
    LUT4 and_23_i7_2_lut (.A(ledA3[6]), .B(Led[6]), .Z(LEDS3[6])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[40:53])
    defparam and_23_i7_2_lut.init = 16'h8888;
    LUT4 and_16_i2_2_lut (.A(GrnD1[1]), .B(Seg[1]), .Z(LEDS1[8])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[26:39])
    defparam and_16_i2_2_lut.init = 16'h8888;
    LUT4 i7534_3_lut_3_lut_4_lut (.A(cnt[6]), .B(bright[6]), .C(n8415), 
         .D(n8490), .Z(n8424)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+((D)+!C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam i7534_3_lut_3_lut_4_lut.init = 16'hff6f;
    LUT4 and_16_i3_2_lut (.A(GrnD1[2]), .B(Seg[2]), .Z(LEDS1[9])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[26:39])
    defparam and_16_i3_2_lut.init = 16'h8888;
    LUT4 i101_1_lut (.A(heartbeat_c), .Z(n985)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(75[8] 83[4])
    defparam i101_1_lut.init = 16'h5555;
    LUT4 and_16_i4_2_lut (.A(GrnD1[3]), .B(Seg[3]), .Z(LEDS1[10])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[26:39])
    defparam and_16_i4_2_lut.init = 16'h8888;
    LUT4 and_16_i5_2_lut (.A(GrnD1[4]), .B(Seg[4]), .Z(LEDS1[11])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[26:39])
    defparam and_16_i5_2_lut.init = 16'h8888;
    LUT4 and_22_i1_2_lut (.A(GrnD3[0]), .B(Seg[0]), .Z(LEDS3[7])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[26:39])
    defparam and_22_i1_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i15_2_lut_rep_12 (.A(cnt[7]), .B(bright[7]), .Z(n8490)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i15_2_lut_rep_12.init = 16'h6666;
    LUT4 and_16_i6_2_lut (.A(GrnD1[5]), .B(Seg[5]), .Z(LEDS1[12])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[26:39])
    defparam and_16_i6_2_lut.init = 16'h8888;
    LUT4 and_16_i7_2_lut (.A(GrnD1[6]), .B(Seg[6]), .Z(LEDS1[13])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[26:39])
    defparam and_16_i7_2_lut.init = 16'h8888;
    LUT4 and_15_i1_2_lut (.A(RedD1[0]), .B(Seg[0]), .Z(LEDS1[14])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[12:25])
    defparam and_15_i1_2_lut.init = 16'h8888;
    LUT4 and_15_i2_2_lut (.A(RedD1[1]), .B(Seg[1]), .Z(LEDS1[15])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[12:25])
    defparam and_15_i2_2_lut.init = 16'h8888;
    LUT4 and_22_i2_2_lut (.A(GrnD3[1]), .B(Seg[1]), .Z(LEDS3[8])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[26:39])
    defparam and_22_i2_2_lut.init = 16'h8888;
    LUT4 and_22_i3_2_lut (.A(GrnD3[2]), .B(Seg[2]), .Z(LEDS3[9])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[26:39])
    defparam and_22_i3_2_lut.init = 16'h8888;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 and_15_i3_2_lut (.A(RedD1[2]), .B(Seg[2]), .Z(LEDS1[16])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[12:25])
    defparam and_15_i3_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i9_2_lut (.A(cnt[4]), .B(bright[4]), .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i9_2_lut.init = 16'h6666;
    LUT4 and_15_i4_2_lut (.A(RedD1[3]), .B(Seg[3]), .Z(LEDS1[17])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[12:25])
    defparam and_15_i4_2_lut.init = 16'h8888;
    LUT4 and_20_i6_2_lut (.A(ledA2[5]), .B(Led[5]), .Z(LEDS2[5])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[40:53])
    defparam and_20_i6_2_lut.init = 16'h8888;
    FD1S3IX Digit2_i1 (.D(LEDS2[1]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i1.GSR = "ENABLED";
    LUT4 and_22_i4_2_lut (.A(GrnD3[3]), .B(Seg[3]), .Z(LEDS3[10])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[26:39])
    defparam and_22_i4_2_lut.init = 16'h8888;
    LUT4 and_15_i5_2_lut (.A(RedD1[4]), .B(Seg[4]), .Z(LEDS1[18])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[12:25])
    defparam and_15_i5_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i12_3_lut_3_lut (.A(cnt[7]), .B(bright[7]), .C(n10), 
         .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 and_22_i5_2_lut (.A(GrnD3[4]), .B(Seg[4]), .Z(LEDS3[11])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[26:39])
    defparam and_22_i5_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(Led[2]), .B(Led[0]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(95[6:14])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 and_15_i6_2_lut (.A(RedD1[5]), .B(Seg[5]), .Z(LEDS1[19])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[12:25])
    defparam and_15_i6_2_lut.init = 16'h8888;
    LUT4 and_20_i7_2_lut (.A(ledA2[6]), .B(Led[6]), .Z(LEDS2[6])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[40:53])
    defparam and_20_i7_2_lut.init = 16'h8888;
    LUT4 i2_2_lut (.A(Led[5]), .B(Led[1]), .Z(n8_adj_1)) /* synthesis lut_function=(A+(B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(95[6:14])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 and_19_i1_2_lut (.A(GrnD2[0]), .B(Seg[0]), .Z(LEDS2[7])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[26:39])
    defparam and_19_i1_2_lut.init = 16'h8888;
    LUT4 and_15_i7_2_lut (.A(RedD1[6]), .B(Seg[6]), .Z(LEDS1[20])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[12:25])
    defparam and_15_i7_2_lut.init = 16'h8888;
    OB Digit1_pad_19 (.I(Digit1_c[19]), .O(Digit1[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_18 (.I(Digit1_c[18]), .O(Digit1[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_17 (.I(Digit1_c[17]), .O(Digit1[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_16 (.I(Digit1_c[16]), .O(Digit1[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_15 (.I(Digit1_c[15]), .O(Digit1[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_14 (.I(Digit1_c[14]), .O(Digit1[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_13 (.I(Digit1_c[13]), .O(Digit1[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_12 (.I(Digit1_c[12]), .O(Digit1[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_11 (.I(Digit1_c[11]), .O(Digit1[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_10 (.I(Digit1_c[10]), .O(Digit1[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_9 (.I(Digit1_c[9]), .O(Digit1[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_8 (.I(Digit1_c[8]), .O(Digit1[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_7 (.I(Digit1_c[7]), .O(Digit1[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_6 (.I(Digit1_c[6]), .O(Digit1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_5 (.I(Digit1_c[5]), .O(Digit1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_4 (.I(Digit1_c[4]), .O(Digit1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_3 (.I(Digit1_c[3]), .O(Digit1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_2 (.I(Digit1_c[2]), .O(Digit1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_1 (.I(Digit1_c[1]), .O(Digit1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit1_pad_0 (.I(Digit1_c[0]), .O(Digit1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[9:15])
    OB Digit2_pad_20 (.I(Digit2_c[20]), .O(Digit2[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_19 (.I(Digit2_c[19]), .O(Digit2[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_18 (.I(Digit2_c[18]), .O(Digit2[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_17 (.I(Digit2_c[17]), .O(Digit2[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_16 (.I(Digit2_c[16]), .O(Digit2[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_15 (.I(Digit2_c[15]), .O(Digit2[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_14 (.I(Digit2_c[14]), .O(Digit2[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_13 (.I(Digit2_c[13]), .O(Digit2[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_12 (.I(Digit2_c[12]), .O(Digit2[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_11 (.I(Digit2_c[11]), .O(Digit2[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_10 (.I(Digit2_c[10]), .O(Digit2[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_9 (.I(Digit2_c[9]), .O(Digit2[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_8 (.I(Digit2_c[8]), .O(Digit2[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_7 (.I(Digit2_c[7]), .O(Digit2[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_6 (.I(Digit2_c[6]), .O(Digit2[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_5 (.I(Digit2_c[5]), .O(Digit2[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_4 (.I(Digit2_c[4]), .O(Digit2[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_3 (.I(Digit2_c[3]), .O(Digit2[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_2 (.I(Digit2_c[2]), .O(Digit2[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_1 (.I(Digit2_c[1]), .O(Digit2[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit2_pad_0 (.I(Digit2_c[0]), .O(Digit2[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[8:14])
    OB Digit3_pad_20 (.I(Digit3_c[20]), .O(Digit3[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_19 (.I(Digit3_c[19]), .O(Digit3[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_18 (.I(Digit3_c[18]), .O(Digit3[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_17 (.I(Digit3_c[17]), .O(Digit3[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_16 (.I(Digit3_c[16]), .O(Digit3[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_15 (.I(Digit3_c[15]), .O(Digit3[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_14 (.I(Digit3_c[14]), .O(Digit3[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_13 (.I(Digit3_c[13]), .O(Digit3[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_12 (.I(Digit3_c[12]), .O(Digit3[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_11 (.I(Digit3_c[11]), .O(Digit3[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_10 (.I(Digit3_c[10]), .O(Digit3[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_9 (.I(Digit3_c[9]), .O(Digit3[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_8 (.I(Digit3_c[8]), .O(Digit3[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_7 (.I(Digit3_c[7]), .O(Digit3[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_6 (.I(Digit3_c[6]), .O(Digit3[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_5 (.I(Digit3_c[5]), .O(Digit3[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_4 (.I(Digit3_c[4]), .O(Digit3[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_3 (.I(Digit3_c[3]), .O(Digit3[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_2 (.I(Digit3_c[2]), .O(Digit3[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_1 (.I(Digit3_c[1]), .O(Digit3[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit3_pad_0 (.I(Digit3_c[0]), .O(Digit3[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[9:15])
    OB Digit4_pad_20 (.I(Digit4_c[20]), .O(Digit4[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_19 (.I(Digit4_c[19]), .O(Digit4[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_18 (.I(Digit4_c[18]), .O(Digit4[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_17 (.I(Digit4_c[17]), .O(Digit4[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_16 (.I(Digit4_c[16]), .O(Digit4[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_15 (.I(Digit4_c[15]), .O(Digit4[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_14 (.I(Digit4_c[14]), .O(Digit4[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_13 (.I(Digit4_c[13]), .O(Digit4[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_12 (.I(Digit4_c[12]), .O(Digit4[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_11 (.I(Digit4_c[11]), .O(Digit4[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_10 (.I(Digit4_c[10]), .O(Digit4[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_9 (.I(Digit4_c[9]), .O(Digit4[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_8 (.I(Digit4_c[8]), .O(Digit4[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_7 (.I(Digit4_c[7]), .O(Digit4[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_6 (.I(Digit4_c[6]), .O(Digit4[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_5 (.I(Digit4_c[5]), .O(Digit4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_4 (.I(Digit4_c[4]), .O(Digit4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_3 (.I(Digit4_c[3]), .O(Digit4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_2 (.I(Digit4_c[2]), .O(Digit4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_1 (.I(Digit4_c[1]), .O(Digit4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB Digit4_pad_0 (.I(Digit4_c[0]), .O(Digit4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[8:14])
    OB heartbeat_pad (.I(heartbeat_c), .O(heartbeat));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(15[9:18])
    IB pwm_pad (.I(pwm), .O(pwm_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(17[7:10])
    IB latch_pad (.I(latch), .O(latch_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(18[8:13])
    IB clk_pad (.I(clk), .O(clk_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(19[7:10])
    IB data_pad (.I(data), .O(data_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(20[7:11])
    CCU2D cnt_94_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8337), 
          .COUT(n8338), .S0(n54[9]), .S1(n54[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_94_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_94_add_4_11.INJECT1_0 = "NO";
    defparam cnt_94_add_4_11.INJECT1_1 = "NO";
    FD1S3IX Digit2_i2 (.D(LEDS2[2]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i2.GSR = "ENABLED";
    FD1S3IX Digit2_i3 (.D(LEDS2[3]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i3.GSR = "ENABLED";
    FD1S3IX Digit2_i4 (.D(LEDS2[4]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i4.GSR = "ENABLED";
    FD1S3IX Digit2_i5 (.D(LEDS2[5]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i5.GSR = "ENABLED";
    FD1S3IX Digit2_i6 (.D(LEDS2[6]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i6.GSR = "ENABLED";
    FD1S3IX Digit2_i7 (.D(LEDS2[7]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i7.GSR = "ENABLED";
    FD1S3IX Digit2_i8 (.D(LEDS2[8]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i8.GSR = "ENABLED";
    FD1S3IX Digit2_i9 (.D(LEDS2[9]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i9.GSR = "ENABLED";
    FD1S3IX Digit2_i10 (.D(LEDS2[10]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i10.GSR = "ENABLED";
    FD1S3IX Digit2_i11 (.D(LEDS2[11]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i11.GSR = "ENABLED";
    FD1S3IX Digit2_i12 (.D(LEDS2[12]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i12.GSR = "ENABLED";
    FD1S3IX Digit2_i13 (.D(LEDS2[13]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i13.GSR = "ENABLED";
    FD1S3IX Digit2_i14 (.D(LEDS2[14]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i14.GSR = "ENABLED";
    FD1S3IX Digit2_i15 (.D(LEDS2[15]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i15.GSR = "ENABLED";
    FD1S3IX Digit2_i16 (.D(LEDS2[16]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i16.GSR = "ENABLED";
    FD1S3IX Digit2_i17 (.D(LEDS2[17]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i17.GSR = "ENABLED";
    FD1S3IX Digit2_i18 (.D(LEDS2[18]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i18.GSR = "ENABLED";
    FD1S3IX Digit2_i19 (.D(LEDS2[19]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i19.GSR = "ENABLED";
    FD1S3IX Digit2_i20 (.D(LEDS2[20]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i20.GSR = "ENABLED";
    FD1S3IX Digit3_i1 (.D(LEDS3[1]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i1.GSR = "ENABLED";
    FD1S3IX Digit3_i2 (.D(LEDS3[2]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i2.GSR = "ENABLED";
    FD1S3IX Digit3_i3 (.D(LEDS3[3]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i3.GSR = "ENABLED";
    FD1S3IX Digit3_i4 (.D(LEDS3[4]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i4.GSR = "ENABLED";
    FD1S3IX Digit3_i5 (.D(LEDS3[5]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i5.GSR = "ENABLED";
    FD1S3IX Digit3_i6 (.D(LEDS3[6]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i6.GSR = "ENABLED";
    FD1S3IX Digit3_i7 (.D(LEDS3[7]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i7.GSR = "ENABLED";
    FD1S3IX Digit3_i8 (.D(LEDS3[8]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i8.GSR = "ENABLED";
    FD1S3IX Digit3_i9 (.D(LEDS3[9]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i9.GSR = "ENABLED";
    FD1S3IX Digit3_i10 (.D(LEDS3[10]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i10.GSR = "ENABLED";
    FD1S3IX Digit3_i11 (.D(LEDS3[11]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i11.GSR = "ENABLED";
    FD1S3IX Digit3_i12 (.D(LEDS3[12]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i12.GSR = "ENABLED";
    FD1S3IX Digit3_i13 (.D(LEDS3[13]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i13.GSR = "ENABLED";
    FD1S3IX Digit3_i14 (.D(LEDS3[14]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i14.GSR = "ENABLED";
    FD1S3IX Digit3_i15 (.D(LEDS3[15]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i15.GSR = "ENABLED";
    FD1S3IX Digit3_i16 (.D(LEDS3[16]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i16.GSR = "ENABLED";
    FD1S3IX Digit3_i17 (.D(LEDS3[17]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i17.GSR = "ENABLED";
    FD1S3IX Digit3_i18 (.D(LEDS3[18]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i18.GSR = "ENABLED";
    FD1S3IX Digit3_i19 (.D(LEDS3[19]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i19.GSR = "ENABLED";
    FD1S3IX Digit3_i20 (.D(LEDS3[20]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit3_c[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit3_i20.GSR = "ENABLED";
    FD1S3IX Digit4_i1 (.D(LEDS4[1]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i1.GSR = "ENABLED";
    FD1S3IX Digit4_i2 (.D(LEDS4[2]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i2.GSR = "ENABLED";
    FD1S3IX Digit4_i3 (.D(LEDS4[3]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i3.GSR = "ENABLED";
    FD1S3IX Digit4_i4 (.D(LEDS4[4]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i4.GSR = "ENABLED";
    FD1S3IX Digit4_i5 (.D(LEDS4[5]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i5.GSR = "ENABLED";
    FD1S3IX Digit4_i6 (.D(LEDS4[6]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i6.GSR = "ENABLED";
    FD1S3IX Digit4_i7 (.D(LEDS4[7]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i7.GSR = "ENABLED";
    FD1S3IX Digit4_i8 (.D(LEDS4[8]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i8.GSR = "ENABLED";
    FD1S3IX Digit4_i9 (.D(LEDS4[9]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i9.GSR = "ENABLED";
    FD1S3IX Digit4_i10 (.D(LEDS4[10]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i10.GSR = "ENABLED";
    FD1S3IX Digit4_i11 (.D(LEDS4[11]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i11.GSR = "ENABLED";
    FD1S3IX Digit4_i12 (.D(LEDS4[12]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i12.GSR = "ENABLED";
    FD1S3IX Digit4_i13 (.D(LEDS4[13]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i13.GSR = "ENABLED";
    FD1S3IX Digit4_i14 (.D(LEDS4[14]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i14.GSR = "ENABLED";
    FD1S3IX Digit4_i15 (.D(LEDS4[15]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i15.GSR = "ENABLED";
    FD1S3IX Digit4_i16 (.D(LEDS4[16]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i16.GSR = "ENABLED";
    FD1S3IX Digit4_i17 (.D(LEDS4[17]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i17.GSR = "ENABLED";
    FD1S3IX Digit4_i18 (.D(LEDS4[18]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i18.GSR = "ENABLED";
    FD1S3IX Digit4_i19 (.D(LEDS4[19]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i19.GSR = "ENABLED";
    FD1S3IX Digit4_i20 (.D(LEDS4[20]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit4_c[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit4_i20.GSR = "ENABLED";
    FD1S3IX Led_i1 (.D(Led[0]), .CK(osc_clk_c_c), .CD(n292[0]), .Q(Led[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Led_i1.GSR = "ENABLED";
    FD1S3IX Led_i2 (.D(Led[1]), .CK(osc_clk_c_c), .CD(n292[0]), .Q(Led[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Led_i2.GSR = "ENABLED";
    FD1S3IX Led_i3 (.D(Led[2]), .CK(osc_clk_c_c), .CD(n292[0]), .Q(Led[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Led_i3.GSR = "ENABLED";
    FD1S3IX Led_i4 (.D(Led[3]), .CK(osc_clk_c_c), .CD(n292[0]), .Q(Led[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Led_i4.GSR = "ENABLED";
    FD1S3IX Led_i5 (.D(Led[4]), .CK(osc_clk_c_c), .CD(n292[0]), .Q(Led[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Led_i5.GSR = "ENABLED";
    FD1S3IX Led_i6 (.D(Led[5]), .CK(osc_clk_c_c), .CD(n292[0]), .Q(Led[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Led_i6.GSR = "ENABLED";
    FD1S3AX tmp_i2 (.D(tmp[0]), .CK(clk_c), .Q(tmp[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i2.GSR = "ENABLED";
    LUT4 and_20_i1_2_lut (.A(ledA2[0]), .B(Led[0]), .Z(LEDS2[0])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[40:53])
    defparam and_20_i1_2_lut.init = 16'h8888;
    FD1S3AX tmp_i3 (.D(tmp[1]), .CK(clk_c), .Q(tmp[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i3.GSR = "ENABLED";
    FD1S3AX tmp_i4 (.D(tmp[2]), .CK(clk_c), .Q(tmp[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i4.GSR = "ENABLED";
    FD1S3AX tmp_i5 (.D(tmp[3]), .CK(clk_c), .Q(tmp[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i5.GSR = "ENABLED";
    FD1S3AX tmp_i6 (.D(tmp[4]), .CK(clk_c), .Q(tmp[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i6.GSR = "ENABLED";
    FD1S3AX tmp_i7 (.D(tmp[5]), .CK(clk_c), .Q(tmp[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i7.GSR = "ENABLED";
    FD1S3AX tmp_i8 (.D(tmp[6]), .CK(clk_c), .Q(tmp[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i8.GSR = "ENABLED";
    FD1S3AX tmp_i9 (.D(tmp[7]), .CK(clk_c), .Q(tmp[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i9.GSR = "ENABLED";
    FD1S3AX tmp_i10 (.D(tmp[8]), .CK(clk_c), .Q(tmp[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i10.GSR = "ENABLED";
    FD1S3AX tmp_i11 (.D(tmp[9]), .CK(clk_c), .Q(tmp[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i11.GSR = "ENABLED";
    FD1S3AX tmp_i12 (.D(tmp[10]), .CK(clk_c), .Q(tmp[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i12.GSR = "ENABLED";
    FD1S3AX tmp_i13 (.D(tmp[11]), .CK(clk_c), .Q(tmp[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i13.GSR = "ENABLED";
    FD1S3AX tmp_i14 (.D(tmp[12]), .CK(clk_c), .Q(tmp[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i14.GSR = "ENABLED";
    FD1S3AX tmp_i15 (.D(tmp[13]), .CK(clk_c), .Q(tmp[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i15.GSR = "ENABLED";
    FD1S3AX tmp_i16 (.D(tmp[14]), .CK(clk_c), .Q(tmp[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i16.GSR = "ENABLED";
    FD1S3AX tmp_i17 (.D(tmp[15]), .CK(clk_c), .Q(tmp[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i17.GSR = "ENABLED";
    FD1S3AX tmp_i18 (.D(tmp[16]), .CK(clk_c), .Q(tmp[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i18.GSR = "ENABLED";
    FD1S3AX tmp_i19 (.D(tmp[17]), .CK(clk_c), .Q(tmp[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i19.GSR = "ENABLED";
    FD1S3AX tmp_i20 (.D(tmp[18]), .CK(clk_c), .Q(tmp[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i20.GSR = "ENABLED";
    FD1S3AX tmp_i21 (.D(tmp[19]), .CK(clk_c), .Q(tmp[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i21.GSR = "ENABLED";
    FD1S3AX tmp_i22 (.D(tmp[20]), .CK(clk_c), .Q(tmp[21]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i22.GSR = "ENABLED";
    FD1S3AX tmp_i23 (.D(tmp[21]), .CK(clk_c), .Q(tmp[22]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i23.GSR = "ENABLED";
    FD1S3AX tmp_i24 (.D(tmp[22]), .CK(clk_c), .Q(tmp[23]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i24.GSR = "ENABLED";
    FD1S3AX tmp_i25 (.D(tmp[23]), .CK(clk_c), .Q(tmp[24]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i25.GSR = "ENABLED";
    FD1S3AX tmp_i26 (.D(tmp[24]), .CK(clk_c), .Q(tmp[25]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i26.GSR = "ENABLED";
    FD1S3AX tmp_i27 (.D(tmp[25]), .CK(clk_c), .Q(tmp[26]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i27.GSR = "ENABLED";
    FD1S3AX tmp_i28 (.D(tmp[26]), .CK(clk_c), .Q(tmp[27]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i28.GSR = "ENABLED";
    FD1S3AX tmp_i29 (.D(tmp[27]), .CK(clk_c), .Q(tmp[28]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i29.GSR = "ENABLED";
    FD1S3AX tmp_i30 (.D(tmp[28]), .CK(clk_c), .Q(tmp[29]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i30.GSR = "ENABLED";
    FD1S3AX tmp_i31 (.D(tmp[29]), .CK(clk_c), .Q(tmp[30]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i31.GSR = "ENABLED";
    FD1S3AX tmp_i32 (.D(tmp[30]), .CK(clk_c), .Q(tmp[31]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i32.GSR = "ENABLED";
    FD1S3AX tmp_i33 (.D(tmp[31]), .CK(clk_c), .Q(tmp[32]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i33.GSR = "ENABLED";
    FD1S3AX tmp_i34 (.D(tmp[32]), .CK(clk_c), .Q(tmp[33]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i34.GSR = "ENABLED";
    FD1S3AX tmp_i35 (.D(tmp[33]), .CK(clk_c), .Q(tmp[34]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i35.GSR = "ENABLED";
    FD1S3AX tmp_i36 (.D(tmp[34]), .CK(clk_c), .Q(tmp[35]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i36.GSR = "ENABLED";
    FD1S3AX tmp_i37 (.D(tmp[35]), .CK(clk_c), .Q(tmp[36]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i37.GSR = "ENABLED";
    FD1S3AX tmp_i38 (.D(tmp[36]), .CK(clk_c), .Q(tmp[37]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i38.GSR = "ENABLED";
    FD1S3AX tmp_i39 (.D(tmp[37]), .CK(clk_c), .Q(tmp[38]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i39.GSR = "ENABLED";
    FD1S3AX tmp_i40 (.D(tmp[38]), .CK(clk_c), .Q(tmp[39]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i40.GSR = "ENABLED";
    FD1S3AX tmp_i41 (.D(tmp[39]), .CK(clk_c), .Q(tmp[40]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i41.GSR = "ENABLED";
    FD1S3AX tmp_i42 (.D(tmp[40]), .CK(clk_c), .Q(tmp[41]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i42.GSR = "ENABLED";
    FD1S3AX tmp_i43 (.D(tmp[41]), .CK(clk_c), .Q(tmp[42]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i43.GSR = "ENABLED";
    FD1S3AX tmp_i44 (.D(tmp[42]), .CK(clk_c), .Q(tmp[43]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i44.GSR = "ENABLED";
    FD1S3AX tmp_i45 (.D(tmp[43]), .CK(clk_c), .Q(tmp[44]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i45.GSR = "ENABLED";
    FD1S3AX tmp_i46 (.D(tmp[44]), .CK(clk_c), .Q(tmp[45]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i46.GSR = "ENABLED";
    FD1S3AX tmp_i47 (.D(tmp[45]), .CK(clk_c), .Q(tmp[46]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i47.GSR = "ENABLED";
    FD1S3AX tmp_i48 (.D(tmp[46]), .CK(clk_c), .Q(tmp[47]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i48.GSR = "ENABLED";
    FD1S3AX tmp_i49 (.D(tmp[47]), .CK(clk_c), .Q(tmp[48]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i49.GSR = "ENABLED";
    FD1S3AX tmp_i50 (.D(tmp[48]), .CK(clk_c), .Q(tmp[49]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i50.GSR = "ENABLED";
    FD1S3AX tmp_i51 (.D(tmp[49]), .CK(clk_c), .Q(tmp[50]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i51.GSR = "ENABLED";
    FD1S3AX tmp_i52 (.D(tmp[50]), .CK(clk_c), .Q(tmp[51]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i52.GSR = "ENABLED";
    FD1S3AX tmp_i53 (.D(tmp[51]), .CK(clk_c), .Q(tmp[52]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i53.GSR = "ENABLED";
    FD1S3AX tmp_i54 (.D(tmp[52]), .CK(clk_c), .Q(tmp[53]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i54.GSR = "ENABLED";
    FD1S3AX tmp_i55 (.D(tmp[53]), .CK(clk_c), .Q(tmp[54]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i55.GSR = "ENABLED";
    FD1S3AX tmp_i56 (.D(tmp[54]), .CK(clk_c), .Q(tmp[55]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i56.GSR = "ENABLED";
    FD1S3AX tmp_i57 (.D(tmp[55]), .CK(clk_c), .Q(tmp[56]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i57.GSR = "ENABLED";
    FD1S3AX tmp_i58 (.D(tmp[56]), .CK(clk_c), .Q(tmp[57]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i58.GSR = "ENABLED";
    FD1S3AX tmp_i59 (.D(tmp[57]), .CK(clk_c), .Q(tmp[58]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i59.GSR = "ENABLED";
    FD1S3AX tmp_i60 (.D(tmp[58]), .CK(clk_c), .Q(tmp[59]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i60.GSR = "ENABLED";
    FD1S3AX tmp_i61 (.D(tmp[59]), .CK(clk_c), .Q(tmp[60]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i61.GSR = "ENABLED";
    FD1S3AX tmp_i62 (.D(tmp[60]), .CK(clk_c), .Q(tmp[61]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i62.GSR = "ENABLED";
    FD1S3AX tmp_i63 (.D(tmp[61]), .CK(clk_c), .Q(tmp[62]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i63.GSR = "ENABLED";
    FD1S3AX tmp_i64 (.D(tmp[62]), .CK(clk_c), .Q(tmp[63]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i64.GSR = "ENABLED";
    FD1S3AX tmp_i65 (.D(tmp[63]), .CK(clk_c), .Q(tmp[64]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i65.GSR = "ENABLED";
    FD1S3AX tmp_i66 (.D(tmp[64]), .CK(clk_c), .Q(tmp[65]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i66.GSR = "ENABLED";
    FD1S3AX tmp_i67 (.D(tmp[65]), .CK(clk_c), .Q(tmp[66]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i67.GSR = "ENABLED";
    FD1S3AX tmp_i68 (.D(tmp[66]), .CK(clk_c), .Q(tmp[67]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i68.GSR = "ENABLED";
    FD1S3AX tmp_i69 (.D(tmp[67]), .CK(clk_c), .Q(tmp[68]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i69.GSR = "ENABLED";
    FD1S3AX tmp_i70 (.D(tmp[68]), .CK(clk_c), .Q(tmp[69]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i70.GSR = "ENABLED";
    FD1S3AX tmp_i71 (.D(tmp[69]), .CK(clk_c), .Q(tmp[70]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i71.GSR = "ENABLED";
    FD1S3AX tmp_i72 (.D(tmp[70]), .CK(clk_c), .Q(tmp[71]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i72.GSR = "ENABLED";
    FD1S3AX tmp_i73 (.D(tmp[71]), .CK(clk_c), .Q(tmp[72]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i73.GSR = "ENABLED";
    FD1S3AX tmp_i74 (.D(tmp[72]), .CK(clk_c), .Q(tmp[73]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i74.GSR = "ENABLED";
    FD1S3AX tmp_i75 (.D(tmp[73]), .CK(clk_c), .Q(tmp[74]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i75.GSR = "ENABLED";
    FD1S3AX tmp_i76 (.D(tmp[74]), .CK(clk_c), .Q(tmp[75]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i76.GSR = "ENABLED";
    FD1S3AX tmp_i77 (.D(tmp[75]), .CK(clk_c), .Q(tmp[76]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i77.GSR = "ENABLED";
    FD1S3AX tmp_i78 (.D(tmp[76]), .CK(clk_c), .Q(tmp[77]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i78.GSR = "ENABLED";
    FD1S3AX tmp_i79 (.D(tmp[77]), .CK(clk_c), .Q(tmp[78]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i79.GSR = "ENABLED";
    FD1S3AX tmp_i80 (.D(tmp[78]), .CK(clk_c), .Q(tmp[79]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i80.GSR = "ENABLED";
    FD1S3AX tmp_i81 (.D(tmp[79]), .CK(clk_c), .Q(tmp[80]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i81.GSR = "ENABLED";
    FD1S3AX tmp_i82 (.D(tmp[80]), .CK(clk_c), .Q(tmp[81]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i82.GSR = "ENABLED";
    FD1S3AX tmp_i83 (.D(tmp[81]), .CK(clk_c), .Q(tmp[82]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i83.GSR = "ENABLED";
    FD1S3AX tmp_i84 (.D(tmp[82]), .CK(clk_c), .Q(tmp[83]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i84.GSR = "ENABLED";
    FD1S3AX tmp_i85 (.D(tmp[83]), .CK(clk_c), .Q(tmp[84]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i85.GSR = "ENABLED";
    FD1S3AX tmp_i86 (.D(tmp[84]), .CK(clk_c), .Q(tmp[85]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i86.GSR = "ENABLED";
    FD1S3AX tmp_i87 (.D(tmp[85]), .CK(clk_c), .Q(tmp[86]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i87.GSR = "ENABLED";
    FD1S3AX tmp_i88 (.D(tmp[86]), .CK(clk_c), .Q(tmp[87]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i88.GSR = "ENABLED";
    FD1S3AX tmp_i89 (.D(tmp[87]), .CK(clk_c), .Q(tmp[88]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i89.GSR = "ENABLED";
    FD1S3AX tmp_i90 (.D(tmp[88]), .CK(clk_c), .Q(tmp[89]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i90.GSR = "ENABLED";
    FD1S3AX tmp_i91 (.D(tmp[89]), .CK(clk_c), .Q(tmp[90]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i91.GSR = "ENABLED";
    FD1S3AX tmp_i92 (.D(tmp[90]), .CK(clk_c), .Q(tmp[91]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i92.GSR = "ENABLED";
    FD1S3AX tmp_i93 (.D(tmp[91]), .CK(clk_c), .Q(tmp[92]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i93.GSR = "ENABLED";
    FD1S3AX tmp_i94 (.D(tmp[92]), .CK(clk_c), .Q(tmp[93]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i94.GSR = "ENABLED";
    FD1S3AX tmp_i95 (.D(tmp[93]), .CK(clk_c), .Q(tmp[94]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(104[8] 107[4])
    defparam tmp_i95.GSR = "ENABLED";
    FD1S3AX RedD4_i1 (.D(tmp[89]), .CK(latch_c), .Q(RedD4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD4_i1.GSR = "ENABLED";
    FD1S3AX RedD4_i2 (.D(tmp[90]), .CK(latch_c), .Q(RedD4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD4_i2.GSR = "ENABLED";
    FD1S3AX RedD4_i3 (.D(tmp[91]), .CK(latch_c), .Q(RedD4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD4_i3.GSR = "ENABLED";
    FD1S3AX RedD4_i4 (.D(tmp[92]), .CK(latch_c), .Q(RedD4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD4_i4.GSR = "ENABLED";
    FD1S3AX RedD4_i5 (.D(tmp[93]), .CK(latch_c), .Q(RedD4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD4_i5.GSR = "ENABLED";
    FD1S3AX RedD4_i6 (.D(tmp[94]), .CK(latch_c), .Q(RedD4[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD4_i6.GSR = "ENABLED";
    FD1S3AX GrnD4_i1 (.D(tmp[81]), .CK(latch_c), .Q(GrnD4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD4_i1.GSR = "ENABLED";
    FD1S3AX GrnD4_i2 (.D(tmp[82]), .CK(latch_c), .Q(GrnD4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD4_i2.GSR = "ENABLED";
    FD1S3AX GrnD4_i3 (.D(tmp[83]), .CK(latch_c), .Q(GrnD4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD4_i3.GSR = "ENABLED";
    FD1S3AX GrnD4_i4 (.D(tmp[84]), .CK(latch_c), .Q(GrnD4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD4_i4.GSR = "ENABLED";
    FD1S3AX GrnD4_i5 (.D(tmp[85]), .CK(latch_c), .Q(GrnD4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD4_i5.GSR = "ENABLED";
    FD1S3AX GrnD4_i6 (.D(tmp[86]), .CK(latch_c), .Q(GrnD4[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD4_i6.GSR = "ENABLED";
    FD1S3AX ledA4_i1 (.D(tmp[73]), .CK(latch_c), .Q(ledA4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA4_i1.GSR = "ENABLED";
    FD1S3AX ledA4_i2 (.D(tmp[74]), .CK(latch_c), .Q(ledA4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA4_i2.GSR = "ENABLED";
    FD1S3AX ledA4_i3 (.D(tmp[75]), .CK(latch_c), .Q(ledA4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA4_i3.GSR = "ENABLED";
    FD1S3AX ledA4_i4 (.D(tmp[76]), .CK(latch_c), .Q(ledA4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA4_i4.GSR = "ENABLED";
    FD1S3AX ledA4_i5 (.D(tmp[77]), .CK(latch_c), .Q(ledA4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA4_i5.GSR = "ENABLED";
    FD1S3AX ledA4_i6 (.D(tmp[78]), .CK(latch_c), .Q(ledA4[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA4_i6.GSR = "ENABLED";
    FD1S3AX RedD3_i1 (.D(tmp[65]), .CK(latch_c), .Q(RedD3[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD3_i1.GSR = "ENABLED";
    FD1S3AX RedD3_i2 (.D(tmp[66]), .CK(latch_c), .Q(RedD3[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD3_i2.GSR = "ENABLED";
    FD1S3AX RedD3_i3 (.D(tmp[67]), .CK(latch_c), .Q(RedD3[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD3_i3.GSR = "ENABLED";
    FD1S3AX RedD3_i4 (.D(tmp[68]), .CK(latch_c), .Q(RedD3[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD3_i4.GSR = "ENABLED";
    FD1S3AX RedD3_i5 (.D(tmp[69]), .CK(latch_c), .Q(RedD3[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD3_i5.GSR = "ENABLED";
    FD1S3AX RedD3_i6 (.D(tmp[70]), .CK(latch_c), .Q(RedD3[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD3_i6.GSR = "ENABLED";
    FD1S3AX GrnD3_i1 (.D(tmp[57]), .CK(latch_c), .Q(GrnD3[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD3_i1.GSR = "ENABLED";
    FD1S3AX GrnD3_i2 (.D(tmp[58]), .CK(latch_c), .Q(GrnD3[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD3_i2.GSR = "ENABLED";
    FD1S3AX GrnD3_i3 (.D(tmp[59]), .CK(latch_c), .Q(GrnD3[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD3_i3.GSR = "ENABLED";
    FD1S3AX GrnD3_i4 (.D(tmp[60]), .CK(latch_c), .Q(GrnD3[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD3_i4.GSR = "ENABLED";
    FD1S3AX GrnD3_i5 (.D(tmp[61]), .CK(latch_c), .Q(GrnD3[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD3_i5.GSR = "ENABLED";
    FD1S3AX GrnD3_i6 (.D(tmp[62]), .CK(latch_c), .Q(GrnD3[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD3_i6.GSR = "ENABLED";
    FD1S3AX ledA3_i1 (.D(tmp[49]), .CK(latch_c), .Q(ledA3[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA3_i1.GSR = "ENABLED";
    FD1S3AX ledA3_i2 (.D(tmp[50]), .CK(latch_c), .Q(ledA3[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA3_i2.GSR = "ENABLED";
    FD1S3AX ledA3_i3 (.D(tmp[51]), .CK(latch_c), .Q(ledA3[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA3_i3.GSR = "ENABLED";
    FD1S3AX ledA3_i4 (.D(tmp[52]), .CK(latch_c), .Q(ledA3[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA3_i4.GSR = "ENABLED";
    FD1S3AX ledA3_i5 (.D(tmp[53]), .CK(latch_c), .Q(ledA3[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA3_i5.GSR = "ENABLED";
    FD1S3AX ledA3_i6 (.D(tmp[54]), .CK(latch_c), .Q(ledA3[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA3_i6.GSR = "ENABLED";
    FD1S3AX RedD2_i1 (.D(tmp[41]), .CK(latch_c), .Q(RedD2[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD2_i1.GSR = "ENABLED";
    FD1S3AX RedD2_i2 (.D(tmp[42]), .CK(latch_c), .Q(RedD2[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD2_i2.GSR = "ENABLED";
    FD1S3AX RedD2_i3 (.D(tmp[43]), .CK(latch_c), .Q(RedD2[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD2_i3.GSR = "ENABLED";
    FD1S3AX RedD2_i4 (.D(tmp[44]), .CK(latch_c), .Q(RedD2[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD2_i4.GSR = "ENABLED";
    FD1S3AX RedD2_i5 (.D(tmp[45]), .CK(latch_c), .Q(RedD2[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD2_i5.GSR = "ENABLED";
    FD1S3AX RedD2_i6 (.D(tmp[46]), .CK(latch_c), .Q(RedD2[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD2_i6.GSR = "ENABLED";
    FD1S3AX GrnD2_i1 (.D(tmp[33]), .CK(latch_c), .Q(GrnD2[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD2_i1.GSR = "ENABLED";
    FD1S3AX GrnD2_i2 (.D(tmp[34]), .CK(latch_c), .Q(GrnD2[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD2_i2.GSR = "ENABLED";
    FD1S3AX GrnD2_i3 (.D(tmp[35]), .CK(latch_c), .Q(GrnD2[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD2_i3.GSR = "ENABLED";
    FD1S3AX GrnD2_i4 (.D(tmp[36]), .CK(latch_c), .Q(GrnD2[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD2_i4.GSR = "ENABLED";
    FD1S3AX GrnD2_i5 (.D(tmp[37]), .CK(latch_c), .Q(GrnD2[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD2_i5.GSR = "ENABLED";
    FD1S3AX GrnD2_i6 (.D(tmp[38]), .CK(latch_c), .Q(GrnD2[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD2_i6.GSR = "ENABLED";
    FD1S3AX ledA2_i1 (.D(tmp[25]), .CK(latch_c), .Q(ledA2[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA2_i1.GSR = "ENABLED";
    FD1S3AX ledA2_i2 (.D(tmp[26]), .CK(latch_c), .Q(ledA2[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA2_i2.GSR = "ENABLED";
    FD1S3AX ledA2_i3 (.D(tmp[27]), .CK(latch_c), .Q(ledA2[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA2_i3.GSR = "ENABLED";
    FD1S3AX ledA2_i4 (.D(tmp[28]), .CK(latch_c), .Q(ledA2[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA2_i4.GSR = "ENABLED";
    FD1S3AX ledA2_i5 (.D(tmp[29]), .CK(latch_c), .Q(ledA2[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA2_i5.GSR = "ENABLED";
    FD1S3AX ledA2_i6 (.D(tmp[30]), .CK(latch_c), .Q(ledA2[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA2_i6.GSR = "ENABLED";
    FD1S3AX RedD1_i1 (.D(tmp[17]), .CK(latch_c), .Q(RedD1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD1_i1.GSR = "ENABLED";
    FD1S3AX RedD1_i2 (.D(tmp[18]), .CK(latch_c), .Q(RedD1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD1_i2.GSR = "ENABLED";
    FD1S3AX RedD1_i3 (.D(tmp[19]), .CK(latch_c), .Q(RedD1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD1_i3.GSR = "ENABLED";
    FD1S3AX RedD1_i4 (.D(tmp[20]), .CK(latch_c), .Q(RedD1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD1_i4.GSR = "ENABLED";
    FD1S3AX RedD1_i5 (.D(tmp[21]), .CK(latch_c), .Q(RedD1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD1_i5.GSR = "ENABLED";
    FD1S3AX RedD1_i6 (.D(tmp[22]), .CK(latch_c), .Q(RedD1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam RedD1_i6.GSR = "ENABLED";
    FD1S3AX GrnD1_i1 (.D(tmp[9]), .CK(latch_c), .Q(GrnD1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD1_i1.GSR = "ENABLED";
    FD1S3AX GrnD1_i2 (.D(tmp[10]), .CK(latch_c), .Q(GrnD1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD1_i2.GSR = "ENABLED";
    FD1S3AX GrnD1_i3 (.D(tmp[11]), .CK(latch_c), .Q(GrnD1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD1_i3.GSR = "ENABLED";
    FD1S3AX GrnD1_i4 (.D(tmp[12]), .CK(latch_c), .Q(GrnD1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD1_i4.GSR = "ENABLED";
    FD1S3AX GrnD1_i5 (.D(tmp[13]), .CK(latch_c), .Q(GrnD1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD1_i5.GSR = "ENABLED";
    FD1S3AX GrnD1_i6 (.D(tmp[14]), .CK(latch_c), .Q(GrnD1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam GrnD1_i6.GSR = "ENABLED";
    FD1S3AX ledA1_i1 (.D(tmp[1]), .CK(latch_c), .Q(ledA1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA1_i1.GSR = "ENABLED";
    FD1S3AX ledA1_i2 (.D(tmp[2]), .CK(latch_c), .Q(ledA1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA1_i2.GSR = "ENABLED";
    FD1S3AX ledA1_i3 (.D(tmp[3]), .CK(latch_c), .Q(ledA1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA1_i3.GSR = "ENABLED";
    FD1S3AX ledA1_i4 (.D(tmp[4]), .CK(latch_c), .Q(ledA1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA1_i4.GSR = "ENABLED";
    FD1S3AX ledA1_i5 (.D(tmp[5]), .CK(latch_c), .Q(ledA1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA1_i5.GSR = "ENABLED";
    FD1S3AX ledA1_i6 (.D(tmp[6]), .CK(latch_c), .Q(ledA1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(110[8] 127[4])
    defparam ledA1_i6.GSR = "ENABLED";
    FD1S3AX bright_i1 (.D(tmp[1]), .CK(pwm_c), .Q(bright[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i1.GSR = "ENABLED";
    FD1S3AX bright_i2 (.D(tmp[2]), .CK(pwm_c), .Q(bright[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i2.GSR = "ENABLED";
    FD1S3AX bright_i3 (.D(tmp[3]), .CK(pwm_c), .Q(bright[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i3.GSR = "ENABLED";
    FD1S3AX bright_i4 (.D(tmp[4]), .CK(pwm_c), .Q(bright[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i4.GSR = "ENABLED";
    FD1S3AX bright_i5 (.D(tmp[5]), .CK(pwm_c), .Q(bright[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i5.GSR = "ENABLED";
    FD1S3AX bright_i6 (.D(tmp[6]), .CK(pwm_c), .Q(bright[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i6.GSR = "ENABLED";
    FD1S3AX bright_i7 (.D(tmp[7]), .CK(pwm_c), .Q(bright[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i7.GSR = "ENABLED";
    FD1S3AX bright_i8 (.D(tmp[8]), .CK(pwm_c), .Q(bright[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i8.GSR = "ENABLED";
    FD1S3AX bright_i9 (.D(tmp[9]), .CK(pwm_c), .Q(bright[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i9.GSR = "ENABLED";
    FD1S3AX bright_i10 (.D(tmp[10]), .CK(pwm_c), .Q(bright[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i10.GSR = "ENABLED";
    FD1S3AX bright_i11 (.D(tmp[11]), .CK(pwm_c), .Q(bright[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(129[8] 131[4])
    defparam bright_i11.GSR = "ENABLED";
    FD1S3IX Digit1_i1 (.D(LEDS1[1]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i1.GSR = "ENABLED";
    FD1S3IX Digit1_i2 (.D(LEDS1[2]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i2.GSR = "ENABLED";
    FD1S3IX Digit1_i3 (.D(LEDS1[3]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i3.GSR = "ENABLED";
    FD1S3IX Digit1_i4 (.D(LEDS1[4]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i4.GSR = "ENABLED";
    FD1S3IX Digit1_i5 (.D(LEDS1[5]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i5.GSR = "ENABLED";
    FD1S3IX Digit1_i6 (.D(LEDS1[6]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i6.GSR = "ENABLED";
    FD1S3IX Digit1_i7 (.D(LEDS1[7]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i7.GSR = "ENABLED";
    FD1S3IX Digit1_i8 (.D(LEDS1[8]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i8.GSR = "ENABLED";
    FD1S3IX Digit1_i9 (.D(LEDS1[9]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i9.GSR = "ENABLED";
    FD1S3IX Digit1_i10 (.D(LEDS1[10]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i10.GSR = "ENABLED";
    FD1S3IX Digit1_i11 (.D(LEDS1[11]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i11.GSR = "ENABLED";
    FD1S3IX Digit1_i12 (.D(LEDS1[12]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i12.GSR = "ENABLED";
    FD1S3IX Digit1_i13 (.D(LEDS1[13]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i13.GSR = "ENABLED";
    FD1S3IX Digit1_i14 (.D(LEDS1[14]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i14.GSR = "ENABLED";
    FD1S3IX Digit1_i15 (.D(LEDS1[15]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i15.GSR = "ENABLED";
    FD1S3IX Digit1_i16 (.D(LEDS1[16]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i16.GSR = "ENABLED";
    FD1S3IX Digit1_i17 (.D(LEDS1[17]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i17.GSR = "ENABLED";
    FD1S3IX Digit1_i18 (.D(LEDS1[18]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i18.GSR = "ENABLED";
    FD1S3IX Digit1_i19 (.D(LEDS1[19]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i19.GSR = "ENABLED";
    FD1S3IX Digit1_i20 (.D(LEDS1[20]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit1_c[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit1_i20.GSR = "ENABLED";
    FD1S3AX cnt_94__i1 (.D(n54[1]), .CK(osc_clk_c_c), .Q(cnt[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i1.GSR = "ENABLED";
    FD1S3AX cnt_94__i2 (.D(n54[2]), .CK(osc_clk_c_c), .Q(cnt[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i2.GSR = "ENABLED";
    FD1S3AX cnt_94__i3 (.D(n54[3]), .CK(osc_clk_c_c), .Q(cnt[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i3.GSR = "ENABLED";
    FD1S3AX cnt_94__i4 (.D(n54[4]), .CK(osc_clk_c_c), .Q(cnt[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i4.GSR = "ENABLED";
    FD1S3AX cnt_94__i5 (.D(n54[5]), .CK(osc_clk_c_c), .Q(cnt[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i5.GSR = "ENABLED";
    FD1S3AX cnt_94__i6 (.D(n54[6]), .CK(osc_clk_c_c), .Q(cnt[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i6.GSR = "ENABLED";
    FD1S3AX cnt_94__i7 (.D(n54[7]), .CK(osc_clk_c_c), .Q(cnt[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i7.GSR = "ENABLED";
    FD1S3AX cnt_94__i8 (.D(n54[8]), .CK(osc_clk_c_c), .Q(cnt[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i8.GSR = "ENABLED";
    FD1S3AX cnt_94__i9 (.D(n54[9]), .CK(osc_clk_c_c), .Q(cnt[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i9.GSR = "ENABLED";
    FD1S3AX cnt_94__i10 (.D(n54[10]), .CK(osc_clk_c_c), .Q(cnt[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i10.GSR = "ENABLED";
    FD1S3AX cnt_94__i11 (.D(n54[11]), .CK(osc_clk_c_c), .Q(cnt[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94__i11.GSR = "ENABLED";
    LUT4 and_17_i1_2_lut (.A(ledA1[0]), .B(Led[0]), .Z(LEDS1[0])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(86[40:53])
    defparam and_17_i1_2_lut.init = 16'h8888;
    FD1S3IX Digit2_i0 (.D(LEDS2[0]), .CK(osc_clk_c_c), .CD(n985), .Q(Digit2_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(60[8] 72[4])
    defparam Digit2_i0.GSR = "ENABLED";
    FD1P3IX Seg_i0_i1 (.D(Seg[0]), .SP(n292[0]), .CD(n986), .CK(osc_clk_c_c), 
            .Q(Seg[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Seg_i0_i1.GSR = "ENABLED";
    FD1P3IX Seg_i0_i2 (.D(Seg[1]), .SP(n292[0]), .CD(n986), .CK(osc_clk_c_c), 
            .Q(Seg[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Seg_i0_i2.GSR = "ENABLED";
    FD1P3IX Seg_i0_i3 (.D(Seg[2]), .SP(n292[0]), .CD(n986), .CK(osc_clk_c_c), 
            .Q(Seg[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Seg_i0_i3.GSR = "ENABLED";
    FD1P3IX Seg_i0_i4 (.D(Seg[3]), .SP(n292[0]), .CD(n986), .CK(osc_clk_c_c), 
            .Q(Seg[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Seg_i0_i4.GSR = "ENABLED";
    FD1P3IX Seg_i0_i5 (.D(Seg[4]), .SP(n292[0]), .CD(n986), .CK(osc_clk_c_c), 
            .Q(Seg[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Seg_i0_i5.GSR = "ENABLED";
    FD1P3IX Seg_i0_i6 (.D(Seg[5]), .SP(n292[0]), .CD(n986), .CK(osc_clk_c_c), 
            .Q(Seg[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(93[8] 101[4])
    defparam Seg_i0_i6.GSR = "ENABLED";
    LUT4 LessThan_12_i7_2_lut_rep_14 (.A(cnt[3]), .B(bright[3]), .Z(n8492)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i7_2_lut_rep_14.init = 16'h6666;
    LUT4 and_22_i6_2_lut (.A(GrnD3[5]), .B(Seg[5]), .Z(LEDS3[12])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[26:39])
    defparam and_22_i6_2_lut.init = 16'h8888;
    LUT4 and_19_i2_2_lut (.A(GrnD2[1]), .B(Seg[1]), .Z(LEDS2[8])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[26:39])
    defparam and_19_i2_2_lut.init = 16'h8888;
    LUT4 and_26_i4_2_lut (.A(ledA4[3]), .B(Led[3]), .Z(LEDS4[3])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[40:53])
    defparam and_26_i4_2_lut.init = 16'h8888;
    LUT4 and_19_i3_2_lut (.A(GrnD2[2]), .B(Seg[2]), .Z(LEDS2[9])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[26:39])
    defparam and_19_i3_2_lut.init = 16'h8888;
    CCU2D cnt_94_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8336), 
          .COUT(n8337), .S0(n54[7]), .S1(n54[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_94_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_94_add_4_9.INJECT1_0 = "NO";
    defparam cnt_94_add_4_9.INJECT1_1 = "NO";
    LUT4 i7569_2_lut (.A(Seg[3]), .B(Seg[4]), .Z(n8455)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7569_2_lut.init = 16'h1111;
    LUT4 i7572_2_lut (.A(n292[0]), .B(n11), .Z(n986)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7572_2_lut.init = 16'h8888;
    CCU2D cnt_94_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8335), 
          .COUT(n8336), .S0(n54[5]), .S1(n54[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_94_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_94_add_4_7.INJECT1_0 = "NO";
    defparam cnt_94_add_4_7.INJECT1_1 = "NO";
    LUT4 and_26_i5_2_lut (.A(ledA4[4]), .B(Led[4]), .Z(LEDS4[4])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[40:53])
    defparam and_26_i5_2_lut.init = 16'h8888;
    CCU2D cnt_94_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8334), 
          .COUT(n8335), .S0(n54[3]), .S1(n54[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_94_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_94_add_4_5.INJECT1_0 = "NO";
    defparam cnt_94_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_94_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8333), 
          .COUT(n8334), .S0(n54[1]), .S1(n54[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_94_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_94_add_4_3.INJECT1_0 = "NO";
    defparam cnt_94_add_4_3.INJECT1_1 = "NO";
    LUT4 and_19_i4_2_lut (.A(GrnD2[3]), .B(Seg[3]), .Z(LEDS2[10])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[26:39])
    defparam and_19_i4_2_lut.init = 16'h8888;
    LUT4 and_26_i6_2_lut (.A(ledA4[5]), .B(Led[5]), .Z(LEDS4[5])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[40:53])
    defparam and_26_i6_2_lut.init = 16'h8888;
    LUT4 and_19_i5_2_lut (.A(GrnD2[4]), .B(Seg[4]), .Z(LEDS2[11])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[26:39])
    defparam and_19_i5_2_lut.init = 16'h8888;
    LUT4 and_26_i7_2_lut (.A(ledA4[6]), .B(Led[6]), .Z(LEDS4[6])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[40:53])
    defparam and_26_i7_2_lut.init = 16'h8888;
    LUT4 and_25_i1_2_lut (.A(GrnD4[0]), .B(Seg[0]), .Z(LEDS4[7])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[26:39])
    defparam and_25_i1_2_lut.init = 16'h8888;
    LUT4 and_19_i6_2_lut (.A(GrnD2[5]), .B(Seg[5]), .Z(LEDS2[12])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[26:39])
    defparam and_19_i6_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_adj_1 (.A(Seg[5]), .B(Seg[1]), .Z(n8_adj_2)) /* synthesis lut_function=(A+(B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(98[7:15])
    defparam i2_2_lut_adj_1.init = 16'heeee;
    LUT4 and_25_i2_2_lut (.A(GrnD4[1]), .B(Seg[1]), .Z(LEDS4[8])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[26:39])
    defparam and_25_i2_2_lut.init = 16'h8888;
    LUT4 and_19_i7_2_lut (.A(GrnD2[6]), .B(Seg[6]), .Z(LEDS2[13])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[26:39])
    defparam and_19_i7_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i16_3_lut_3_lut (.A(cnt[9]), .B(bright[9]), .C(n8), 
         .Z(n16)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_12_i23_2_lut_rep_8 (.A(cnt[11]), .B(bright[11]), .Z(n8486)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i23_2_lut_rep_8.init = 16'h6666;
    LUT4 and_18_i1_2_lut (.A(RedD2[0]), .B(Seg[0]), .Z(LEDS2[14])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[12:25])
    defparam and_18_i1_2_lut.init = 16'h8888;
    LUT4 and_18_i2_2_lut (.A(RedD2[1]), .B(Seg[1]), .Z(LEDS2[15])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[12:25])
    defparam and_18_i2_2_lut.init = 16'h8888;
    LUT4 and_25_i3_2_lut (.A(GrnD4[2]), .B(Seg[2]), .Z(LEDS4[9])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[26:39])
    defparam and_25_i3_2_lut.init = 16'h8888;
    LUT4 and_18_i3_2_lut (.A(RedD2[2]), .B(Seg[2]), .Z(LEDS2[16])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[12:25])
    defparam and_18_i3_2_lut.init = 16'h8888;
    LUT4 i7525_4_lut_4_lut (.A(n8492), .B(n8408), .C(n9), .D(n8491), 
         .Z(n8415)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam i7525_4_lut_4_lut.init = 16'h00fb;
    LUT4 and_25_i4_2_lut (.A(GrnD4[3]), .B(Seg[3]), .Z(LEDS4[10])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[26:39])
    defparam and_25_i4_2_lut.init = 16'h8888;
    LUT4 and_18_i4_2_lut (.A(RedD2[3]), .B(Seg[3]), .Z(LEDS2[17])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[12:25])
    defparam and_18_i4_2_lut.init = 16'h8888;
    LUT4 and_25_i5_2_lut (.A(GrnD4[4]), .B(Seg[4]), .Z(LEDS4[11])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[26:39])
    defparam and_25_i5_2_lut.init = 16'h8888;
    LUT4 and_18_i5_2_lut (.A(RedD2[4]), .B(Seg[4]), .Z(LEDS2[18])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[12:25])
    defparam and_18_i5_2_lut.init = 16'h8888;
    LUT4 i7575_4_lut (.A(n8488), .B(n8489), .C(n8487), .D(n9), .Z(n8461)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i7575_4_lut.init = 16'haaab;
    LUT4 i7561_4_lut_4_lut (.A(n8486), .B(n8488), .C(n18), .D(n6), .Z(n20)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam i7561_4_lut_4_lut.init = 16'hf1e0;
    LUT4 and_22_i7_2_lut (.A(GrnD3[6]), .B(Seg[6]), .Z(LEDS3[13])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[26:39])
    defparam and_22_i7_2_lut.init = 16'h8888;
    LUT4 i7571_4_lut (.A(n8455), .B(Seg[2]), .C(n8_adj_2), .D(Seg[0]), 
         .Z(n11)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i7571_4_lut.init = 16'h0002;
    LUT4 and_20_i2_2_lut (.A(ledA2[1]), .B(Led[1]), .Z(LEDS2[1])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[40:53])
    defparam and_20_i2_2_lut.init = 16'h8888;
    LUT4 and_20_i3_2_lut (.A(ledA2[2]), .B(Led[2]), .Z(LEDS2[2])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[40:53])
    defparam and_20_i3_2_lut.init = 16'h8888;
    LUT4 i7577_4_lut_4_lut_4_lut (.A(n8488), .B(n8487), .C(n8424), .D(n8489), 
         .Z(n8463)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam i7577_4_lut_4_lut_4_lut.init = 16'hffef;
    LUT4 and_25_i6_2_lut (.A(GrnD4[5]), .B(Seg[5]), .Z(LEDS4[12])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[26:39])
    defparam and_25_i6_2_lut.init = 16'h8888;
    LUT4 i7574_2_lut_3_lut_3_lut_4_lut (.A(cnt[6]), .B(bright[6]), .C(n8490), 
         .D(n8491), .Z(n8425)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam i7574_2_lut_3_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 and_18_i6_2_lut (.A(RedD2[5]), .B(Seg[5]), .Z(LEDS2[19])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[12:25])
    defparam and_18_i6_2_lut.init = 16'h8888;
    LUT4 and_21_i1_2_lut (.A(RedD3[0]), .B(Seg[0]), .Z(LEDS3[14])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[12:25])
    defparam and_21_i1_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i11_2_lut_rep_13 (.A(cnt[5]), .B(bright[5]), .Z(n8491)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i11_2_lut_rep_13.init = 16'h6666;
    LUT4 and_21_i2_2_lut (.A(RedD3[1]), .B(Seg[1]), .Z(LEDS3[15])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[12:25])
    defparam and_21_i2_2_lut.init = 16'h8888;
    LUT4 and_20_i4_2_lut (.A(ledA2[3]), .B(Led[3]), .Z(LEDS2[3])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[40:53])
    defparam and_20_i4_2_lut.init = 16'h8888;
    LUT4 and_21_i3_2_lut (.A(RedD3[2]), .B(Seg[2]), .Z(LEDS3[16])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[12:25])
    defparam and_21_i3_2_lut.init = 16'h8888;
    LUT4 and_21_i4_2_lut (.A(RedD3[3]), .B(Seg[3]), .Z(LEDS3[17])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[12:25])
    defparam and_21_i4_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i6_3_lut_3_lut (.A(cnt[3]), .B(bright[3]), .C(bright[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i6_3_lut_3_lut.init = 16'hd4d4;
    CCU2D cnt_94_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8333), 
          .S1(n54[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94_add_4_1.INIT0 = 16'hF000;
    defparam cnt_94_add_4_1.INIT1 = 16'h0555;
    defparam cnt_94_add_4_1.INJECT1_0 = "NO";
    defparam cnt_94_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_94_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8338), 
          .S0(n54[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(135[8:15])
    defparam cnt_94_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_94_add_4_13.INIT1 = 16'h0000;
    defparam cnt_94_add_4_13.INJECT1_0 = "NO";
    defparam cnt_94_add_4_13.INJECT1_1 = "NO";
    LUT4 LessThan_12_i4_3_lut_4_lut (.A(bright[0]), .B(cnt[0]), .C(cnt[1]), 
         .D(bright[1]), .Z(n4)) /* synthesis lut_function=(A ((D)+!C)+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i4_3_lut_4_lut.init = 16'hbf0b;
    LUT4 and_23_i1_2_lut (.A(ledA3[0]), .B(Led[0]), .Z(LEDS3[0])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[40:53])
    defparam and_23_i1_2_lut.init = 16'h8888;
    LUT4 and_21_i5_2_lut (.A(RedD3[4]), .B(Seg[4]), .Z(LEDS3[18])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[12:25])
    defparam and_21_i5_2_lut.init = 16'h8888;
    LUT4 and_21_i6_2_lut (.A(RedD3[5]), .B(Seg[5]), .Z(LEDS3[19])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[12:25])
    defparam and_21_i6_2_lut.init = 16'h8888;
    LUT4 and_21_i7_2_lut (.A(RedD3[6]), .B(Seg[6]), .Z(LEDS3[20])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[12:25])
    defparam and_21_i7_2_lut.init = 16'h8888;
    LUT4 LessThan_12_i10_3_lut_3_lut (.A(cnt[6]), .B(bright[6]), .C(bright[5]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7578_2_lut_3_lut (.A(cnt[11]), .B(bright[11]), .C(n8463), .Z(n8443)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam i7578_2_lut_3_lut.init = 16'hf6f6;
    LUT4 and_18_i7_2_lut (.A(RedD2[6]), .B(Seg[6]), .Z(LEDS2[20])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[12:25])
    defparam and_18_i7_2_lut.init = 16'h8888;
    LUT4 and_25_i7_2_lut (.A(GrnD4[6]), .B(Seg[6]), .Z(LEDS4[13])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[26:39])
    defparam and_25_i7_2_lut.init = 16'h8888;
    LUT4 and_26_i2_2_lut (.A(ledA4[1]), .B(Led[1]), .Z(LEDS4[1])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[40:53])
    defparam and_26_i2_2_lut.init = 16'h8888;
    LUT4 and_23_i2_2_lut (.A(ledA3[1]), .B(Led[1]), .Z(LEDS3[1])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(88[40:53])
    defparam and_23_i2_2_lut.init = 16'h8888;
    L6MUX21 LessThan_12_i24 (.D0(n14), .D1(n22), .SD(n8443), .Z(n183));
    LUT4 and_26_i3_2_lut (.A(ledA4[2]), .B(Led[2]), .Z(LEDS4[2])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[40:53])
    defparam and_26_i3_2_lut.init = 16'h8888;
    LUT4 and_24_i1_2_lut (.A(RedD4[0]), .B(Seg[0]), .Z(LEDS4[14])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(89[12:25])
    defparam and_24_i1_2_lut.init = 16'h8888;
    LUT4 and_20_i5_2_lut (.A(ledA2[4]), .B(Led[4]), .Z(LEDS2[4])) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(87[40:53])
    defparam and_20_i5_2_lut.init = 16'h8888;
    PFUMX LessThan_12_i14 (.BLUT(n4), .ALUT(n12), .C0(n8425), .Z(n14));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    LUT4 i7518_2_lut (.A(cnt[2]), .B(bright[2]), .Z(n8408)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam i7518_2_lut.init = 16'h9999;
    PFUMX LessThan_12_i22 (.BLUT(n16), .ALUT(n20), .C0(n8445), .Z(n22));
    LUT4 LessThan_12_i18_3_lut_3_lut (.A(cnt[11]), .B(bright[11]), .C(bright[10]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(76[6:18])
    defparam LessThan_12_i18_3_lut_3_lut.init = 16'hd4d4;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

