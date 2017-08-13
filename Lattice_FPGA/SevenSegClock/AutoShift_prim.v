// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Mar 10 23:28:37 2017
//
// Verilog Description of module AutoShift
//

module AutoShift (Digit1, Digit2, Digit3, Digit4, pwm, latch, clk, 
            data, heartbeat) /* synthesis syn_module_defined=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(9[8:17])
    output [20:0]Digit1;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    output [20:0]Digit2;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    output [20:0]Digit3;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    output [20:0]Digit4;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    input pwm;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(17[7:10])
    input latch;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(18[8:13])
    input clk;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(19[7:10])
    input data;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(20[7:11])
    output heartbeat;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(15[9:18])
    
    wire pwm_c /* synthesis is_clock=1, SET_AS_NETWORK=pwm_c */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(17[7:10])
    wire latch_c /* synthesis is_clock=1, SET_AS_NETWORK=latch_c */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(18[8:13])
    wire clk_c /* synthesis is_clock=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(19[7:10])
    wire osc_clk_c_c /* synthesis is_clock=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(57[22:33])
    
    wire GND_net, VCC_net, data_c, heartbeat_c, Digit1_c_20, Digit1_c_19, 
        Digit1_c_18, Digit1_c_17, Digit1_c_16, Digit1_c_15, Digit1_c_14, 
        Digit1_c_13, Digit1_c_12, Digit1_c_11, Digit1_c_10, Digit1_c_9, 
        Digit1_c_8, Digit1_c_7, Digit1_c_6, Digit1_c_5, Digit1_c_4, 
        Digit1_c_3, Digit1_c_2, Digit1_c_1, Digit1_c_0, Digit2_c_20, 
        Digit2_c_19, Digit2_c_18, Digit2_c_17, Digit2_c_16, Digit2_c_15, 
        Digit2_c_14, Digit2_c_13, Digit2_c_12, Digit2_c_11, Digit2_c_10, 
        Digit2_c_9, Digit2_c_8, Digit2_c_7, Digit2_c_6, Digit2_c_5, 
        Digit2_c_4, Digit2_c_3, Digit2_c_2, Digit2_c_1, Digit2_c_0, 
        Digit3_c_20, Digit3_c_19, Digit3_c_18, Digit3_c_17, Digit3_c_16, 
        Digit3_c_15, Digit3_c_14, Digit3_c_13, Digit3_c_12, Digit3_c_11, 
        Digit3_c_10, Digit3_c_9, Digit3_c_8, Digit3_c_7, Digit3_c_6, 
        Digit3_c_5, Digit3_c_4, Digit3_c_3, Digit3_c_2, Digit3_c_1, 
        Digit3_c_0, Digit4_c_20, Digit4_c_19, Digit4_c_18, Digit4_c_17, 
        Digit4_c_16, Digit4_c_15, Digit4_c_14, Digit4_c_13, Digit4_c_12, 
        Digit4_c_11, Digit4_c_10, Digit4_c_9, Digit4_c_8, Digit4_c_7, 
        Digit4_c_6, Digit4_c_5, Digit4_c_4, Digit4_c_3, Digit4_c_2, 
        Digit4_c_1, Digit4_c_0;
    wire [6:0]RedD1;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(29[12:17])
    wire [6:0]RedD2;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(30[12:17])
    wire [6:0]RedD3;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(31[12:17])
    wire [6:0]RedD4;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(32[12:17])
    wire [6:0]GrnD1;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(33[12:17])
    wire [6:0]GrnD2;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(34[12:17])
    wire [6:0]GrnD3;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(35[12:17])
    wire [6:0]GrnD4;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(36[12:17])
    wire [6:0]ledA1;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(37[12:17])
    wire [6:0]ledA2;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(38[12:17])
    wire [6:0]ledA3;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(39[12:17])
    wire [6:0]ledA4;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(40[12:17])
    wire [20:0]LEDS1;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(43[13:18])
    wire [20:0]LEDS2;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(44[13:18])
    wire [20:0]LEDS3;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(45[13:18])
    wire [20:0]LEDS4;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(46[13:18])
    wire [11:0]cnt;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(47[14:17])
    wire [11:0]bright;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(48[13:19])
    wire [95:0]tmp;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(49[14:17])
    wire [6:0]Seg;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(50[13:16])
    wire [6:0]Led;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(51[12:15])
    
    wire heartbeat_N_120, n10, n979;
    wire [6:0]Led_6__N_104;
    
    wire n978, n977, n976, n975, n974, n973, n972, n971, n970, 
        n969, n968, n950, n949, n992, n10_adj_1, n54, n55, n56, 
        n57, n58, n59, n60, n61, n62, n63, n64, n65;
    
    VHI i2 (.Z(VCC_net));
    OFS1P3IX Digit4__i20 (.D(LEDS4[19]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_19));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i20.GSR = "ENABLED";
    IFS1P3DX tmp_i1 (.D(data_c), .SP(VCC_net), .SCLK(clk_c), .CD(GND_net), 
            .Q(tmp[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i1.GSR = "ENABLED";
    OB Digit1_pad_19 (.I(Digit1_c_19), .O(Digit1[19]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OFS1P3IX Digit2__i21 (.D(LEDS2[20]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_20));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i21.GSR = "ENABLED";
    OFS1P3IX Digit3__i21 (.D(LEDS3[20]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_20));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i21.GSR = "ENABLED";
    FD1S3AY Led_i0 (.D(Led_6__N_104[0]), .CK(osc_clk_c_c), .Q(Led[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Led_i0.GSR = "ENABLED";
    LUT4 ledA4_6__I_0_i5_2_lut (.A(ledA4[4]), .B(Led[4]), .Z(LEDS4[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[40:53])
    defparam ledA4_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 ledA4_6__I_0_i4_2_lut (.A(ledA4[3]), .B(Led[3]), .Z(LEDS4[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[40:53])
    defparam ledA4_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 ledA4_6__I_0_i3_2_lut (.A(ledA4[2]), .B(Led[2]), .Z(LEDS4[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[40:53])
    defparam ledA4_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 ledA4_6__I_0_i2_2_lut (.A(ledA4[1]), .B(Led[1]), .Z(LEDS4[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[40:53])
    defparam ledA4_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 ledA4_6__I_0_i1_2_lut (.A(ledA4[0]), .B(Led[0]), .Z(LEDS4[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[40:53])
    defparam ledA4_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 ledA1_6__I_0_i1_2_lut (.A(ledA1[0]), .B(Led[0]), .Z(LEDS1[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[40:53])
    defparam ledA1_6__I_0_i1_2_lut.init = 16'h8888;
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk_c_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "3.50";
    LUT4 i4_4_lut (.A(Seg[2]), .B(Seg[5]), .C(Seg[0]), .D(Seg[1]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(98[7:15])
    defparam i4_4_lut.init = 16'hfffe;
    FD1S3AX heartbeat_56 (.D(heartbeat_N_120), .CK(osc_clk_c_c), .Q(heartbeat_c));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(75[8] 83[4])
    defparam heartbeat_56.GSR = "ENABLED";
    FD1S3AX RedD4_i0 (.D(tmp[88]), .CK(latch_c), .Q(RedD4[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD4_i0.GSR = "ENABLED";
    FD1S3AX GrnD4_i0 (.D(tmp[80]), .CK(latch_c), .Q(GrnD4[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD4_i0.GSR = "ENABLED";
    FD1S3AX ledA4_i0 (.D(tmp[72]), .CK(latch_c), .Q(ledA4[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA4_i0.GSR = "ENABLED";
    FD1S3AX RedD3_i0 (.D(tmp[64]), .CK(latch_c), .Q(RedD3[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD3_i0.GSR = "ENABLED";
    FD1S3AX GrnD3_i0 (.D(tmp[56]), .CK(latch_c), .Q(GrnD3[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD3_i0.GSR = "ENABLED";
    FD1S3AX ledA3_i0 (.D(tmp[48]), .CK(latch_c), .Q(ledA3[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA3_i0.GSR = "ENABLED";
    FD1S3AX RedD2_i0 (.D(tmp[40]), .CK(latch_c), .Q(RedD2[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD2_i0.GSR = "ENABLED";
    FD1S3AX GrnD2_i0 (.D(tmp[32]), .CK(latch_c), .Q(GrnD2[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD2_i0.GSR = "ENABLED";
    FD1S3AX ledA2_i0 (.D(tmp[24]), .CK(latch_c), .Q(ledA2[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA2_i0.GSR = "ENABLED";
    FD1S3AX RedD1_i0 (.D(tmp[16]), .CK(latch_c), .Q(RedD1[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD1_i0.GSR = "ENABLED";
    FD1S3AX GrnD1_i0 (.D(tmp[8]), .CK(latch_c), .Q(GrnD1[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD1_i0.GSR = "ENABLED";
    FD1S3AX ledA1_i0 (.D(tmp[0]), .CK(latch_c), .Q(ledA1[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA1_i0.GSR = "ENABLED";
    FD1S3AX bright_i0 (.D(tmp[0]), .CK(pwm_c), .Q(bright[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i0.GSR = "ENABLED";
    FD1P3AY Seg_i0 (.D(n992), .SP(Led_6__N_104[0]), .CK(osc_clk_c_c), 
            .Q(Seg[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Seg_i0.GSR = "ENABLED";
    OFS1P3IX Digit4__i21 (.D(LEDS4[20]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_20));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i21.GSR = "ENABLED";
    LUT4 GrnD4_6__I_0_i4_2_lut (.A(GrnD4[3]), .B(Seg[3]), .Z(LEDS4[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[26:39])
    defparam GrnD4_6__I_0_i4_2_lut.init = 16'h8888;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 ledA1_6__I_0_i2_2_lut (.A(ledA1[1]), .B(Led[1]), .Z(LEDS1[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[40:53])
    defparam ledA1_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 GrnD4_6__I_0_i3_2_lut (.A(GrnD4[2]), .B(Seg[2]), .Z(LEDS4[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[26:39])
    defparam GrnD4_6__I_0_i3_2_lut.init = 16'h8888;
    FD1S3IX Led_i1 (.D(Led[0]), .CK(osc_clk_c_c), .CD(Led_6__N_104[0]), 
            .Q(Led[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Led_i1.GSR = "ENABLED";
    FD1S3IX Led_i2 (.D(Led[1]), .CK(osc_clk_c_c), .CD(Led_6__N_104[0]), 
            .Q(Led[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Led_i2.GSR = "ENABLED";
    FD1S3IX Led_i3 (.D(Led[2]), .CK(osc_clk_c_c), .CD(Led_6__N_104[0]), 
            .Q(Led[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Led_i3.GSR = "ENABLED";
    FD1S3IX Led_i4 (.D(Led[3]), .CK(osc_clk_c_c), .CD(Led_6__N_104[0]), 
            .Q(Led[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Led_i4.GSR = "ENABLED";
    FD1S3IX Led_i5 (.D(Led[4]), .CK(osc_clk_c_c), .CD(Led_6__N_104[0]), 
            .Q(Led[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Led_i5.GSR = "ENABLED";
    FD1S3IX Led_i6 (.D(Led[5]), .CK(osc_clk_c_c), .CD(Led_6__N_104[0]), 
            .Q(Led[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Led_i6.GSR = "ENABLED";
    FD1S3AX cnt_93__i0 (.D(n65), .CK(osc_clk_c_c), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i0.GSR = "ENABLED";
    LUT4 ledA1_6__I_0_i3_2_lut (.A(ledA1[2]), .B(Led[2]), .Z(LEDS1[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[40:53])
    defparam ledA1_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 ledA1_6__I_0_i4_2_lut (.A(ledA1[3]), .B(Led[3]), .Z(LEDS1[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[40:53])
    defparam ledA1_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 ledA1_6__I_0_i5_2_lut (.A(ledA1[4]), .B(Led[4]), .Z(LEDS1[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[40:53])
    defparam ledA1_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 ledA1_6__I_0_i6_2_lut (.A(ledA1[5]), .B(Led[5]), .Z(LEDS1[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[40:53])
    defparam ledA1_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 ledA1_6__I_0_i7_2_lut (.A(ledA1[6]), .B(Led[6]), .Z(LEDS1[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[40:53])
    defparam ledA1_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 GrnD1_6__I_0_i1_2_lut (.A(GrnD1[0]), .B(Seg[0]), .Z(LEDS1[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[26:39])
    defparam GrnD1_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 GrnD1_6__I_0_i2_2_lut (.A(GrnD1[1]), .B(Seg[1]), .Z(LEDS1[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[26:39])
    defparam GrnD1_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 GrnD1_6__I_0_i3_2_lut (.A(GrnD1[2]), .B(Seg[2]), .Z(LEDS1[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[26:39])
    defparam GrnD1_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 GrnD1_6__I_0_i4_2_lut (.A(GrnD1[3]), .B(Seg[3]), .Z(LEDS1[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[26:39])
    defparam GrnD1_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 GrnD1_6__I_0_i5_2_lut (.A(GrnD1[4]), .B(Seg[4]), .Z(LEDS1[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[26:39])
    defparam GrnD1_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 GrnD1_6__I_0_i6_2_lut (.A(GrnD1[5]), .B(Seg[5]), .Z(LEDS1[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[26:39])
    defparam GrnD1_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 RedD2_6__I_0_i7_2_lut (.A(RedD2[6]), .B(Seg[6]), .Z(LEDS2[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[12:25])
    defparam RedD2_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 i130_3_lut_rep_1 (.A(Seg[3]), .B(n10), .C(Seg[4]), .Z(n992)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(98[3] 99[21])
    defparam i130_3_lut_rep_1.init = 16'h0101;
    LUT4 RedD3_6__I_0_i7_2_lut (.A(RedD3[6]), .B(Seg[6]), .Z(LEDS3[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[12:25])
    defparam RedD3_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 GrnD1_6__I_0_i7_2_lut (.A(GrnD1[6]), .B(Seg[6]), .Z(LEDS1[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[26:39])
    defparam GrnD1_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 RedD1_6__I_0_i1_2_lut (.A(RedD1[0]), .B(Seg[0]), .Z(LEDS1[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[12:25])
    defparam RedD1_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 RedD1_6__I_0_i2_2_lut (.A(RedD1[1]), .B(Seg[1]), .Z(LEDS1[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[12:25])
    defparam RedD1_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 RedD1_6__I_0_i3_2_lut (.A(RedD1[2]), .B(Seg[2]), .Z(LEDS1[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[12:25])
    defparam RedD1_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 RedD1_6__I_0_i4_2_lut (.A(RedD1[3]), .B(Seg[3]), .Z(LEDS1[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[12:25])
    defparam RedD1_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 RedD1_6__I_0_i5_2_lut (.A(RedD1[4]), .B(Seg[4]), .Z(LEDS1[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[12:25])
    defparam RedD1_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 RedD1_6__I_0_i6_2_lut (.A(RedD1[5]), .B(Seg[5]), .Z(LEDS1[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[12:25])
    defparam RedD1_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 ledA2_6__I_0_i1_2_lut (.A(ledA2[0]), .B(Led[0]), .Z(LEDS2[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[40:53])
    defparam ledA2_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 ledA2_6__I_0_i2_2_lut (.A(ledA2[1]), .B(Led[1]), .Z(LEDS2[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[40:53])
    defparam ledA2_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 ledA2_6__I_0_i3_2_lut (.A(ledA2[2]), .B(Led[2]), .Z(LEDS2[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[40:53])
    defparam ledA2_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 ledA2_6__I_0_i4_2_lut (.A(ledA2[3]), .B(Led[3]), .Z(LEDS2[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[40:53])
    defparam ledA2_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 ledA2_6__I_0_i5_2_lut (.A(ledA2[4]), .B(Led[4]), .Z(LEDS2[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[40:53])
    defparam ledA2_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 ledA2_6__I_0_i6_2_lut (.A(ledA2[5]), .B(Led[5]), .Z(LEDS2[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[40:53])
    defparam ledA2_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 ledA2_6__I_0_i7_2_lut (.A(ledA2[6]), .B(Led[6]), .Z(LEDS2[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[40:53])
    defparam ledA2_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 GrnD2_6__I_0_i1_2_lut (.A(GrnD2[0]), .B(Seg[0]), .Z(LEDS2[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[26:39])
    defparam GrnD2_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 GrnD2_6__I_0_i2_2_lut (.A(GrnD2[1]), .B(Seg[1]), .Z(LEDS2[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[26:39])
    defparam GrnD2_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 GrnD2_6__I_0_i3_2_lut (.A(GrnD2[2]), .B(Seg[2]), .Z(LEDS2[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[26:39])
    defparam GrnD2_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 GrnD2_6__I_0_i4_2_lut (.A(GrnD2[3]), .B(Seg[3]), .Z(LEDS2[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[26:39])
    defparam GrnD2_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 GrnD2_6__I_0_i5_2_lut (.A(GrnD2[4]), .B(Seg[4]), .Z(LEDS2[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[26:39])
    defparam GrnD2_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 GrnD2_6__I_0_i6_2_lut (.A(GrnD2[5]), .B(Seg[5]), .Z(LEDS2[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[26:39])
    defparam GrnD2_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 GrnD2_6__I_0_i7_2_lut (.A(GrnD2[6]), .B(Seg[6]), .Z(LEDS2[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[26:39])
    defparam GrnD2_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 RedD2_6__I_0_i1_2_lut (.A(RedD2[0]), .B(Seg[0]), .Z(LEDS2[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[12:25])
    defparam RedD2_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 RedD2_6__I_0_i2_2_lut (.A(RedD2[1]), .B(Seg[1]), .Z(LEDS2[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[12:25])
    defparam RedD2_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 RedD2_6__I_0_i3_2_lut (.A(RedD2[2]), .B(Seg[2]), .Z(LEDS2[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[12:25])
    defparam RedD2_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 RedD2_6__I_0_i4_2_lut (.A(RedD2[3]), .B(Seg[3]), .Z(LEDS2[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[12:25])
    defparam RedD2_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 RedD2_6__I_0_i5_2_lut (.A(RedD2[4]), .B(Seg[4]), .Z(LEDS2[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[12:25])
    defparam RedD2_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 RedD2_6__I_0_i6_2_lut (.A(RedD2[5]), .B(Seg[5]), .Z(LEDS2[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(87[12:25])
    defparam RedD2_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 ledA3_6__I_0_i1_2_lut (.A(ledA3[0]), .B(Led[0]), .Z(LEDS3[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[40:53])
    defparam ledA3_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 ledA3_6__I_0_i2_2_lut (.A(ledA3[1]), .B(Led[1]), .Z(LEDS3[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[40:53])
    defparam ledA3_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 ledA3_6__I_0_i3_2_lut (.A(ledA3[2]), .B(Led[2]), .Z(LEDS3[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[40:53])
    defparam ledA3_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 ledA3_6__I_0_i4_2_lut (.A(ledA3[3]), .B(Led[3]), .Z(LEDS3[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[40:53])
    defparam ledA3_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 ledA3_6__I_0_i5_2_lut (.A(ledA3[4]), .B(Led[4]), .Z(LEDS3[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[40:53])
    defparam ledA3_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 ledA3_6__I_0_i6_2_lut (.A(ledA3[5]), .B(Led[5]), .Z(LEDS3[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[40:53])
    defparam ledA3_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 ledA3_6__I_0_i7_2_lut (.A(ledA3[6]), .B(Led[6]), .Z(LEDS3[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[40:53])
    defparam ledA3_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 GrnD3_6__I_0_i1_2_lut (.A(GrnD3[0]), .B(Seg[0]), .Z(LEDS3[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[26:39])
    defparam GrnD3_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 GrnD3_6__I_0_i2_2_lut (.A(GrnD3[1]), .B(Seg[1]), .Z(LEDS3[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[26:39])
    defparam GrnD3_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 GrnD3_6__I_0_i3_2_lut (.A(GrnD3[2]), .B(Seg[2]), .Z(LEDS3[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[26:39])
    defparam GrnD3_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 GrnD3_6__I_0_i4_2_lut (.A(GrnD3[3]), .B(Seg[3]), .Z(LEDS3[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[26:39])
    defparam GrnD3_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 GrnD3_6__I_0_i5_2_lut (.A(GrnD3[4]), .B(Seg[4]), .Z(LEDS3[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[26:39])
    defparam GrnD3_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 GrnD3_6__I_0_i6_2_lut (.A(GrnD3[5]), .B(Seg[5]), .Z(LEDS3[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[26:39])
    defparam GrnD3_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 GrnD3_6__I_0_i7_2_lut (.A(GrnD3[6]), .B(Seg[6]), .Z(LEDS3[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[26:39])
    defparam GrnD3_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 RedD3_6__I_0_i1_2_lut (.A(RedD3[0]), .B(Seg[0]), .Z(LEDS3[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[12:25])
    defparam RedD3_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 RedD3_6__I_0_i2_2_lut (.A(RedD3[1]), .B(Seg[1]), .Z(LEDS3[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[12:25])
    defparam RedD3_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 RedD3_6__I_0_i3_2_lut (.A(RedD3[2]), .B(Seg[2]), .Z(LEDS3[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[12:25])
    defparam RedD3_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 RedD3_6__I_0_i4_2_lut (.A(RedD3[3]), .B(Seg[3]), .Z(LEDS3[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[12:25])
    defparam RedD3_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 RedD3_6__I_0_i5_2_lut (.A(RedD3[4]), .B(Seg[4]), .Z(LEDS3[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[12:25])
    defparam RedD3_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 RedD3_6__I_0_i6_2_lut (.A(RedD3[5]), .B(Seg[5]), .Z(LEDS3[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(88[12:25])
    defparam RedD3_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 RedD1_6__I_0_i7_2_lut (.A(RedD1[6]), .B(Seg[6]), .Z(LEDS1[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(86[12:25])
    defparam RedD1_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 i100_1_lut (.A(heartbeat_c), .Z(n949)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(75[8] 83[4])
    defparam i100_1_lut.init = 16'h5555;
    LUT4 RedD4_6__I_0_i4_2_lut (.A(RedD4[3]), .B(Seg[3]), .Z(LEDS4[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[12:25])
    defparam RedD4_6__I_0_i4_2_lut.init = 16'h8888;
    LUT4 RedD4_6__I_0_i3_2_lut (.A(RedD4[2]), .B(Seg[2]), .Z(LEDS4[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[12:25])
    defparam RedD4_6__I_0_i3_2_lut.init = 16'h8888;
    LUT4 RedD4_6__I_0_i2_2_lut (.A(RedD4[1]), .B(Seg[1]), .Z(LEDS4[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[12:25])
    defparam RedD4_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 RedD4_6__I_0_i1_2_lut (.A(RedD4[0]), .B(Seg[0]), .Z(LEDS4[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[12:25])
    defparam RedD4_6__I_0_i1_2_lut.init = 16'h8888;
    LUT4 GrnD4_6__I_0_i7_2_lut (.A(GrnD4[6]), .B(Seg[6]), .Z(LEDS4[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[26:39])
    defparam GrnD4_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 GrnD4_6__I_0_i6_2_lut (.A(GrnD4[5]), .B(Seg[5]), .Z(LEDS4[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[26:39])
    defparam GrnD4_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 RedD4_6__I_0_i6_2_lut (.A(RedD4[5]), .B(Seg[5]), .Z(LEDS4[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[12:25])
    defparam RedD4_6__I_0_i6_2_lut.init = 16'h8888;
    LUT4 i124_3_lut (.A(Led[3]), .B(n10_adj_1), .C(Led[4]), .Z(Led_6__N_104[0])) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(95[2] 100[5])
    defparam i124_3_lut.init = 16'h0101;
    OFS1P3IX Digit4__i19 (.D(LEDS4[18]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_18));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i19.GSR = "ENABLED";
    FD1S3AX tmp_i2 (.D(tmp[0]), .CK(clk_c), .Q(tmp[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i2.GSR = "ENABLED";
    LUT4 GrnD4_6__I_0_i2_2_lut (.A(GrnD4[1]), .B(Seg[1]), .Z(LEDS4[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[26:39])
    defparam GrnD4_6__I_0_i2_2_lut.init = 16'h8888;
    LUT4 GrnD4_6__I_0_i1_2_lut (.A(GrnD4[0]), .B(Seg[0]), .Z(LEDS4[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[26:39])
    defparam GrnD4_6__I_0_i1_2_lut.init = 16'h8888;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 RedD4_6__I_0_i5_2_lut (.A(RedD4[4]), .B(Seg[4]), .Z(LEDS4[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[12:25])
    defparam RedD4_6__I_0_i5_2_lut.init = 16'h8888;
    OFS1P3IX Digit4__i18 (.D(LEDS4[17]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_17));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i18.GSR = "ENABLED";
    OFS1P3IX Digit4__i17 (.D(LEDS4[16]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_16));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i17.GSR = "ENABLED";
    OFS1P3IX Digit4__i16 (.D(LEDS4[15]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_15));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i16.GSR = "ENABLED";
    OFS1P3IX Digit4__i15 (.D(LEDS4[14]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_14));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i15.GSR = "ENABLED";
    LUT4 RedD4_6__I_0_i7_2_lut (.A(RedD4[6]), .B(Seg[6]), .Z(LEDS4[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[12:25])
    defparam RedD4_6__I_0_i7_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_1 (.A(Led[2]), .B(Led[5]), .C(Led[0]), .D(Led[1]), 
         .Z(n10_adj_1)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(95[6:14])
    defparam i4_4_lut_adj_1.init = 16'hfffe;
    LUT4 ledA4_6__I_0_i7_2_lut (.A(ledA4[6]), .B(Led[6]), .Z(LEDS4[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[40:53])
    defparam ledA4_6__I_0_i7_2_lut.init = 16'h8888;
    OB Digit1_pad_20 (.I(Digit1_c_20), .O(Digit1[20]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OFS1P3IX Digit4__i14 (.D(LEDS4[13]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_13));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i14.GSR = "ENABLED";
    OFS1P3IX Digit4__i13 (.D(LEDS4[12]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_12));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i13.GSR = "ENABLED";
    OFS1P3IX Digit4__i12 (.D(LEDS4[11]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_11));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i12.GSR = "ENABLED";
    OFS1P3IX Digit4__i11 (.D(LEDS4[10]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_10));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i11.GSR = "ENABLED";
    OFS1P3IX Digit4__i10 (.D(LEDS4[9]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_9));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i10.GSR = "ENABLED";
    OFS1P3IX Digit4__i9 (.D(LEDS4[8]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_8));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i9.GSR = "ENABLED";
    OFS1P3IX Digit4__i8 (.D(LEDS4[7]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_7));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i8.GSR = "ENABLED";
    OFS1P3IX Digit4__i7 (.D(LEDS4[6]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_6));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i7.GSR = "ENABLED";
    OFS1P3IX Digit4__i6 (.D(LEDS4[5]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_5));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i6.GSR = "ENABLED";
    OFS1P3IX Digit4__i5 (.D(LEDS4[4]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_4));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i5.GSR = "ENABLED";
    OFS1P3IX Digit4__i4 (.D(LEDS4[3]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_3));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i4.GSR = "ENABLED";
    OFS1P3IX Digit4__i3 (.D(LEDS4[2]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_2));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i3.GSR = "ENABLED";
    OFS1P3IX Digit4__i2 (.D(LEDS4[1]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_1));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i2.GSR = "ENABLED";
    OFS1P3IX Digit4__i1 (.D(LEDS4[0]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit4_c_0));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit4__i1.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    OB Digit1_pad_18 (.I(Digit1_c_18), .O(Digit1[18]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_17 (.I(Digit1_c_17), .O(Digit1[17]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_16 (.I(Digit1_c_16), .O(Digit1[16]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_15 (.I(Digit1_c_15), .O(Digit1[15]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_14 (.I(Digit1_c_14), .O(Digit1[14]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_13 (.I(Digit1_c_13), .O(Digit1[13]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_12 (.I(Digit1_c_12), .O(Digit1[12]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_11 (.I(Digit1_c_11), .O(Digit1[11]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_10 (.I(Digit1_c_10), .O(Digit1[10]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_9 (.I(Digit1_c_9), .O(Digit1[9]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_8 (.I(Digit1_c_8), .O(Digit1[8]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_7 (.I(Digit1_c_7), .O(Digit1[7]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_6 (.I(Digit1_c_6), .O(Digit1[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_5 (.I(Digit1_c_5), .O(Digit1[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_4 (.I(Digit1_c_4), .O(Digit1[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_3 (.I(Digit1_c_3), .O(Digit1[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_2 (.I(Digit1_c_2), .O(Digit1[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_1 (.I(Digit1_c_1), .O(Digit1[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit1_pad_0 (.I(Digit1_c_0), .O(Digit1[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(11[9:15])
    OB Digit2_pad_20 (.I(Digit2_c_20), .O(Digit2[20]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_19 (.I(Digit2_c_19), .O(Digit2[19]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_18 (.I(Digit2_c_18), .O(Digit2[18]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_17 (.I(Digit2_c_17), .O(Digit2[17]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_16 (.I(Digit2_c_16), .O(Digit2[16]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_15 (.I(Digit2_c_15), .O(Digit2[15]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_14 (.I(Digit2_c_14), .O(Digit2[14]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_13 (.I(Digit2_c_13), .O(Digit2[13]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_12 (.I(Digit2_c_12), .O(Digit2[12]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_11 (.I(Digit2_c_11), .O(Digit2[11]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_10 (.I(Digit2_c_10), .O(Digit2[10]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_9 (.I(Digit2_c_9), .O(Digit2[9]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_8 (.I(Digit2_c_8), .O(Digit2[8]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_7 (.I(Digit2_c_7), .O(Digit2[7]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_6 (.I(Digit2_c_6), .O(Digit2[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_5 (.I(Digit2_c_5), .O(Digit2[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_4 (.I(Digit2_c_4), .O(Digit2[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_3 (.I(Digit2_c_3), .O(Digit2[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_2 (.I(Digit2_c_2), .O(Digit2[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_1 (.I(Digit2_c_1), .O(Digit2[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit2_pad_0 (.I(Digit2_c_0), .O(Digit2[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(12[8:14])
    OB Digit3_pad_20 (.I(Digit3_c_20), .O(Digit3[20]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_19 (.I(Digit3_c_19), .O(Digit3[19]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_18 (.I(Digit3_c_18), .O(Digit3[18]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_17 (.I(Digit3_c_17), .O(Digit3[17]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_16 (.I(Digit3_c_16), .O(Digit3[16]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_15 (.I(Digit3_c_15), .O(Digit3[15]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_14 (.I(Digit3_c_14), .O(Digit3[14]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_13 (.I(Digit3_c_13), .O(Digit3[13]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_12 (.I(Digit3_c_12), .O(Digit3[12]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_11 (.I(Digit3_c_11), .O(Digit3[11]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_10 (.I(Digit3_c_10), .O(Digit3[10]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_9 (.I(Digit3_c_9), .O(Digit3[9]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_8 (.I(Digit3_c_8), .O(Digit3[8]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_7 (.I(Digit3_c_7), .O(Digit3[7]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_6 (.I(Digit3_c_6), .O(Digit3[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_5 (.I(Digit3_c_5), .O(Digit3[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_4 (.I(Digit3_c_4), .O(Digit3[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_3 (.I(Digit3_c_3), .O(Digit3[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_2 (.I(Digit3_c_2), .O(Digit3[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_1 (.I(Digit3_c_1), .O(Digit3[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit3_pad_0 (.I(Digit3_c_0), .O(Digit3[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(13[9:15])
    OB Digit4_pad_20 (.I(Digit4_c_20), .O(Digit4[20]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_19 (.I(Digit4_c_19), .O(Digit4[19]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_18 (.I(Digit4_c_18), .O(Digit4[18]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_17 (.I(Digit4_c_17), .O(Digit4[17]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_16 (.I(Digit4_c_16), .O(Digit4[16]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_15 (.I(Digit4_c_15), .O(Digit4[15]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_14 (.I(Digit4_c_14), .O(Digit4[14]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_13 (.I(Digit4_c_13), .O(Digit4[13]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_12 (.I(Digit4_c_12), .O(Digit4[12]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_11 (.I(Digit4_c_11), .O(Digit4[11]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_10 (.I(Digit4_c_10), .O(Digit4[10]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_9 (.I(Digit4_c_9), .O(Digit4[9]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_8 (.I(Digit4_c_8), .O(Digit4[8]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_7 (.I(Digit4_c_7), .O(Digit4[7]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_6 (.I(Digit4_c_6), .O(Digit4[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_5 (.I(Digit4_c_5), .O(Digit4[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_4 (.I(Digit4_c_4), .O(Digit4[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_3 (.I(Digit4_c_3), .O(Digit4[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_2 (.I(Digit4_c_2), .O(Digit4[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_1 (.I(Digit4_c_1), .O(Digit4[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB Digit4_pad_0 (.I(Digit4_c_0), .O(Digit4[0]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(14[8:14])
    OB heartbeat_pad (.I(heartbeat_c), .O(heartbeat));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(15[9:18])
    IB pwm_pad (.I(pwm), .O(pwm_c));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(17[7:10])
    IB latch_pad (.I(latch), .O(latch_c));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(18[8:13])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(19[7:10])
    IB data_pad (.I(data), .O(data_c));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(20[7:11])
    OFS1P3IX Digit1__i1 (.D(LEDS1[0]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_0));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i1.GSR = "ENABLED";
    OFS1P3IX Digit1__i2 (.D(LEDS1[1]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_1));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i2.GSR = "ENABLED";
    OFS1P3IX Digit1__i3 (.D(LEDS1[2]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_2));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i3.GSR = "ENABLED";
    OFS1P3IX Digit1__i4 (.D(LEDS1[3]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_3));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i4.GSR = "ENABLED";
    OFS1P3IX Digit1__i5 (.D(LEDS1[4]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_4));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i5.GSR = "ENABLED";
    OFS1P3IX Digit1__i6 (.D(LEDS1[5]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_5));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i6.GSR = "ENABLED";
    OFS1P3IX Digit1__i7 (.D(LEDS1[6]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_6));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i7.GSR = "ENABLED";
    OFS1P3IX Digit1__i8 (.D(LEDS1[7]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_7));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i8.GSR = "ENABLED";
    OFS1P3IX Digit1__i9 (.D(LEDS1[8]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_8));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i9.GSR = "ENABLED";
    OFS1P3IX Digit1__i10 (.D(LEDS1[9]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_9));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i10.GSR = "ENABLED";
    OFS1P3IX Digit1__i11 (.D(LEDS1[10]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_10));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i11.GSR = "ENABLED";
    OFS1P3IX Digit1__i12 (.D(LEDS1[11]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_11));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i12.GSR = "ENABLED";
    OFS1P3IX Digit1__i13 (.D(LEDS1[12]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_12));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i13.GSR = "ENABLED";
    OFS1P3IX Digit1__i14 (.D(LEDS1[13]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_13));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i14.GSR = "ENABLED";
    OFS1P3IX Digit1__i15 (.D(LEDS1[14]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_14));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i15.GSR = "ENABLED";
    OFS1P3IX Digit1__i16 (.D(LEDS1[15]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_15));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i16.GSR = "ENABLED";
    OFS1P3IX Digit1__i17 (.D(LEDS1[16]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_16));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i17.GSR = "ENABLED";
    OFS1P3IX Digit1__i18 (.D(LEDS1[17]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_17));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i18.GSR = "ENABLED";
    OFS1P3IX Digit1__i19 (.D(LEDS1[18]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_18));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i19.GSR = "ENABLED";
    OFS1P3IX Digit1__i20 (.D(LEDS1[19]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_19));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i20.GSR = "ENABLED";
    OFS1P3IX Digit2__i1 (.D(LEDS2[0]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_0));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i1.GSR = "ENABLED";
    OFS1P3IX Digit2__i2 (.D(LEDS2[1]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_1));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i2.GSR = "ENABLED";
    OFS1P3IX Digit2__i3 (.D(LEDS2[2]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_2));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i3.GSR = "ENABLED";
    OFS1P3IX Digit2__i4 (.D(LEDS2[3]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_3));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i4.GSR = "ENABLED";
    OFS1P3IX Digit2__i5 (.D(LEDS2[4]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_4));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i5.GSR = "ENABLED";
    OFS1P3IX Digit2__i6 (.D(LEDS2[5]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_5));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i6.GSR = "ENABLED";
    OFS1P3IX Digit2__i7 (.D(LEDS2[6]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_6));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i7.GSR = "ENABLED";
    OFS1P3IX Digit2__i8 (.D(LEDS2[7]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_7));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i8.GSR = "ENABLED";
    OFS1P3IX Digit2__i9 (.D(LEDS2[8]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_8));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i9.GSR = "ENABLED";
    OFS1P3IX Digit2__i10 (.D(LEDS2[9]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_9));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i10.GSR = "ENABLED";
    OFS1P3IX Digit2__i11 (.D(LEDS2[10]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_10));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i11.GSR = "ENABLED";
    OFS1P3IX Digit2__i12 (.D(LEDS2[11]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_11));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i12.GSR = "ENABLED";
    OFS1P3IX Digit2__i13 (.D(LEDS2[12]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_12));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i13.GSR = "ENABLED";
    OFS1P3IX Digit2__i14 (.D(LEDS2[13]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_13));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i14.GSR = "ENABLED";
    OFS1P3IX Digit2__i15 (.D(LEDS2[14]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_14));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i15.GSR = "ENABLED";
    OFS1P3IX Digit2__i16 (.D(LEDS2[15]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_15));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i16.GSR = "ENABLED";
    OFS1P3IX Digit2__i17 (.D(LEDS2[16]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_16));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i17.GSR = "ENABLED";
    OFS1P3IX Digit2__i18 (.D(LEDS2[17]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_17));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i18.GSR = "ENABLED";
    OFS1P3IX Digit2__i19 (.D(LEDS2[18]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_18));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i19.GSR = "ENABLED";
    OFS1P3IX Digit2__i20 (.D(LEDS2[19]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit2_c_19));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit2__i20.GSR = "ENABLED";
    LUT4 GrnD4_6__I_0_i5_2_lut (.A(GrnD4[4]), .B(Seg[4]), .Z(LEDS4[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[26:39])
    defparam GrnD4_6__I_0_i5_2_lut.init = 16'h8888;
    LUT4 ledA4_6__I_0_i6_2_lut (.A(ledA4[5]), .B(Led[5]), .Z(LEDS4[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(89[40:53])
    defparam ledA4_6__I_0_i6_2_lut.init = 16'h8888;
    VLO i1 (.Z(GND_net));
    FD1S3AX tmp_i3 (.D(tmp[1]), .CK(clk_c), .Q(tmp[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i3.GSR = "ENABLED";
    FD1S3AX tmp_i4 (.D(tmp[2]), .CK(clk_c), .Q(tmp[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i4.GSR = "ENABLED";
    FD1S3AX tmp_i5 (.D(tmp[3]), .CK(clk_c), .Q(tmp[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i5.GSR = "ENABLED";
    FD1S3AX tmp_i6 (.D(tmp[4]), .CK(clk_c), .Q(tmp[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i6.GSR = "ENABLED";
    FD1S3AX tmp_i7 (.D(tmp[5]), .CK(clk_c), .Q(tmp[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i7.GSR = "ENABLED";
    FD1S3AX tmp_i8 (.D(tmp[6]), .CK(clk_c), .Q(tmp[7]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i8.GSR = "ENABLED";
    FD1S3AX tmp_i9 (.D(tmp[7]), .CK(clk_c), .Q(tmp[8]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i9.GSR = "ENABLED";
    FD1S3AX tmp_i10 (.D(tmp[8]), .CK(clk_c), .Q(tmp[9]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i10.GSR = "ENABLED";
    FD1S3AX tmp_i11 (.D(tmp[9]), .CK(clk_c), .Q(tmp[10]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i11.GSR = "ENABLED";
    FD1S3AX tmp_i12 (.D(tmp[10]), .CK(clk_c), .Q(tmp[11]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i12.GSR = "ENABLED";
    FD1S3AX tmp_i13 (.D(tmp[11]), .CK(clk_c), .Q(tmp[12]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i13.GSR = "ENABLED";
    FD1S3AX tmp_i14 (.D(tmp[12]), .CK(clk_c), .Q(tmp[13]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i14.GSR = "ENABLED";
    FD1S3AX tmp_i15 (.D(tmp[13]), .CK(clk_c), .Q(tmp[14]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i15.GSR = "ENABLED";
    FD1S3AX tmp_i16 (.D(tmp[14]), .CK(clk_c), .Q(tmp[15]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i16.GSR = "ENABLED";
    FD1S3AX tmp_i17 (.D(tmp[15]), .CK(clk_c), .Q(tmp[16]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i17.GSR = "ENABLED";
    FD1S3AX tmp_i18 (.D(tmp[16]), .CK(clk_c), .Q(tmp[17]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i18.GSR = "ENABLED";
    FD1S3AX tmp_i19 (.D(tmp[17]), .CK(clk_c), .Q(tmp[18]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i19.GSR = "ENABLED";
    FD1S3AX tmp_i20 (.D(tmp[18]), .CK(clk_c), .Q(tmp[19]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i20.GSR = "ENABLED";
    FD1S3AX tmp_i21 (.D(tmp[19]), .CK(clk_c), .Q(tmp[20]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i21.GSR = "ENABLED";
    FD1S3AX tmp_i22 (.D(tmp[20]), .CK(clk_c), .Q(tmp[21]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i22.GSR = "ENABLED";
    FD1S3AX tmp_i23 (.D(tmp[21]), .CK(clk_c), .Q(tmp[22]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i23.GSR = "ENABLED";
    FD1S3AX tmp_i24 (.D(tmp[22]), .CK(clk_c), .Q(tmp[23]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i24.GSR = "ENABLED";
    FD1S3AX tmp_i25 (.D(tmp[23]), .CK(clk_c), .Q(tmp[24]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i25.GSR = "ENABLED";
    FD1S3AX tmp_i26 (.D(tmp[24]), .CK(clk_c), .Q(tmp[25]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i26.GSR = "ENABLED";
    FD1S3AX tmp_i27 (.D(tmp[25]), .CK(clk_c), .Q(tmp[26]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i27.GSR = "ENABLED";
    FD1S3AX tmp_i28 (.D(tmp[26]), .CK(clk_c), .Q(tmp[27]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i28.GSR = "ENABLED";
    FD1S3AX tmp_i29 (.D(tmp[27]), .CK(clk_c), .Q(tmp[28]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i29.GSR = "ENABLED";
    FD1S3AX tmp_i30 (.D(tmp[28]), .CK(clk_c), .Q(tmp[29]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i30.GSR = "ENABLED";
    FD1S3AX tmp_i31 (.D(tmp[29]), .CK(clk_c), .Q(tmp[30]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i31.GSR = "ENABLED";
    FD1S3AX tmp_i32 (.D(tmp[30]), .CK(clk_c), .Q(tmp[31]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i32.GSR = "ENABLED";
    FD1S3AX tmp_i33 (.D(tmp[31]), .CK(clk_c), .Q(tmp[32]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i33.GSR = "ENABLED";
    FD1S3AX tmp_i34 (.D(tmp[32]), .CK(clk_c), .Q(tmp[33]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i34.GSR = "ENABLED";
    FD1S3AX tmp_i35 (.D(tmp[33]), .CK(clk_c), .Q(tmp[34]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i35.GSR = "ENABLED";
    FD1S3AX tmp_i36 (.D(tmp[34]), .CK(clk_c), .Q(tmp[35]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i36.GSR = "ENABLED";
    FD1S3AX tmp_i37 (.D(tmp[35]), .CK(clk_c), .Q(tmp[36]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i37.GSR = "ENABLED";
    FD1S3AX tmp_i38 (.D(tmp[36]), .CK(clk_c), .Q(tmp[37]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i38.GSR = "ENABLED";
    FD1S3AX tmp_i39 (.D(tmp[37]), .CK(clk_c), .Q(tmp[38]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i39.GSR = "ENABLED";
    FD1S3AX tmp_i40 (.D(tmp[38]), .CK(clk_c), .Q(tmp[39]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i40.GSR = "ENABLED";
    FD1S3AX tmp_i41 (.D(tmp[39]), .CK(clk_c), .Q(tmp[40]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i41.GSR = "ENABLED";
    FD1S3AX tmp_i42 (.D(tmp[40]), .CK(clk_c), .Q(tmp[41]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i42.GSR = "ENABLED";
    FD1S3AX tmp_i43 (.D(tmp[41]), .CK(clk_c), .Q(tmp[42]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i43.GSR = "ENABLED";
    FD1S3AX tmp_i44 (.D(tmp[42]), .CK(clk_c), .Q(tmp[43]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i44.GSR = "ENABLED";
    FD1S3AX tmp_i45 (.D(tmp[43]), .CK(clk_c), .Q(tmp[44]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i45.GSR = "ENABLED";
    FD1S3AX tmp_i46 (.D(tmp[44]), .CK(clk_c), .Q(tmp[45]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i46.GSR = "ENABLED";
    FD1S3AX tmp_i47 (.D(tmp[45]), .CK(clk_c), .Q(tmp[46]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i47.GSR = "ENABLED";
    FD1S3AX tmp_i48 (.D(tmp[46]), .CK(clk_c), .Q(tmp[47]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i48.GSR = "ENABLED";
    FD1S3AX tmp_i49 (.D(tmp[47]), .CK(clk_c), .Q(tmp[48]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i49.GSR = "ENABLED";
    FD1S3AX tmp_i50 (.D(tmp[48]), .CK(clk_c), .Q(tmp[49]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i50.GSR = "ENABLED";
    FD1S3AX tmp_i51 (.D(tmp[49]), .CK(clk_c), .Q(tmp[50]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i51.GSR = "ENABLED";
    FD1S3AX tmp_i52 (.D(tmp[50]), .CK(clk_c), .Q(tmp[51]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i52.GSR = "ENABLED";
    FD1S3AX tmp_i53 (.D(tmp[51]), .CK(clk_c), .Q(tmp[52]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i53.GSR = "ENABLED";
    FD1S3AX tmp_i54 (.D(tmp[52]), .CK(clk_c), .Q(tmp[53]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i54.GSR = "ENABLED";
    FD1S3AX tmp_i55 (.D(tmp[53]), .CK(clk_c), .Q(tmp[54]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i55.GSR = "ENABLED";
    FD1S3AX tmp_i56 (.D(tmp[54]), .CK(clk_c), .Q(tmp[55]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i56.GSR = "ENABLED";
    FD1S3AX tmp_i57 (.D(tmp[55]), .CK(clk_c), .Q(tmp[56]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i57.GSR = "ENABLED";
    FD1S3AX tmp_i58 (.D(tmp[56]), .CK(clk_c), .Q(tmp[57]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i58.GSR = "ENABLED";
    FD1S3AX tmp_i59 (.D(tmp[57]), .CK(clk_c), .Q(tmp[58]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i59.GSR = "ENABLED";
    FD1S3AX tmp_i60 (.D(tmp[58]), .CK(clk_c), .Q(tmp[59]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i60.GSR = "ENABLED";
    FD1S3AX tmp_i61 (.D(tmp[59]), .CK(clk_c), .Q(tmp[60]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i61.GSR = "ENABLED";
    FD1S3AX tmp_i62 (.D(tmp[60]), .CK(clk_c), .Q(tmp[61]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i62.GSR = "ENABLED";
    FD1S3AX tmp_i63 (.D(tmp[61]), .CK(clk_c), .Q(tmp[62]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i63.GSR = "ENABLED";
    FD1S3AX tmp_i64 (.D(tmp[62]), .CK(clk_c), .Q(tmp[63]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i64.GSR = "ENABLED";
    FD1S3AX tmp_i65 (.D(tmp[63]), .CK(clk_c), .Q(tmp[64]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i65.GSR = "ENABLED";
    FD1S3AX tmp_i66 (.D(tmp[64]), .CK(clk_c), .Q(tmp[65]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i66.GSR = "ENABLED";
    FD1S3AX tmp_i67 (.D(tmp[65]), .CK(clk_c), .Q(tmp[66]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i67.GSR = "ENABLED";
    FD1S3AX tmp_i68 (.D(tmp[66]), .CK(clk_c), .Q(tmp[67]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i68.GSR = "ENABLED";
    FD1S3AX tmp_i69 (.D(tmp[67]), .CK(clk_c), .Q(tmp[68]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i69.GSR = "ENABLED";
    FD1S3AX tmp_i70 (.D(tmp[68]), .CK(clk_c), .Q(tmp[69]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i70.GSR = "ENABLED";
    FD1S3AX tmp_i71 (.D(tmp[69]), .CK(clk_c), .Q(tmp[70]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i71.GSR = "ENABLED";
    FD1S3AX tmp_i72 (.D(tmp[70]), .CK(clk_c), .Q(tmp[71]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i72.GSR = "ENABLED";
    FD1S3AX tmp_i73 (.D(tmp[71]), .CK(clk_c), .Q(tmp[72]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i73.GSR = "ENABLED";
    FD1S3AX tmp_i74 (.D(tmp[72]), .CK(clk_c), .Q(tmp[73]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i74.GSR = "ENABLED";
    FD1S3AX tmp_i75 (.D(tmp[73]), .CK(clk_c), .Q(tmp[74]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i75.GSR = "ENABLED";
    FD1S3AX tmp_i76 (.D(tmp[74]), .CK(clk_c), .Q(tmp[75]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i76.GSR = "ENABLED";
    FD1S3AX tmp_i77 (.D(tmp[75]), .CK(clk_c), .Q(tmp[76]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i77.GSR = "ENABLED";
    FD1S3AX tmp_i78 (.D(tmp[76]), .CK(clk_c), .Q(tmp[77]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i78.GSR = "ENABLED";
    FD1S3AX tmp_i79 (.D(tmp[77]), .CK(clk_c), .Q(tmp[78]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i79.GSR = "ENABLED";
    FD1S3AX tmp_i80 (.D(tmp[78]), .CK(clk_c), .Q(tmp[79]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i80.GSR = "ENABLED";
    FD1S3AX tmp_i81 (.D(tmp[79]), .CK(clk_c), .Q(tmp[80]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i81.GSR = "ENABLED";
    FD1S3AX tmp_i82 (.D(tmp[80]), .CK(clk_c), .Q(tmp[81]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i82.GSR = "ENABLED";
    FD1S3AX tmp_i83 (.D(tmp[81]), .CK(clk_c), .Q(tmp[82]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i83.GSR = "ENABLED";
    FD1S3AX tmp_i84 (.D(tmp[82]), .CK(clk_c), .Q(tmp[83]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i84.GSR = "ENABLED";
    FD1S3AX tmp_i85 (.D(tmp[83]), .CK(clk_c), .Q(tmp[84]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i85.GSR = "ENABLED";
    FD1S3AX tmp_i86 (.D(tmp[84]), .CK(clk_c), .Q(tmp[85]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i86.GSR = "ENABLED";
    FD1S3AX tmp_i87 (.D(tmp[85]), .CK(clk_c), .Q(tmp[86]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i87.GSR = "ENABLED";
    FD1S3AX tmp_i88 (.D(tmp[86]), .CK(clk_c), .Q(tmp[87]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i88.GSR = "ENABLED";
    FD1S3AX tmp_i89 (.D(tmp[87]), .CK(clk_c), .Q(tmp[88]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i89.GSR = "ENABLED";
    FD1S3AX tmp_i90 (.D(tmp[88]), .CK(clk_c), .Q(tmp[89]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i90.GSR = "ENABLED";
    FD1S3AX tmp_i91 (.D(tmp[89]), .CK(clk_c), .Q(tmp[90]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i91.GSR = "ENABLED";
    FD1S3AX tmp_i92 (.D(tmp[90]), .CK(clk_c), .Q(tmp[91]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i92.GSR = "ENABLED";
    FD1S3AX tmp_i93 (.D(tmp[91]), .CK(clk_c), .Q(tmp[92]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i93.GSR = "ENABLED";
    FD1S3AX tmp_i94 (.D(tmp[92]), .CK(clk_c), .Q(tmp[93]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i94.GSR = "ENABLED";
    FD1S3AX tmp_i95 (.D(tmp[93]), .CK(clk_c), .Q(tmp[94]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(104[8] 107[4])
    defparam tmp_i95.GSR = "ENABLED";
    FD1S3AX RedD4_i1 (.D(tmp[89]), .CK(latch_c), .Q(RedD4[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD4_i1.GSR = "ENABLED";
    FD1S3AX RedD4_i2 (.D(tmp[90]), .CK(latch_c), .Q(RedD4[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD4_i2.GSR = "ENABLED";
    FD1S3AX RedD4_i3 (.D(tmp[91]), .CK(latch_c), .Q(RedD4[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD4_i3.GSR = "ENABLED";
    FD1S3AX RedD4_i4 (.D(tmp[92]), .CK(latch_c), .Q(RedD4[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD4_i4.GSR = "ENABLED";
    FD1S3AX RedD4_i5 (.D(tmp[93]), .CK(latch_c), .Q(RedD4[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD4_i5.GSR = "ENABLED";
    FD1S3AX RedD4_i6 (.D(tmp[94]), .CK(latch_c), .Q(RedD4[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD4_i6.GSR = "ENABLED";
    FD1S3AX GrnD4_i1 (.D(tmp[81]), .CK(latch_c), .Q(GrnD4[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD4_i1.GSR = "ENABLED";
    FD1S3AX GrnD4_i2 (.D(tmp[82]), .CK(latch_c), .Q(GrnD4[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD4_i2.GSR = "ENABLED";
    FD1S3AX GrnD4_i3 (.D(tmp[83]), .CK(latch_c), .Q(GrnD4[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD4_i3.GSR = "ENABLED";
    FD1S3AX GrnD4_i4 (.D(tmp[84]), .CK(latch_c), .Q(GrnD4[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD4_i4.GSR = "ENABLED";
    FD1S3AX GrnD4_i5 (.D(tmp[85]), .CK(latch_c), .Q(GrnD4[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD4_i5.GSR = "ENABLED";
    FD1S3AX GrnD4_i6 (.D(tmp[86]), .CK(latch_c), .Q(GrnD4[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD4_i6.GSR = "ENABLED";
    FD1S3AX ledA4_i1 (.D(tmp[73]), .CK(latch_c), .Q(ledA4[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA4_i1.GSR = "ENABLED";
    FD1S3AX ledA4_i2 (.D(tmp[74]), .CK(latch_c), .Q(ledA4[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA4_i2.GSR = "ENABLED";
    FD1S3AX ledA4_i3 (.D(tmp[75]), .CK(latch_c), .Q(ledA4[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA4_i3.GSR = "ENABLED";
    FD1S3AX ledA4_i4 (.D(tmp[76]), .CK(latch_c), .Q(ledA4[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA4_i4.GSR = "ENABLED";
    FD1S3AX ledA4_i5 (.D(tmp[77]), .CK(latch_c), .Q(ledA4[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA4_i5.GSR = "ENABLED";
    FD1S3AX ledA4_i6 (.D(tmp[78]), .CK(latch_c), .Q(ledA4[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA4_i6.GSR = "ENABLED";
    FD1S3AX RedD3_i1 (.D(tmp[65]), .CK(latch_c), .Q(RedD3[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD3_i1.GSR = "ENABLED";
    FD1S3AX RedD3_i2 (.D(tmp[66]), .CK(latch_c), .Q(RedD3[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD3_i2.GSR = "ENABLED";
    FD1S3AX RedD3_i3 (.D(tmp[67]), .CK(latch_c), .Q(RedD3[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD3_i3.GSR = "ENABLED";
    FD1S3AX RedD3_i4 (.D(tmp[68]), .CK(latch_c), .Q(RedD3[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD3_i4.GSR = "ENABLED";
    FD1S3AX RedD3_i5 (.D(tmp[69]), .CK(latch_c), .Q(RedD3[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD3_i5.GSR = "ENABLED";
    FD1S3AX RedD3_i6 (.D(tmp[70]), .CK(latch_c), .Q(RedD3[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD3_i6.GSR = "ENABLED";
    FD1S3AX GrnD3_i1 (.D(tmp[57]), .CK(latch_c), .Q(GrnD3[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD3_i1.GSR = "ENABLED";
    FD1S3AX GrnD3_i2 (.D(tmp[58]), .CK(latch_c), .Q(GrnD3[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD3_i2.GSR = "ENABLED";
    FD1S3AX GrnD3_i3 (.D(tmp[59]), .CK(latch_c), .Q(GrnD3[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD3_i3.GSR = "ENABLED";
    FD1S3AX GrnD3_i4 (.D(tmp[60]), .CK(latch_c), .Q(GrnD3[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD3_i4.GSR = "ENABLED";
    FD1S3AX GrnD3_i5 (.D(tmp[61]), .CK(latch_c), .Q(GrnD3[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD3_i5.GSR = "ENABLED";
    FD1S3AX GrnD3_i6 (.D(tmp[62]), .CK(latch_c), .Q(GrnD3[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD3_i6.GSR = "ENABLED";
    FD1S3AX ledA3_i1 (.D(tmp[49]), .CK(latch_c), .Q(ledA3[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA3_i1.GSR = "ENABLED";
    FD1S3AX ledA3_i2 (.D(tmp[50]), .CK(latch_c), .Q(ledA3[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA3_i2.GSR = "ENABLED";
    FD1S3AX ledA3_i3 (.D(tmp[51]), .CK(latch_c), .Q(ledA3[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA3_i3.GSR = "ENABLED";
    FD1S3AX ledA3_i4 (.D(tmp[52]), .CK(latch_c), .Q(ledA3[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA3_i4.GSR = "ENABLED";
    FD1S3AX ledA3_i5 (.D(tmp[53]), .CK(latch_c), .Q(ledA3[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA3_i5.GSR = "ENABLED";
    FD1S3AX ledA3_i6 (.D(tmp[54]), .CK(latch_c), .Q(ledA3[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA3_i6.GSR = "ENABLED";
    FD1S3AX RedD2_i1 (.D(tmp[41]), .CK(latch_c), .Q(RedD2[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD2_i1.GSR = "ENABLED";
    FD1S3AX RedD2_i2 (.D(tmp[42]), .CK(latch_c), .Q(RedD2[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD2_i2.GSR = "ENABLED";
    FD1S3AX RedD2_i3 (.D(tmp[43]), .CK(latch_c), .Q(RedD2[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD2_i3.GSR = "ENABLED";
    FD1S3AX RedD2_i4 (.D(tmp[44]), .CK(latch_c), .Q(RedD2[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD2_i4.GSR = "ENABLED";
    FD1S3AX RedD2_i5 (.D(tmp[45]), .CK(latch_c), .Q(RedD2[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD2_i5.GSR = "ENABLED";
    FD1S3AX RedD2_i6 (.D(tmp[46]), .CK(latch_c), .Q(RedD2[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD2_i6.GSR = "ENABLED";
    FD1S3AX GrnD2_i1 (.D(tmp[33]), .CK(latch_c), .Q(GrnD2[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD2_i1.GSR = "ENABLED";
    FD1S3AX GrnD2_i2 (.D(tmp[34]), .CK(latch_c), .Q(GrnD2[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD2_i2.GSR = "ENABLED";
    FD1S3AX GrnD2_i3 (.D(tmp[35]), .CK(latch_c), .Q(GrnD2[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD2_i3.GSR = "ENABLED";
    FD1S3AX GrnD2_i4 (.D(tmp[36]), .CK(latch_c), .Q(GrnD2[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD2_i4.GSR = "ENABLED";
    FD1S3AX GrnD2_i5 (.D(tmp[37]), .CK(latch_c), .Q(GrnD2[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD2_i5.GSR = "ENABLED";
    FD1S3AX GrnD2_i6 (.D(tmp[38]), .CK(latch_c), .Q(GrnD2[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD2_i6.GSR = "ENABLED";
    FD1S3AX ledA2_i1 (.D(tmp[25]), .CK(latch_c), .Q(ledA2[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA2_i1.GSR = "ENABLED";
    FD1S3AX ledA2_i2 (.D(tmp[26]), .CK(latch_c), .Q(ledA2[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA2_i2.GSR = "ENABLED";
    FD1S3AX ledA2_i3 (.D(tmp[27]), .CK(latch_c), .Q(ledA2[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA2_i3.GSR = "ENABLED";
    FD1S3AX ledA2_i4 (.D(tmp[28]), .CK(latch_c), .Q(ledA2[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA2_i4.GSR = "ENABLED";
    FD1S3AX ledA2_i5 (.D(tmp[29]), .CK(latch_c), .Q(ledA2[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA2_i5.GSR = "ENABLED";
    FD1S3AX ledA2_i6 (.D(tmp[30]), .CK(latch_c), .Q(ledA2[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA2_i6.GSR = "ENABLED";
    FD1S3AX RedD1_i1 (.D(tmp[17]), .CK(latch_c), .Q(RedD1[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD1_i1.GSR = "ENABLED";
    FD1S3AX RedD1_i2 (.D(tmp[18]), .CK(latch_c), .Q(RedD1[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD1_i2.GSR = "ENABLED";
    FD1S3AX RedD1_i3 (.D(tmp[19]), .CK(latch_c), .Q(RedD1[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD1_i3.GSR = "ENABLED";
    FD1S3AX RedD1_i4 (.D(tmp[20]), .CK(latch_c), .Q(RedD1[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD1_i4.GSR = "ENABLED";
    FD1S3AX RedD1_i5 (.D(tmp[21]), .CK(latch_c), .Q(RedD1[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD1_i5.GSR = "ENABLED";
    FD1S3AX RedD1_i6 (.D(tmp[22]), .CK(latch_c), .Q(RedD1[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam RedD1_i6.GSR = "ENABLED";
    FD1S3AX GrnD1_i1 (.D(tmp[9]), .CK(latch_c), .Q(GrnD1[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD1_i1.GSR = "ENABLED";
    FD1S3AX GrnD1_i2 (.D(tmp[10]), .CK(latch_c), .Q(GrnD1[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD1_i2.GSR = "ENABLED";
    FD1S3AX GrnD1_i3 (.D(tmp[11]), .CK(latch_c), .Q(GrnD1[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD1_i3.GSR = "ENABLED";
    FD1S3AX GrnD1_i4 (.D(tmp[12]), .CK(latch_c), .Q(GrnD1[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD1_i4.GSR = "ENABLED";
    FD1S3AX GrnD1_i5 (.D(tmp[13]), .CK(latch_c), .Q(GrnD1[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD1_i5.GSR = "ENABLED";
    FD1S3AX GrnD1_i6 (.D(tmp[14]), .CK(latch_c), .Q(GrnD1[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam GrnD1_i6.GSR = "ENABLED";
    FD1S3AX ledA1_i1 (.D(tmp[1]), .CK(latch_c), .Q(ledA1[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA1_i1.GSR = "ENABLED";
    FD1S3AX ledA1_i2 (.D(tmp[2]), .CK(latch_c), .Q(ledA1[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA1_i2.GSR = "ENABLED";
    FD1S3AX ledA1_i3 (.D(tmp[3]), .CK(latch_c), .Q(ledA1[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA1_i3.GSR = "ENABLED";
    FD1S3AX ledA1_i4 (.D(tmp[4]), .CK(latch_c), .Q(ledA1[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA1_i4.GSR = "ENABLED";
    FD1S3AX ledA1_i5 (.D(tmp[5]), .CK(latch_c), .Q(ledA1[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA1_i5.GSR = "ENABLED";
    FD1S3AX ledA1_i6 (.D(tmp[6]), .CK(latch_c), .Q(ledA1[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(110[8] 127[4])
    defparam ledA1_i6.GSR = "ENABLED";
    FD1S3AX bright_i1 (.D(tmp[1]), .CK(pwm_c), .Q(bright[1]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i1.GSR = "ENABLED";
    FD1S3AX bright_i2 (.D(tmp[2]), .CK(pwm_c), .Q(bright[2]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i2.GSR = "ENABLED";
    FD1S3AX bright_i3 (.D(tmp[3]), .CK(pwm_c), .Q(bright[3]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i3.GSR = "ENABLED";
    FD1S3AX bright_i4 (.D(tmp[4]), .CK(pwm_c), .Q(bright[4]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i4.GSR = "ENABLED";
    FD1S3AX bright_i5 (.D(tmp[5]), .CK(pwm_c), .Q(bright[5]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i5.GSR = "ENABLED";
    FD1S3AX bright_i6 (.D(tmp[6]), .CK(pwm_c), .Q(bright[6]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i6.GSR = "ENABLED";
    FD1S3AX bright_i7 (.D(tmp[7]), .CK(pwm_c), .Q(bright[7]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i7.GSR = "ENABLED";
    FD1S3AX bright_i8 (.D(tmp[8]), .CK(pwm_c), .Q(bright[8]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i8.GSR = "ENABLED";
    FD1S3AX bright_i9 (.D(tmp[9]), .CK(pwm_c), .Q(bright[9]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i9.GSR = "ENABLED";
    FD1S3AX bright_i10 (.D(tmp[10]), .CK(pwm_c), .Q(bright[10]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i10.GSR = "ENABLED";
    FD1S3AX bright_i11 (.D(tmp[11]), .CK(pwm_c), .Q(bright[11]));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(130[8] 132[4])
    defparam bright_i11.GSR = "ENABLED";
    FD1S3AX cnt_93__i1 (.D(n64), .CK(osc_clk_c_c), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i1.GSR = "ENABLED";
    OFS1P3IX Digit3__i1 (.D(LEDS3[0]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_0));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i1.GSR = "ENABLED";
    OFS1P3IX Digit3__i2 (.D(LEDS3[1]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_1));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i2.GSR = "ENABLED";
    OFS1P3IX Digit3__i3 (.D(LEDS3[2]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_2));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i3.GSR = "ENABLED";
    OFS1P3IX Digit3__i4 (.D(LEDS3[3]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_3));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i4.GSR = "ENABLED";
    OFS1P3IX Digit3__i5 (.D(LEDS3[4]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_4));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i5.GSR = "ENABLED";
    OFS1P3IX Digit3__i6 (.D(LEDS3[5]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_5));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i6.GSR = "ENABLED";
    OFS1P3IX Digit3__i7 (.D(LEDS3[6]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_6));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i7.GSR = "ENABLED";
    OFS1P3IX Digit3__i8 (.D(LEDS3[7]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_7));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i8.GSR = "ENABLED";
    OFS1P3IX Digit3__i9 (.D(LEDS3[8]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_8));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i9.GSR = "ENABLED";
    OFS1P3IX Digit3__i10 (.D(LEDS3[9]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_9));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i10.GSR = "ENABLED";
    OFS1P3IX Digit3__i11 (.D(LEDS3[10]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_10));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i11.GSR = "ENABLED";
    OFS1P3IX Digit3__i12 (.D(LEDS3[11]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_11));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i12.GSR = "ENABLED";
    OFS1P3IX Digit3__i13 (.D(LEDS3[12]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_12));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i13.GSR = "ENABLED";
    OFS1P3IX Digit3__i14 (.D(LEDS3[13]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_13));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i14.GSR = "ENABLED";
    OFS1P3IX Digit3__i15 (.D(LEDS3[14]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_14));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i15.GSR = "ENABLED";
    OFS1P3IX Digit3__i16 (.D(LEDS3[15]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_15));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i16.GSR = "ENABLED";
    OFS1P3IX Digit3__i17 (.D(LEDS3[16]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_16));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i17.GSR = "ENABLED";
    OFS1P3IX Digit3__i18 (.D(LEDS3[17]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_17));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i18.GSR = "ENABLED";
    OFS1P3IX Digit3__i19 (.D(LEDS3[18]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_18));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i19.GSR = "ENABLED";
    OFS1P3IX Digit3__i20 (.D(LEDS3[19]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit3_c_19));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit3__i20.GSR = "ENABLED";
    CCU2D sub_87_add_2_13 (.A0(bright[11]), .B0(cnt[11]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n979), .S1(heartbeat_N_120));
    defparam sub_87_add_2_13.INIT0 = 16'h5999;
    defparam sub_87_add_2_13.INIT1 = 16'h0000;
    defparam sub_87_add_2_13.INJECT1_0 = "NO";
    defparam sub_87_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_87_add_2_11 (.A0(bright[9]), .B0(cnt[9]), .C0(GND_net), 
          .D0(GND_net), .A1(bright[10]), .B1(cnt[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n978), .COUT(n979));
    defparam sub_87_add_2_11.INIT0 = 16'h5999;
    defparam sub_87_add_2_11.INIT1 = 16'h5999;
    defparam sub_87_add_2_11.INJECT1_0 = "NO";
    defparam sub_87_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_87_add_2_9 (.A0(bright[7]), .B0(cnt[7]), .C0(GND_net), .D0(GND_net), 
          .A1(bright[8]), .B1(cnt[8]), .C1(GND_net), .D1(GND_net), .CIN(n977), 
          .COUT(n978));
    defparam sub_87_add_2_9.INIT0 = 16'h5999;
    defparam sub_87_add_2_9.INIT1 = 16'h5999;
    defparam sub_87_add_2_9.INJECT1_0 = "NO";
    defparam sub_87_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_87_add_2_7 (.A0(bright[5]), .B0(cnt[5]), .C0(GND_net), .D0(GND_net), 
          .A1(bright[6]), .B1(cnt[6]), .C1(GND_net), .D1(GND_net), .CIN(n976), 
          .COUT(n977));
    defparam sub_87_add_2_7.INIT0 = 16'h5999;
    defparam sub_87_add_2_7.INIT1 = 16'h5999;
    defparam sub_87_add_2_7.INJECT1_0 = "NO";
    defparam sub_87_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_87_add_2_5 (.A0(bright[3]), .B0(cnt[3]), .C0(GND_net), .D0(GND_net), 
          .A1(bright[4]), .B1(cnt[4]), .C1(GND_net), .D1(GND_net), .CIN(n975), 
          .COUT(n976));
    defparam sub_87_add_2_5.INIT0 = 16'h5999;
    defparam sub_87_add_2_5.INIT1 = 16'h5999;
    defparam sub_87_add_2_5.INJECT1_0 = "NO";
    defparam sub_87_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_87_add_2_3 (.A0(bright[1]), .B0(cnt[1]), .C0(GND_net), .D0(GND_net), 
          .A1(bright[2]), .B1(cnt[2]), .C1(GND_net), .D1(GND_net), .CIN(n974), 
          .COUT(n975));
    defparam sub_87_add_2_3.INIT0 = 16'h5999;
    defparam sub_87_add_2_3.INIT1 = 16'h5999;
    defparam sub_87_add_2_3.INJECT1_0 = "NO";
    defparam sub_87_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_87_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bright[0]), .B1(cnt[0]), .C1(GND_net), .D1(GND_net), .COUT(n974));
    defparam sub_87_add_2_1.INIT0 = 16'h0000;
    defparam sub_87_add_2_1.INIT1 = 16'h5999;
    defparam sub_87_add_2_1.INJECT1_0 = "NO";
    defparam sub_87_add_2_1.INJECT1_1 = "NO";
    CCU2D cnt_93_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n973), 
          .S0(n54));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_93_add_4_13.INIT1 = 16'h0000;
    defparam cnt_93_add_4_13.INJECT1_0 = "NO";
    defparam cnt_93_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_93_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n972), 
          .COUT(n973), .S0(n56), .S1(n55));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_93_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_93_add_4_11.INJECT1_0 = "NO";
    defparam cnt_93_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_93_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n971), 
          .COUT(n972), .S0(n58), .S1(n57));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_93_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_93_add_4_9.INJECT1_0 = "NO";
    defparam cnt_93_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_93_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n970), 
          .COUT(n971), .S0(n60), .S1(n59));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_93_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_93_add_4_7.INJECT1_0 = "NO";
    defparam cnt_93_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_93_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n969), 
          .COUT(n970), .S0(n62), .S1(n61));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_93_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_93_add_4_5.INJECT1_0 = "NO";
    defparam cnt_93_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_93_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n968), 
          .COUT(n969), .S0(n64), .S1(n63));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_93_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_93_add_4_3.INJECT1_0 = "NO";
    defparam cnt_93_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_93_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n968), 
          .S1(n65));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93_add_4_1.INIT0 = 16'hF000;
    defparam cnt_93_add_4_1.INIT1 = 16'h0555;
    defparam cnt_93_add_4_1.INJECT1_0 = "NO";
    defparam cnt_93_add_4_1.INJECT1_1 = "NO";
    FD1S3AX cnt_93__i2 (.D(n63), .CK(osc_clk_c_c), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i2.GSR = "ENABLED";
    FD1S3AX cnt_93__i3 (.D(n62), .CK(osc_clk_c_c), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i3.GSR = "ENABLED";
    FD1S3AX cnt_93__i4 (.D(n61), .CK(osc_clk_c_c), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i4.GSR = "ENABLED";
    FD1S3AX cnt_93__i5 (.D(n60), .CK(osc_clk_c_c), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i5.GSR = "ENABLED";
    FD1S3AX cnt_93__i6 (.D(n59), .CK(osc_clk_c_c), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i6.GSR = "ENABLED";
    FD1S3AX cnt_93__i7 (.D(n58), .CK(osc_clk_c_c), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i7.GSR = "ENABLED";
    FD1S3AX cnt_93__i8 (.D(n57), .CK(osc_clk_c_c), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i8.GSR = "ENABLED";
    FD1S3AX cnt_93__i9 (.D(n56), .CK(osc_clk_c_c), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i9.GSR = "ENABLED";
    FD1S3AX cnt_93__i10 (.D(n55), .CK(osc_clk_c_c), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i10.GSR = "ENABLED";
    FD1S3AX cnt_93__i11 (.D(n54), .CK(osc_clk_c_c), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(136[8:15])
    defparam cnt_93__i11.GSR = "ENABLED";
    LUT4 i126_2_lut_4_lut (.A(Seg[3]), .B(n10), .C(Seg[4]), .D(Led_6__N_104[0]), 
         .Z(n950)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(98[3] 99[21])
    defparam i126_2_lut_4_lut.init = 16'h0100;
    OFS1P3IX Digit1__i21 (.D(LEDS1[20]), .SP(VCC_net), .SCLK(osc_clk_c_c), 
            .CD(n949), .Q(Digit1_c_20));   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(60[8] 72[4])
    defparam Digit1__i21.GSR = "ENABLED";
    FD1P3IX Seg_i1 (.D(Seg[0]), .SP(Led_6__N_104[0]), .CD(n950), .CK(osc_clk_c_c), 
            .Q(Seg[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Seg_i1.GSR = "ENABLED";
    FD1P3IX Seg_i2 (.D(Seg[1]), .SP(Led_6__N_104[0]), .CD(n950), .CK(osc_clk_c_c), 
            .Q(Seg[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Seg_i2.GSR = "ENABLED";
    FD1P3IX Seg_i3 (.D(Seg[2]), .SP(Led_6__N_104[0]), .CD(n950), .CK(osc_clk_c_c), 
            .Q(Seg[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Seg_i3.GSR = "ENABLED";
    FD1P3IX Seg_i4 (.D(Seg[3]), .SP(Led_6__N_104[0]), .CD(n950), .CK(osc_clk_c_c), 
            .Q(Seg[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Seg_i4.GSR = "ENABLED";
    FD1P3IX Seg_i5 (.D(Seg[4]), .SP(Led_6__N_104[0]), .CD(n950), .CK(osc_clk_c_c), 
            .Q(Seg[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Seg_i5.GSR = "ENABLED";
    FD1P3IX Seg_i6 (.D(Seg[5]), .SP(Led_6__N_104[0]), .CD(n950), .CK(osc_clk_c_c), 
            .Q(Seg[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/justin/dropbox/projects/7segclock/lattice_fpga/sevensegclock/source/autoshift_1.v(93[8] 101[4])
    defparam Seg_i6.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

