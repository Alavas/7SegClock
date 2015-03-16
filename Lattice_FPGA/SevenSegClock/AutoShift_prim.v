// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.3.0.109
// Netlist written on Mon Mar 16 03:27:54 2015
//
// Verilog Description of module AutoShift
//

module AutoShift (Digit1, Digit2, Digit3, Digit4, latch, clk, data, 
            heartbeat) /* synthesis syn_module_defined=1 */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(8[8:17])
    output [19:0]Digit1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    output [19:0]Digit2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    output [19:0]Digit3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    output [19:0]Digit4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    input latch;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(16[8:13])
    input clk;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(17[7:10])
    input data;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(18[7:11])
    output heartbeat;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    
    wire latch_c /* synthesis SET_AS_NETWORK=latch_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(16[8:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(17[7:10])
    wire data_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(18[7:11])
    wire [9:0]n80;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    wire [19:0]Digit1_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    wire [19:0]Digit2_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    wire [19:0]Digit3_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    wire [19:0]Digit4_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    wire [6:0]RedD1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[12:17])
    wire [6:0]RedD2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(28[12:17])
    wire [6:0]RedD3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(29[12:17])
    wire [6:0]RedD4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[12:17])
    wire [6:0]GrnD1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(31[12:17])
    wire [6:0]GrnD2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(32[12:17])
    wire [6:0]GrnD3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(33[12:17])
    wire [6:0]GrnD4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(34[12:17])
    wire [5:0]ledA1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(35[12:17])
    wire [5:0]ledA2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(36[12:17])
    wire [5:0]ledA3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(37[12:17])
    wire [5:0]ledA4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(38[12:17])
    wire [9:0]cnt;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(41[13:16])
    wire [95:0]tmp;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(42[14:17])
    wire [2:0]segment;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(43[13:20])
    wire osc_clk_c_c /* synthesis SET_AS_NETWORK=osc_clk_c_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(50[22:33])
    wire [6:0]n306;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    wire [6:0]n321;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    wire [6:0]n336;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    wire [6:0]n351;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    wire [9:0]n46;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    wire [6:0]n666;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    wire [6:0]n681;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    wire [6:0]n696;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    wire [6:0]n711;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    wire n1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    wire n2537;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    wire n2464;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    wire n2470;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    wire n2536;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    wire n2539;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    wire n2540;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    wire n2538;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    
    wire GND_net, VCC_net;
    wire [2:0]n1789;
    
    wire n2445, n2444, n2601, n845, n2294, n2448, n2447, n2598, 
        n2414, n2399;
    
    VHI i2 (.Z(VCC_net));
    FD1S1I dlatchrs_641_i1 (.D(ledA4[0]), .CK(n845), .CD(n2414), .Q(Digit4_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i1.GSR = "ENABLED";
    OB Digit1_pad_19 (.I(Digit1_c[19]), .O(Digit1[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    FD1S1I dlatchrs_640_i1 (.D(ledA3[0]), .CK(n845), .CD(n2414), .Q(Digit3_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i1.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i1 (.D(ledA1[0]), .CK(n845), .CD(n2414), .Q(Digit1_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i1.GSR = "ENABLED";
    FD1S3AX tmp_i1 (.D(data_c), .CK(clk_c), .Q(tmp[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i1.GSR = "ENABLED";
    FD1S3AX RedD4_i0 (.D(tmp[88]), .CK(latch_c), .Q(RedD4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD4_i0.GSR = "ENABLED";
    FD1S3AX GrnD4_i0 (.D(tmp[80]), .CK(latch_c), .Q(GrnD4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD4_i0.GSR = "ENABLED";
    FD1S3AX ledA4_i0 (.D(tmp[72]), .CK(latch_c), .Q(ledA4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA4_i0.GSR = "ENABLED";
    FD1S3AX RedD3_i0 (.D(tmp[64]), .CK(latch_c), .Q(RedD3[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD3_i0.GSR = "ENABLED";
    FD1S3AX GrnD3_i0 (.D(tmp[56]), .CK(latch_c), .Q(GrnD3[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD3_i0.GSR = "ENABLED";
    FD1S3AX ledA3_i0 (.D(tmp[48]), .CK(latch_c), .Q(ledA3[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA3_i0.GSR = "ENABLED";
    FD1S3AX RedD2_i0 (.D(tmp[40]), .CK(latch_c), .Q(RedD2[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD2_i0.GSR = "ENABLED";
    FD1S3AX GrnD2_i0 (.D(tmp[32]), .CK(latch_c), .Q(GrnD2[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD2_i0.GSR = "ENABLED";
    FD1S3AX ledA2_i0 (.D(tmp[24]), .CK(latch_c), .Q(ledA2[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA2_i0.GSR = "ENABLED";
    FD1S3AX RedD1_i0 (.D(tmp[16]), .CK(latch_c), .Q(RedD1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD1_i0.GSR = "ENABLED";
    FD1S3AX GrnD1_i0 (.D(tmp[8]), .CK(latch_c), .Q(GrnD1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD1_i0.GSR = "ENABLED";
    FD1S3AX ledA1_i0 (.D(tmp[0]), .CK(latch_c), .Q(ledA1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA1_i0.GSR = "ENABLED";
    FD1S3AX cnt_662__i0 (.D(n46[0]), .CK(osc_clk_c_c), .Q(n80[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i0.GSR = "ENABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk_c_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "2.08";
    OB Digit1_pad_18 (.I(Digit1_c[18]), .O(Digit1[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    CCU2D cnt_662_add_4_5 (.A0(n80[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2537), 
          .COUT(n2538), .S0(n46[3]), .S1(n46[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_662_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_662_add_4_5.INJECT1_0 = "NO";
    defparam cnt_662_add_4_5.INJECT1_1 = "NO";
    FD1S1I dlatchrs_639_i3 (.D(ledA2[2]), .CK(n845), .CD(n2399), .Q(Digit2_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i3.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i5 (.D(ledA2[4]), .CK(n845), .CD(n2294), .Q(Digit2_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i5.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i8 (.D(n681[1]), .CK(n845), .CD(n2448), .Q(Digit2_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i8.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i9 (.D(n681[2]), .CK(n845), .CD(n2448), .Q(Digit2_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i9.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i10 (.D(n681[3]), .CK(n845), .CD(n2448), .Q(Digit2_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i10.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i11 (.D(n681[4]), .CK(n845), .CD(n2448), .Q(Digit2_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i11.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i12 (.D(n681[5]), .CK(n845), .CD(n2448), .Q(Digit2_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i12.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i13 (.D(n681[6]), .CK(n845), .CD(n2448), .Q(Digit2_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i13.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i14 (.D(n321[0]), .CK(n845), .CD(n2470), .Q(Digit2_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i14.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i15 (.D(n321[1]), .CK(n845), .CD(n2470), .Q(Digit2_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i15.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i16 (.D(n321[2]), .CK(n845), .CD(n2470), .Q(Digit2_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i16.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i17 (.D(n321[3]), .CK(n845), .CD(n2470), .Q(Digit2_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i17.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i18 (.D(n321[4]), .CK(n845), .CD(n2470), .Q(Digit2_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i18.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i19 (.D(n321[5]), .CK(n845), .CD(n2470), .Q(Digit2_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i19.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i20 (.D(n321[6]), .CK(n845), .CD(n2470), .Q(Digit2_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i20.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i2 (.D(ledA4[1]), .CK(n845), .CD(n2445), .Q(Digit4_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i2.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i3 (.D(ledA4[2]), .CK(n845), .CD(n2399), .Q(Digit4_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i3.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i4 (.D(ledA4[3]), .CK(n845), .CD(n2464), .Q(Digit4_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i4.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i5 (.D(ledA4[4]), .CK(n845), .CD(n2294), .Q(Digit4_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i5.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i6 (.D(ledA4[5]), .CK(n845), .CD(n2447), .Q(Digit4_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i6.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i7 (.D(n711[0]), .CK(n845), .CD(n2448), .Q(Digit4_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i7.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i8 (.D(n711[1]), .CK(n845), .CD(n2448), .Q(Digit4_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i8.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i9 (.D(n711[2]), .CK(n845), .CD(n2448), .Q(Digit4_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i9.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i10 (.D(n711[3]), .CK(n845), .CD(n2448), .Q(Digit4_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i10.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i11 (.D(n711[4]), .CK(n845), .CD(n2448), .Q(Digit4_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i11.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i12 (.D(n711[5]), .CK(n845), .CD(n2448), .Q(Digit4_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i12.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i13 (.D(n711[6]), .CK(n845), .CD(n2448), .Q(Digit4_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i13.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i14 (.D(n351[0]), .CK(n845), .CD(n2470), .Q(Digit4_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i14.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i15 (.D(n351[1]), .CK(n845), .CD(n2470), .Q(Digit4_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i15.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i16 (.D(n351[2]), .CK(n845), .CD(n2470), .Q(Digit4_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i16.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i17 (.D(n351[3]), .CK(n845), .CD(n2470), .Q(Digit4_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i17.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i18 (.D(n351[4]), .CK(n845), .CD(n2470), .Q(Digit4_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i18.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i19 (.D(n351[5]), .CK(n845), .CD(n2470), .Q(Digit4_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i19.GSR = "ENABLED";
    FD1S1I dlatchrs_641_i20 (.D(n351[6]), .CK(n845), .CD(n2470), .Q(Digit4_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_641_i20.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i2 (.D(ledA3[1]), .CK(n845), .CD(n2445), .Q(Digit3_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i2.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i3 (.D(ledA3[2]), .CK(n845), .CD(n2399), .Q(Digit3_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i3.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i4 (.D(ledA3[3]), .CK(n845), .CD(n2464), .Q(Digit3_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i4.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i5 (.D(ledA3[4]), .CK(n845), .CD(n2294), .Q(Digit3_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i5.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i6 (.D(ledA3[5]), .CK(n845), .CD(n2447), .Q(Digit3_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i6.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i7 (.D(n696[0]), .CK(n845), .CD(n2448), .Q(Digit3_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i7.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i8 (.D(n696[1]), .CK(n845), .CD(n2448), .Q(Digit3_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i8.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i9 (.D(n696[2]), .CK(n845), .CD(n2448), .Q(Digit3_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i9.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i10 (.D(n696[3]), .CK(n845), .CD(n2448), .Q(Digit3_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i10.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i11 (.D(n696[4]), .CK(n845), .CD(n2448), .Q(Digit3_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i11.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i12 (.D(n696[5]), .CK(n845), .CD(n2448), .Q(Digit3_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i12.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i13 (.D(n696[6]), .CK(n845), .CD(n2448), .Q(Digit3_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i13.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i14 (.D(n336[0]), .CK(n845), .CD(n2470), .Q(Digit3_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i14.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i15 (.D(n336[1]), .CK(n845), .CD(n2470), .Q(Digit3_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i15.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i16 (.D(n336[2]), .CK(n845), .CD(n2470), .Q(Digit3_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i16.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i17 (.D(n336[3]), .CK(n845), .CD(n2470), .Q(Digit3_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i17.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i18 (.D(n336[4]), .CK(n845), .CD(n2470), .Q(Digit3_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i18.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i19 (.D(n336[5]), .CK(n845), .CD(n2470), .Q(Digit3_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i19.GSR = "ENABLED";
    FD1S1I dlatchrs_640_i20 (.D(n336[6]), .CK(n845), .CD(n2470), .Q(Digit3_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_640_i20.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i2 (.D(ledA1[1]), .CK(n845), .CD(n2445), .Q(Digit1_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i2.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i3 (.D(ledA1[2]), .CK(n845), .CD(n2399), .Q(Digit1_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i3.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i4 (.D(ledA1[3]), .CK(n845), .CD(n2464), .Q(Digit1_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i4.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i5 (.D(ledA1[4]), .CK(n845), .CD(n2294), .Q(Digit1_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i5.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i6 (.D(ledA1[5]), .CK(n845), .CD(n2447), .Q(Digit1_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i6.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i7 (.D(n666[0]), .CK(n845), .CD(n2448), .Q(Digit1_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i7.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i8 (.D(n666[1]), .CK(n845), .CD(n2448), .Q(Digit1_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i8.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i9 (.D(n666[2]), .CK(n845), .CD(n2448), .Q(Digit1_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i9.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i10 (.D(n666[3]), .CK(n845), .CD(n2448), .Q(Digit1_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i10.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i11 (.D(n666[4]), .CK(n845), .CD(n2448), .Q(Digit1_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i11.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i12 (.D(n666[5]), .CK(n845), .CD(n2448), .Q(Digit1_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i12.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i13 (.D(n666[6]), .CK(n845), .CD(n2448), .Q(Digit1_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i13.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i14 (.D(n306[0]), .CK(n845), .CD(n2470), .Q(Digit1_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i14.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i15 (.D(n306[1]), .CK(n845), .CD(n2470), .Q(Digit1_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i15.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i16 (.D(n306[2]), .CK(n845), .CD(n2470), .Q(Digit1_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i16.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i17 (.D(n306[3]), .CK(n845), .CD(n2470), .Q(Digit1_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i17.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i18 (.D(n306[4]), .CK(n845), .CD(n2470), .Q(Digit1_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i18.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i19 (.D(n306[5]), .CK(n845), .CD(n2470), .Q(Digit1_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i19.GSR = "ENABLED";
    FD1S1I dlatchrs_638_i20 (.D(n306[6]), .CK(n845), .CD(n2470), .Q(Digit1_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_638_i20.GSR = "ENABLED";
    FD1S1I dlatchrs_642_i2 (.D(n1789[1]), .CK(n2601), .CD(n2444), .Q(segment[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_642_i2.GSR = "ENABLED";
    FD1S1I dlatchrs_642_i3 (.D(n1789[2]), .CK(n2601), .CD(n2444), .Q(segment[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_642_i3.GSR = "ENABLED";
    FD1S3AX tmp_i2 (.D(tmp[0]), .CK(clk_c), .Q(tmp[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i2.GSR = "ENABLED";
    OB Digit1_pad_17 (.I(Digit1_c[17]), .O(Digit1[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_16 (.I(Digit1_c[16]), .O(Digit1[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_15 (.I(Digit1_c[15]), .O(Digit1[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_14 (.I(Digit1_c[14]), .O(Digit1[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_13 (.I(Digit1_c[13]), .O(Digit1[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_12 (.I(Digit1_c[12]), .O(Digit1[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_11 (.I(Digit1_c[11]), .O(Digit1[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_10 (.I(Digit1_c[10]), .O(Digit1[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_9 (.I(Digit1_c[9]), .O(Digit1[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_8 (.I(Digit1_c[8]), .O(Digit1[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_7 (.I(Digit1_c[7]), .O(Digit1[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_6 (.I(Digit1_c[6]), .O(Digit1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_5 (.I(Digit1_c[5]), .O(Digit1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_4 (.I(Digit1_c[4]), .O(Digit1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_3 (.I(Digit1_c[3]), .O(Digit1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_2 (.I(Digit1_c[2]), .O(Digit1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_1 (.I(Digit1_c[1]), .O(Digit1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_0 (.I(Digit1_c[0]), .O(Digit1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit2_pad_19 (.I(Digit2_c[19]), .O(Digit2[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_18 (.I(Digit2_c[18]), .O(Digit2[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_17 (.I(Digit2_c[17]), .O(Digit2[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_16 (.I(Digit2_c[16]), .O(Digit2[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_15 (.I(Digit2_c[15]), .O(Digit2[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_14 (.I(Digit2_c[14]), .O(Digit2[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_13 (.I(Digit2_c[13]), .O(Digit2[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_12 (.I(Digit2_c[12]), .O(Digit2[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_11 (.I(Digit2_c[11]), .O(Digit2[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_10 (.I(Digit2_c[10]), .O(Digit2[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_9 (.I(Digit2_c[9]), .O(Digit2[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_8 (.I(Digit2_c[8]), .O(Digit2[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_7 (.I(Digit2_c[7]), .O(Digit2[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_6 (.I(Digit2_c[6]), .O(Digit2[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_5 (.I(Digit2_c[5]), .O(Digit2[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_4 (.I(Digit2_c[4]), .O(Digit2[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_3 (.I(Digit2_c[3]), .O(Digit2[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_2 (.I(Digit2_c[2]), .O(Digit2[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_1 (.I(Digit2_c[1]), .O(Digit2[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_0 (.I(Digit2_c[0]), .O(Digit2[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit3_pad_19 (.I(Digit3_c[19]), .O(Digit3[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_18 (.I(Digit3_c[18]), .O(Digit3[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_17 (.I(Digit3_c[17]), .O(Digit3[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_16 (.I(Digit3_c[16]), .O(Digit3[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_15 (.I(Digit3_c[15]), .O(Digit3[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_14 (.I(Digit3_c[14]), .O(Digit3[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_13 (.I(Digit3_c[13]), .O(Digit3[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_12 (.I(Digit3_c[12]), .O(Digit3[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_11 (.I(Digit3_c[11]), .O(Digit3[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_10 (.I(Digit3_c[10]), .O(Digit3[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_9 (.I(Digit3_c[9]), .O(Digit3[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_8 (.I(Digit3_c[8]), .O(Digit3[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_7 (.I(Digit3_c[7]), .O(Digit3[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_6 (.I(Digit3_c[6]), .O(Digit3[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_5 (.I(Digit3_c[5]), .O(Digit3[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_4 (.I(Digit3_c[4]), .O(Digit3[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_3 (.I(Digit3_c[3]), .O(Digit3[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_2 (.I(Digit3_c[2]), .O(Digit3[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_1 (.I(Digit3_c[1]), .O(Digit3[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_0 (.I(Digit3_c[0]), .O(Digit3[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit4_pad_19 (.I(Digit4_c[19]), .O(Digit4[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_18 (.I(Digit4_c[18]), .O(Digit4[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_17 (.I(Digit4_c[17]), .O(Digit4[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_16 (.I(Digit4_c[16]), .O(Digit4[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_15 (.I(Digit4_c[15]), .O(Digit4[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_14 (.I(Digit4_c[14]), .O(Digit4[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_13 (.I(Digit4_c[13]), .O(Digit4[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_12 (.I(Digit4_c[12]), .O(Digit4[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_11 (.I(Digit4_c[11]), .O(Digit4[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_10 (.I(Digit4_c[10]), .O(Digit4[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_9 (.I(Digit4_c[9]), .O(Digit4[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_8 (.I(Digit4_c[8]), .O(Digit4[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_7 (.I(Digit4_c[7]), .O(Digit4[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_6 (.I(Digit4_c[6]), .O(Digit4[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_5 (.I(Digit4_c[5]), .O(Digit4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_4 (.I(Digit4_c[4]), .O(Digit4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_3 (.I(Digit4_c[3]), .O(Digit4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_2 (.I(Digit4_c[2]), .O(Digit4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_1 (.I(Digit4_c[1]), .O(Digit4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_0 (.I(Digit4_c[0]), .O(Digit4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB heartbeat_pad (.I(n80[9]), .O(heartbeat));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    IB latch_pad (.I(latch), .O(latch_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(16[8:13])
    IB clk_pad (.I(clk), .O(clk_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(17[7:10])
    IB data_pad (.I(data), .O(data_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(18[7:11])
    FD1S3AX tmp_i3 (.D(tmp[1]), .CK(clk_c), .Q(tmp[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i3.GSR = "ENABLED";
    FD1S3AX tmp_i4 (.D(tmp[2]), .CK(clk_c), .Q(tmp[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i4.GSR = "ENABLED";
    FD1S3AX tmp_i5 (.D(tmp[3]), .CK(clk_c), .Q(tmp[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i5.GSR = "ENABLED";
    FD1S3AX tmp_i6 (.D(tmp[4]), .CK(clk_c), .Q(tmp[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i6.GSR = "ENABLED";
    FD1S3AX tmp_i7 (.D(tmp[5]), .CK(clk_c), .Q(tmp[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i7.GSR = "ENABLED";
    FD1S3AX tmp_i8 (.D(tmp[6]), .CK(clk_c), .Q(tmp[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i8.GSR = "ENABLED";
    FD1S3AX tmp_i9 (.D(tmp[7]), .CK(clk_c), .Q(tmp[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i9.GSR = "ENABLED";
    FD1S3AX tmp_i10 (.D(tmp[8]), .CK(clk_c), .Q(tmp[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i10.GSR = "ENABLED";
    FD1S3AX tmp_i11 (.D(tmp[9]), .CK(clk_c), .Q(tmp[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i11.GSR = "ENABLED";
    FD1S3AX tmp_i12 (.D(tmp[10]), .CK(clk_c), .Q(tmp[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i12.GSR = "ENABLED";
    FD1S3AX tmp_i13 (.D(tmp[11]), .CK(clk_c), .Q(tmp[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i13.GSR = "ENABLED";
    FD1S3AX tmp_i14 (.D(tmp[12]), .CK(clk_c), .Q(tmp[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i14.GSR = "ENABLED";
    FD1S3AX tmp_i15 (.D(tmp[13]), .CK(clk_c), .Q(tmp[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i15.GSR = "ENABLED";
    FD1S3AX tmp_i16 (.D(tmp[14]), .CK(clk_c), .Q(tmp[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i16.GSR = "ENABLED";
    FD1S3AX tmp_i17 (.D(tmp[15]), .CK(clk_c), .Q(tmp[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i17.GSR = "ENABLED";
    FD1S3AX tmp_i18 (.D(tmp[16]), .CK(clk_c), .Q(tmp[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i18.GSR = "ENABLED";
    FD1S3AX tmp_i19 (.D(tmp[17]), .CK(clk_c), .Q(tmp[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i19.GSR = "ENABLED";
    FD1S3AX tmp_i20 (.D(tmp[18]), .CK(clk_c), .Q(tmp[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i20.GSR = "ENABLED";
    FD1S3AX tmp_i21 (.D(tmp[19]), .CK(clk_c), .Q(tmp[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i21.GSR = "ENABLED";
    FD1S3AX tmp_i22 (.D(tmp[20]), .CK(clk_c), .Q(tmp[21]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i22.GSR = "ENABLED";
    FD1S3AX tmp_i23 (.D(tmp[21]), .CK(clk_c), .Q(tmp[22]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i23.GSR = "ENABLED";
    FD1S3AX tmp_i24 (.D(tmp[22]), .CK(clk_c), .Q(tmp[23]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i24.GSR = "ENABLED";
    FD1S3AX tmp_i25 (.D(tmp[23]), .CK(clk_c), .Q(tmp[24]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i25.GSR = "ENABLED";
    FD1S3AX tmp_i26 (.D(tmp[24]), .CK(clk_c), .Q(tmp[25]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i26.GSR = "ENABLED";
    FD1S3AX tmp_i27 (.D(tmp[25]), .CK(clk_c), .Q(tmp[26]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i27.GSR = "ENABLED";
    FD1S3AX tmp_i28 (.D(tmp[26]), .CK(clk_c), .Q(tmp[27]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i28.GSR = "ENABLED";
    FD1S3AX tmp_i29 (.D(tmp[27]), .CK(clk_c), .Q(tmp[28]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i29.GSR = "ENABLED";
    FD1S3AX tmp_i30 (.D(tmp[28]), .CK(clk_c), .Q(tmp[29]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i30.GSR = "ENABLED";
    FD1S3AX tmp_i31 (.D(tmp[29]), .CK(clk_c), .Q(tmp[30]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i31.GSR = "ENABLED";
    FD1S3AX tmp_i32 (.D(tmp[30]), .CK(clk_c), .Q(tmp[31]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i32.GSR = "ENABLED";
    FD1S3AX tmp_i33 (.D(tmp[31]), .CK(clk_c), .Q(tmp[32]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i33.GSR = "ENABLED";
    FD1S3AX tmp_i34 (.D(tmp[32]), .CK(clk_c), .Q(tmp[33]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i34.GSR = "ENABLED";
    FD1S3AX tmp_i35 (.D(tmp[33]), .CK(clk_c), .Q(tmp[34]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i35.GSR = "ENABLED";
    FD1S3AX tmp_i36 (.D(tmp[34]), .CK(clk_c), .Q(tmp[35]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i36.GSR = "ENABLED";
    FD1S3AX tmp_i37 (.D(tmp[35]), .CK(clk_c), .Q(tmp[36]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i37.GSR = "ENABLED";
    FD1S3AX tmp_i38 (.D(tmp[36]), .CK(clk_c), .Q(tmp[37]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i38.GSR = "ENABLED";
    FD1S3AX tmp_i39 (.D(tmp[37]), .CK(clk_c), .Q(tmp[38]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i39.GSR = "ENABLED";
    FD1S3AX tmp_i40 (.D(tmp[38]), .CK(clk_c), .Q(tmp[39]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i40.GSR = "ENABLED";
    FD1S3AX tmp_i41 (.D(tmp[39]), .CK(clk_c), .Q(tmp[40]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i41.GSR = "ENABLED";
    FD1S3AX tmp_i42 (.D(tmp[40]), .CK(clk_c), .Q(tmp[41]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i42.GSR = "ENABLED";
    FD1S3AX tmp_i43 (.D(tmp[41]), .CK(clk_c), .Q(tmp[42]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i43.GSR = "ENABLED";
    FD1S3AX tmp_i44 (.D(tmp[42]), .CK(clk_c), .Q(tmp[43]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i44.GSR = "ENABLED";
    FD1S3AX tmp_i45 (.D(tmp[43]), .CK(clk_c), .Q(tmp[44]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i45.GSR = "ENABLED";
    FD1S3AX tmp_i46 (.D(tmp[44]), .CK(clk_c), .Q(tmp[45]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i46.GSR = "ENABLED";
    FD1S3AX tmp_i47 (.D(tmp[45]), .CK(clk_c), .Q(tmp[46]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i47.GSR = "ENABLED";
    FD1S3AX tmp_i48 (.D(tmp[46]), .CK(clk_c), .Q(tmp[47]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i48.GSR = "ENABLED";
    FD1S3AX tmp_i49 (.D(tmp[47]), .CK(clk_c), .Q(tmp[48]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i49.GSR = "ENABLED";
    FD1S3AX tmp_i50 (.D(tmp[48]), .CK(clk_c), .Q(tmp[49]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i50.GSR = "ENABLED";
    FD1S3AX tmp_i51 (.D(tmp[49]), .CK(clk_c), .Q(tmp[50]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i51.GSR = "ENABLED";
    FD1S3AX tmp_i52 (.D(tmp[50]), .CK(clk_c), .Q(tmp[51]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i52.GSR = "ENABLED";
    FD1S3AX tmp_i53 (.D(tmp[51]), .CK(clk_c), .Q(tmp[52]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i53.GSR = "ENABLED";
    FD1S3AX tmp_i54 (.D(tmp[52]), .CK(clk_c), .Q(tmp[53]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i54.GSR = "ENABLED";
    FD1S3AX tmp_i55 (.D(tmp[53]), .CK(clk_c), .Q(tmp[54]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i55.GSR = "ENABLED";
    FD1S3AX tmp_i56 (.D(tmp[54]), .CK(clk_c), .Q(tmp[55]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i56.GSR = "ENABLED";
    FD1S3AX tmp_i57 (.D(tmp[55]), .CK(clk_c), .Q(tmp[56]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i57.GSR = "ENABLED";
    FD1S3AX tmp_i58 (.D(tmp[56]), .CK(clk_c), .Q(tmp[57]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i58.GSR = "ENABLED";
    FD1S3AX tmp_i59 (.D(tmp[57]), .CK(clk_c), .Q(tmp[58]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i59.GSR = "ENABLED";
    FD1S3AX tmp_i60 (.D(tmp[58]), .CK(clk_c), .Q(tmp[59]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i60.GSR = "ENABLED";
    FD1S3AX tmp_i61 (.D(tmp[59]), .CK(clk_c), .Q(tmp[60]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i61.GSR = "ENABLED";
    FD1S3AX tmp_i62 (.D(tmp[60]), .CK(clk_c), .Q(tmp[61]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i62.GSR = "ENABLED";
    FD1S3AX tmp_i63 (.D(tmp[61]), .CK(clk_c), .Q(tmp[62]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i63.GSR = "ENABLED";
    FD1S3AX tmp_i64 (.D(tmp[62]), .CK(clk_c), .Q(tmp[63]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i64.GSR = "ENABLED";
    FD1S3AX tmp_i65 (.D(tmp[63]), .CK(clk_c), .Q(tmp[64]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i65.GSR = "ENABLED";
    FD1S3AX tmp_i66 (.D(tmp[64]), .CK(clk_c), .Q(tmp[65]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i66.GSR = "ENABLED";
    FD1S3AX tmp_i67 (.D(tmp[65]), .CK(clk_c), .Q(tmp[66]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i67.GSR = "ENABLED";
    FD1S3AX tmp_i68 (.D(tmp[66]), .CK(clk_c), .Q(tmp[67]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i68.GSR = "ENABLED";
    FD1S3AX tmp_i69 (.D(tmp[67]), .CK(clk_c), .Q(tmp[68]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i69.GSR = "ENABLED";
    FD1S3AX tmp_i70 (.D(tmp[68]), .CK(clk_c), .Q(tmp[69]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i70.GSR = "ENABLED";
    FD1S3AX tmp_i71 (.D(tmp[69]), .CK(clk_c), .Q(tmp[70]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i71.GSR = "ENABLED";
    FD1S3AX tmp_i72 (.D(tmp[70]), .CK(clk_c), .Q(tmp[71]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i72.GSR = "ENABLED";
    FD1S3AX tmp_i73 (.D(tmp[71]), .CK(clk_c), .Q(tmp[72]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i73.GSR = "ENABLED";
    FD1S3AX tmp_i74 (.D(tmp[72]), .CK(clk_c), .Q(tmp[73]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i74.GSR = "ENABLED";
    FD1S3AX tmp_i75 (.D(tmp[73]), .CK(clk_c), .Q(tmp[74]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i75.GSR = "ENABLED";
    FD1S3AX tmp_i76 (.D(tmp[74]), .CK(clk_c), .Q(tmp[75]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i76.GSR = "ENABLED";
    FD1S3AX tmp_i77 (.D(tmp[75]), .CK(clk_c), .Q(tmp[76]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i77.GSR = "ENABLED";
    FD1S3AX tmp_i78 (.D(tmp[76]), .CK(clk_c), .Q(tmp[77]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i78.GSR = "ENABLED";
    FD1S3AX tmp_i79 (.D(tmp[77]), .CK(clk_c), .Q(tmp[78]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i79.GSR = "ENABLED";
    FD1S3AX tmp_i80 (.D(tmp[78]), .CK(clk_c), .Q(tmp[79]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i80.GSR = "ENABLED";
    FD1S3AX tmp_i81 (.D(tmp[79]), .CK(clk_c), .Q(tmp[80]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i81.GSR = "ENABLED";
    FD1S3AX tmp_i82 (.D(tmp[80]), .CK(clk_c), .Q(tmp[81]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i82.GSR = "ENABLED";
    FD1S3AX tmp_i83 (.D(tmp[81]), .CK(clk_c), .Q(tmp[82]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i83.GSR = "ENABLED";
    FD1S3AX tmp_i84 (.D(tmp[82]), .CK(clk_c), .Q(tmp[83]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i84.GSR = "ENABLED";
    FD1S3AX tmp_i85 (.D(tmp[83]), .CK(clk_c), .Q(tmp[84]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i85.GSR = "ENABLED";
    FD1S3AX tmp_i86 (.D(tmp[84]), .CK(clk_c), .Q(tmp[85]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i86.GSR = "ENABLED";
    FD1S3AX tmp_i87 (.D(tmp[85]), .CK(clk_c), .Q(tmp[86]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i87.GSR = "ENABLED";
    FD1S3AX tmp_i88 (.D(tmp[86]), .CK(clk_c), .Q(tmp[87]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i88.GSR = "ENABLED";
    FD1S3AX tmp_i89 (.D(tmp[87]), .CK(clk_c), .Q(tmp[88]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i89.GSR = "ENABLED";
    FD1S3AX tmp_i90 (.D(tmp[88]), .CK(clk_c), .Q(tmp[89]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i90.GSR = "ENABLED";
    FD1S3AX tmp_i91 (.D(tmp[89]), .CK(clk_c), .Q(tmp[90]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i91.GSR = "ENABLED";
    FD1S3AX tmp_i92 (.D(tmp[90]), .CK(clk_c), .Q(tmp[91]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i92.GSR = "ENABLED";
    FD1S3AX tmp_i93 (.D(tmp[91]), .CK(clk_c), .Q(tmp[92]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i93.GSR = "ENABLED";
    FD1S3AX tmp_i94 (.D(tmp[92]), .CK(clk_c), .Q(tmp[93]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i94.GSR = "ENABLED";
    FD1S3AX tmp_i95 (.D(tmp[93]), .CK(clk_c), .Q(tmp[94]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(177[8] 180[4])
    defparam tmp_i95.GSR = "ENABLED";
    FD1S3AX RedD4_i1 (.D(tmp[89]), .CK(latch_c), .Q(RedD4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD4_i1.GSR = "ENABLED";
    FD1S3AX RedD4_i2 (.D(tmp[90]), .CK(latch_c), .Q(RedD4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD4_i2.GSR = "ENABLED";
    FD1S3AX RedD4_i3 (.D(tmp[91]), .CK(latch_c), .Q(RedD4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD4_i3.GSR = "ENABLED";
    FD1S3AX RedD4_i4 (.D(tmp[92]), .CK(latch_c), .Q(RedD4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD4_i4.GSR = "ENABLED";
    FD1S3AX RedD4_i5 (.D(tmp[93]), .CK(latch_c), .Q(RedD4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD4_i5.GSR = "ENABLED";
    FD1S3AX RedD4_i6 (.D(tmp[94]), .CK(latch_c), .Q(RedD4[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD4_i6.GSR = "ENABLED";
    FD1S3AX GrnD4_i1 (.D(tmp[81]), .CK(latch_c), .Q(GrnD4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD4_i1.GSR = "ENABLED";
    FD1S3AX GrnD4_i2 (.D(tmp[82]), .CK(latch_c), .Q(GrnD4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD4_i2.GSR = "ENABLED";
    FD1S3AX GrnD4_i3 (.D(tmp[83]), .CK(latch_c), .Q(GrnD4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD4_i3.GSR = "ENABLED";
    FD1S3AX GrnD4_i4 (.D(tmp[84]), .CK(latch_c), .Q(GrnD4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD4_i4.GSR = "ENABLED";
    FD1S3AX GrnD4_i5 (.D(tmp[85]), .CK(latch_c), .Q(GrnD4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD4_i5.GSR = "ENABLED";
    FD1S3AX GrnD4_i6 (.D(tmp[86]), .CK(latch_c), .Q(GrnD4[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD4_i6.GSR = "ENABLED";
    FD1S3AX ledA4_i1 (.D(tmp[73]), .CK(latch_c), .Q(ledA4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA4_i1.GSR = "ENABLED";
    FD1S3AX ledA4_i2 (.D(tmp[74]), .CK(latch_c), .Q(ledA4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA4_i2.GSR = "ENABLED";
    FD1S3AX ledA4_i3 (.D(tmp[75]), .CK(latch_c), .Q(ledA4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA4_i3.GSR = "ENABLED";
    FD1S3AX ledA4_i4 (.D(tmp[76]), .CK(latch_c), .Q(ledA4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA4_i4.GSR = "ENABLED";
    FD1S3AX ledA4_i5 (.D(tmp[77]), .CK(latch_c), .Q(ledA4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA4_i5.GSR = "ENABLED";
    FD1S3AX RedD3_i1 (.D(tmp[65]), .CK(latch_c), .Q(RedD3[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD3_i1.GSR = "ENABLED";
    FD1S3AX RedD3_i2 (.D(tmp[66]), .CK(latch_c), .Q(RedD3[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD3_i2.GSR = "ENABLED";
    FD1S3AX RedD3_i3 (.D(tmp[67]), .CK(latch_c), .Q(RedD3[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD3_i3.GSR = "ENABLED";
    FD1S3AX RedD3_i4 (.D(tmp[68]), .CK(latch_c), .Q(RedD3[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD3_i4.GSR = "ENABLED";
    FD1S3AX RedD3_i5 (.D(tmp[69]), .CK(latch_c), .Q(RedD3[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD3_i5.GSR = "ENABLED";
    FD1S3AX RedD3_i6 (.D(tmp[70]), .CK(latch_c), .Q(RedD3[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD3_i6.GSR = "ENABLED";
    FD1S3AX GrnD3_i1 (.D(tmp[57]), .CK(latch_c), .Q(GrnD3[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD3_i1.GSR = "ENABLED";
    FD1S3AX GrnD3_i2 (.D(tmp[58]), .CK(latch_c), .Q(GrnD3[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD3_i2.GSR = "ENABLED";
    FD1S3AX GrnD3_i3 (.D(tmp[59]), .CK(latch_c), .Q(GrnD3[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD3_i3.GSR = "ENABLED";
    FD1S3AX GrnD3_i4 (.D(tmp[60]), .CK(latch_c), .Q(GrnD3[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD3_i4.GSR = "ENABLED";
    FD1S3AX GrnD3_i5 (.D(tmp[61]), .CK(latch_c), .Q(GrnD3[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD3_i5.GSR = "ENABLED";
    FD1S3AX GrnD3_i6 (.D(tmp[62]), .CK(latch_c), .Q(GrnD3[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD3_i6.GSR = "ENABLED";
    FD1S3AX ledA3_i1 (.D(tmp[49]), .CK(latch_c), .Q(ledA3[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA3_i1.GSR = "ENABLED";
    FD1S3AX ledA3_i2 (.D(tmp[50]), .CK(latch_c), .Q(ledA3[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA3_i2.GSR = "ENABLED";
    FD1S3AX ledA3_i3 (.D(tmp[51]), .CK(latch_c), .Q(ledA3[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA3_i3.GSR = "ENABLED";
    FD1S3AX ledA3_i4 (.D(tmp[52]), .CK(latch_c), .Q(ledA3[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA3_i4.GSR = "ENABLED";
    FD1S3AX ledA3_i5 (.D(tmp[53]), .CK(latch_c), .Q(ledA3[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA3_i5.GSR = "ENABLED";
    FD1S3AX RedD2_i1 (.D(tmp[41]), .CK(latch_c), .Q(RedD2[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD2_i1.GSR = "ENABLED";
    FD1S3AX RedD2_i2 (.D(tmp[42]), .CK(latch_c), .Q(RedD2[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD2_i2.GSR = "ENABLED";
    FD1S3AX RedD2_i3 (.D(tmp[43]), .CK(latch_c), .Q(RedD2[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD2_i3.GSR = "ENABLED";
    FD1S3AX RedD2_i4 (.D(tmp[44]), .CK(latch_c), .Q(RedD2[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD2_i4.GSR = "ENABLED";
    FD1S3AX RedD2_i5 (.D(tmp[45]), .CK(latch_c), .Q(RedD2[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD2_i5.GSR = "ENABLED";
    FD1S3AX RedD2_i6 (.D(tmp[46]), .CK(latch_c), .Q(RedD2[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD2_i6.GSR = "ENABLED";
    FD1S3AX GrnD2_i1 (.D(tmp[33]), .CK(latch_c), .Q(GrnD2[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD2_i1.GSR = "ENABLED";
    FD1S3AX GrnD2_i2 (.D(tmp[34]), .CK(latch_c), .Q(GrnD2[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD2_i2.GSR = "ENABLED";
    FD1S3AX GrnD2_i3 (.D(tmp[35]), .CK(latch_c), .Q(GrnD2[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD2_i3.GSR = "ENABLED";
    FD1S3AX GrnD2_i4 (.D(tmp[36]), .CK(latch_c), .Q(GrnD2[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD2_i4.GSR = "ENABLED";
    FD1S3AX GrnD2_i5 (.D(tmp[37]), .CK(latch_c), .Q(GrnD2[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD2_i5.GSR = "ENABLED";
    FD1S3AX GrnD2_i6 (.D(tmp[38]), .CK(latch_c), .Q(GrnD2[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD2_i6.GSR = "ENABLED";
    FD1S3AX ledA2_i1 (.D(tmp[25]), .CK(latch_c), .Q(ledA2[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA2_i1.GSR = "ENABLED";
    FD1S3AX ledA2_i2 (.D(tmp[26]), .CK(latch_c), .Q(ledA2[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA2_i2.GSR = "ENABLED";
    FD1S3AX ledA2_i3 (.D(tmp[27]), .CK(latch_c), .Q(ledA2[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA2_i3.GSR = "ENABLED";
    FD1S3AX ledA2_i4 (.D(tmp[28]), .CK(latch_c), .Q(ledA2[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA2_i4.GSR = "ENABLED";
    FD1S3AX ledA2_i5 (.D(tmp[29]), .CK(latch_c), .Q(ledA2[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA2_i5.GSR = "ENABLED";
    FD1S3AX RedD1_i1 (.D(tmp[17]), .CK(latch_c), .Q(RedD1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD1_i1.GSR = "ENABLED";
    FD1S3AX RedD1_i2 (.D(tmp[18]), .CK(latch_c), .Q(RedD1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD1_i2.GSR = "ENABLED";
    FD1S3AX RedD1_i3 (.D(tmp[19]), .CK(latch_c), .Q(RedD1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD1_i3.GSR = "ENABLED";
    FD1S3AX RedD1_i4 (.D(tmp[20]), .CK(latch_c), .Q(RedD1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD1_i4.GSR = "ENABLED";
    FD1S3AX RedD1_i5 (.D(tmp[21]), .CK(latch_c), .Q(RedD1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD1_i5.GSR = "ENABLED";
    FD1S3AX RedD1_i6 (.D(tmp[22]), .CK(latch_c), .Q(RedD1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam RedD1_i6.GSR = "ENABLED";
    FD1S3AX GrnD1_i1 (.D(tmp[9]), .CK(latch_c), .Q(GrnD1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD1_i1.GSR = "ENABLED";
    FD1S3AX GrnD1_i2 (.D(tmp[10]), .CK(latch_c), .Q(GrnD1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD1_i2.GSR = "ENABLED";
    FD1S3AX GrnD1_i3 (.D(tmp[11]), .CK(latch_c), .Q(GrnD1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD1_i3.GSR = "ENABLED";
    FD1S3AX GrnD1_i4 (.D(tmp[12]), .CK(latch_c), .Q(GrnD1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD1_i4.GSR = "ENABLED";
    FD1S3AX GrnD1_i5 (.D(tmp[13]), .CK(latch_c), .Q(GrnD1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD1_i5.GSR = "ENABLED";
    FD1S3AX GrnD1_i6 (.D(tmp[14]), .CK(latch_c), .Q(GrnD1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam GrnD1_i6.GSR = "ENABLED";
    FD1S3AX ledA1_i1 (.D(tmp[1]), .CK(latch_c), .Q(ledA1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA1_i1.GSR = "ENABLED";
    FD1S3AX ledA1_i2 (.D(tmp[2]), .CK(latch_c), .Q(ledA1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA1_i2.GSR = "ENABLED";
    FD1S3AX ledA1_i3 (.D(tmp[3]), .CK(latch_c), .Q(ledA1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA1_i3.GSR = "ENABLED";
    FD1S3AX ledA1_i4 (.D(tmp[4]), .CK(latch_c), .Q(ledA1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA1_i4.GSR = "ENABLED";
    FD1S3AX ledA1_i5 (.D(tmp[5]), .CK(latch_c), .Q(ledA1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(183[8] 200[4])
    defparam ledA1_i5.GSR = "ENABLED";
    FD1S3AX cnt_662__i1 (.D(n46[1]), .CK(osc_clk_c_c), .Q(n80[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i1.GSR = "ENABLED";
    LUT4 i1295_2_lut (.A(segment[1]), .B(segment[0]), .Z(n1789[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1295_2_lut.init = 16'h6666;
    LUT4 i1302_3_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .Z(n1789[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1302_3_lut.init = 16'h6a6a;
    CCU2D cnt_662_add_4_11 (.A0(n80[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2540), 
          .S0(n46[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_662_add_4_11.INIT1 = 16'h0000;
    defparam cnt_662_add_4_11.INJECT1_0 = "NO";
    defparam cnt_662_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_1_lut (.A(segment[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam i1_1_lut.init = 16'h5555;
    LUT4 and_95_i7_2_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), .C(GrnD3[6]), 
         .D(segment[2]), .Z(n696[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_95_i7_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_47_i7_2_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), .C(RedD3[6]), 
         .D(segment[2]), .Z(n336[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_47_i7_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_91_i7_2_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), .C(GrnD1[6]), 
         .D(segment[2]), .Z(n666[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_91_i7_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_43_i7_2_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), .C(RedD1[6]), 
         .D(segment[2]), .Z(n306[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_43_i7_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_93_i3_2_lut_3_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), 
         .C(GrnD2[2]), .D(segment[2]), .Z(n681[2])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_93_i3_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_4_lut (.A(n80[9]), .B(cnt[8]), .C(cnt[7]), .D(cnt[6]), 
         .Z(n2294)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((C+(D))+!B)) */ ;
    defparam i1_2_lut_4_lut.init = 16'hffdb;
    LUT4 i1_2_lut_4_lut_adj_1 (.A(n80[9]), .B(cnt[8]), .C(cnt[7]), .D(cnt[6]), 
         .Z(n2447)) /* synthesis lut_function=(A (B+!(C (D)))+!A ((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_1.init = 16'hdbff;
    FD1S3AX cnt_662__i2 (.D(n46[2]), .CK(osc_clk_c_c), .Q(n80[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i2.GSR = "ENABLED";
    FD1S3AX cnt_662__i3 (.D(n46[3]), .CK(osc_clk_c_c), .Q(n80[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i3.GSR = "ENABLED";
    FD1S3AX cnt_662__i4 (.D(n46[4]), .CK(osc_clk_c_c), .Q(n80[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i4.GSR = "ENABLED";
    FD1S3AX cnt_662__i5 (.D(n46[5]), .CK(osc_clk_c_c), .Q(n80[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i5.GSR = "ENABLED";
    FD1S3AX cnt_662__i6 (.D(n46[6]), .CK(osc_clk_c_c), .Q(cnt[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i6.GSR = "ENABLED";
    FD1S3AX cnt_662__i7 (.D(n46[7]), .CK(osc_clk_c_c), .Q(cnt[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i7.GSR = "ENABLED";
    FD1S3AX cnt_662__i8 (.D(n46[8]), .CK(osc_clk_c_c), .Q(cnt[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i8.GSR = "ENABLED";
    FD1S3AX cnt_662__i9 (.D(n46[9]), .CK(osc_clk_c_c), .Q(n80[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662__i9.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_2 (.A(cnt[8]), .B(cnt[7]), .C(n80[9]), .D(cnt[6]), 
         .Z(n2399)) /* synthesis lut_function=(A+(B (C+(D))+!B ((D)+!C))) */ ;
    defparam i1_2_lut_4_lut_adj_2.init = 16'hffeb;
    LUT4 i1_2_lut_4_lut_adj_3 (.A(cnt[8]), .B(cnt[7]), .C(n80[9]), .D(cnt[6]), 
         .Z(n2464)) /* synthesis lut_function=(A+(B (C+!(D))+!B !(C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_3.init = 16'hebff;
    LUT4 cnt_7__bdd_4_lut (.A(cnt[7]), .B(n80[9]), .C(cnt[6]), .D(cnt[8]), 
         .Z(n2445)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+((D)+!C))) */ ;
    defparam cnt_7__bdd_4_lut.init = 16'hdfef;
    LUT4 n2427_bdd_4_lut (.A(cnt[6]), .B(segment[1]), .C(segment[2]), 
         .D(segment[0]), .Z(n2598)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam n2427_bdd_4_lut.init = 16'h55d5;
    LUT4 i1_3_lut (.A(n80[9]), .B(cnt[7]), .C(cnt[8]), .Z(n2470)) /* synthesis lut_function=(A+(B (C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam i1_3_lut.init = 16'heaea;
    LUT4 and_93_i4_2_lut_3_lut_4_lut (.A(segment[0]), .B(segment[2]), .C(GrnD2[3]), 
         .D(segment[1]), .Z(n681[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_93_i4_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_45_i4_2_lut_3_lut_4_lut (.A(segment[0]), .B(segment[2]), .C(RedD2[3]), 
         .D(segment[1]), .Z(n321[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_45_i4_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_97_i4_2_lut_3_lut_4_lut (.A(segment[0]), .B(segment[2]), .C(GrnD4[3]), 
         .D(segment[1]), .Z(n711[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_97_i4_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_49_i4_2_lut_3_lut_4_lut (.A(segment[0]), .B(segment[2]), .C(RedD4[3]), 
         .D(segment[1]), .Z(n351[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_49_i4_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_95_i4_2_lut_3_lut_4_lut (.A(segment[0]), .B(segment[2]), .C(GrnD3[3]), 
         .D(segment[1]), .Z(n696[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_95_i4_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_47_i4_2_lut_3_lut_4_lut (.A(segment[0]), .B(segment[2]), .C(RedD3[3]), 
         .D(segment[1]), .Z(n336[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_47_i4_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_91_i4_2_lut_3_lut_4_lut (.A(segment[0]), .B(segment[2]), .C(GrnD1[3]), 
         .D(segment[1]), .Z(n666[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_91_i4_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_43_i4_2_lut_3_lut_4_lut (.A(segment[0]), .B(segment[2]), .C(RedD1[3]), 
         .D(segment[1]), .Z(n306[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_43_i4_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i2_2_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[8]), .D(n80[9]), 
         .Z(n2414)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+(D)))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(63[2] 159[9])
    defparam i2_2_lut_4_lut.init = 16'hffde;
    LUT4 and_45_i6_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(RedD2[5]), 
         .D(segment[0]), .Z(n321[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_45_i6_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_93_i6_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(GrnD2[5]), 
         .D(segment[0]), .Z(n681[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_93_i6_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_97_i6_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(GrnD4[5]), 
         .D(segment[0]), .Z(n711[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_97_i6_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_49_i6_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(RedD4[5]), 
         .D(segment[0]), .Z(n351[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_49_i6_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_95_i6_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(GrnD3[5]), 
         .D(segment[0]), .Z(n696[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_95_i6_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_47_i6_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(RedD3[5]), 
         .D(segment[0]), .Z(n336[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_47_i6_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_91_i6_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(GrnD1[5]), 
         .D(segment[0]), .Z(n666[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_91_i6_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_43_i6_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(RedD1[5]), 
         .D(segment[0]), .Z(n306[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_43_i6_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_93_i5_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(GrnD2[4]), 
         .D(segment[0]), .Z(n681[4])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_93_i5_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_45_i5_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(RedD2[4]), 
         .D(segment[0]), .Z(n321[4])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_45_i5_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_97_i5_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(GrnD4[4]), 
         .D(segment[0]), .Z(n711[4])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_97_i5_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_49_i5_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(RedD4[4]), 
         .D(segment[0]), .Z(n351[4])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_49_i5_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_95_i5_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(GrnD3[4]), 
         .D(segment[0]), .Z(n696[4])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_95_i5_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_47_i5_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(RedD3[4]), 
         .D(segment[0]), .Z(n336[4])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_47_i5_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_91_i5_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(GrnD1[4]), 
         .D(segment[0]), .Z(n666[4])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_91_i5_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 cnt_7__bdd_3_lut (.A(cnt[7]), .B(cnt[8]), .C(n80[9]), .Z(n2448)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;
    defparam cnt_7__bdd_3_lut.init = 16'hc7c7;
    LUT4 and_43_i5_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(RedD1[4]), 
         .D(segment[0]), .Z(n306[4])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_43_i5_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_45_i2_2_lut_3_lut_4_lut_4_lut (.A(segment[1]), .B(RedD2[1]), 
         .C(segment[2]), .D(segment[0]), .Z(n321[1])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_45_i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    CCU2D cnt_662_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2539), 
          .COUT(n2540), .S0(n46[7]), .S1(n46[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_662_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_662_add_4_9.INJECT1_0 = "NO";
    defparam cnt_662_add_4_9.INJECT1_1 = "NO";
    LUT4 and_97_i2_2_lut_3_lut_4_lut_4_lut (.A(segment[1]), .B(GrnD4[1]), 
         .C(segment[2]), .D(segment[0]), .Z(n711[1])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_97_i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 and_49_i2_2_lut_3_lut_4_lut_4_lut (.A(segment[1]), .B(RedD4[1]), 
         .C(segment[2]), .D(segment[0]), .Z(n351[1])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_49_i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 and_95_i2_2_lut_3_lut_4_lut_4_lut (.A(segment[1]), .B(GrnD3[1]), 
         .C(segment[2]), .D(segment[0]), .Z(n696[1])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_95_i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    CCU2D cnt_662_add_4_7 (.A0(n80[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2538), 
          .COUT(n2539), .S0(n46[5]), .S1(n46[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_662_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_662_add_4_7.INJECT1_0 = "NO";
    defparam cnt_662_add_4_7.INJECT1_1 = "NO";
    LUT4 and_47_i2_2_lut_3_lut_4_lut_4_lut (.A(segment[1]), .B(RedD3[1]), 
         .C(segment[2]), .D(segment[0]), .Z(n336[1])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_47_i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 and_91_i2_2_lut_3_lut_4_lut_4_lut (.A(segment[1]), .B(GrnD1[1]), 
         .C(segment[2]), .D(segment[0]), .Z(n666[1])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_91_i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 and_43_i2_2_lut_3_lut_4_lut_4_lut (.A(segment[1]), .B(RedD1[1]), 
         .C(segment[2]), .D(segment[0]), .Z(n306[1])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_43_i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 and_93_i2_2_lut_3_lut_4_lut_4_lut (.A(segment[1]), .B(GrnD2[1]), 
         .C(segment[2]), .D(segment[0]), .Z(n681[1])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_93_i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 and_45_i1_2_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(RedD2[0]), .Z(n321[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam and_45_i1_2_lut_4_lut.init = 16'h8100;
    LUT4 and_97_i1_2_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(GrnD4[0]), .Z(n711[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam and_97_i1_2_lut_4_lut.init = 16'h8100;
    LUT4 and_49_i1_2_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(RedD4[0]), .Z(n351[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam and_49_i1_2_lut_4_lut.init = 16'h8100;
    LUT4 and_95_i1_2_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(GrnD3[0]), .Z(n696[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam and_95_i1_2_lut_4_lut.init = 16'h8100;
    LUT4 and_47_i1_2_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(RedD3[0]), .Z(n336[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam and_47_i1_2_lut_4_lut.init = 16'h8100;
    LUT4 and_91_i1_2_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(GrnD1[0]), .Z(n666[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam and_91_i1_2_lut_4_lut.init = 16'h8100;
    FD1S1I dlatchrs_639_i7 (.D(n681[0]), .CK(n845), .CD(n2448), .Q(Digit2_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i7.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i6 (.D(ledA2[5]), .CK(n845), .CD(n2447), .Q(Digit2_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i6.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i4 (.D(ledA2[3]), .CK(n845), .CD(n2464), .Q(Digit2_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i4.GSR = "ENABLED";
    LUT4 and_43_i1_2_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(RedD1[0]), .Z(n306[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam and_43_i1_2_lut_4_lut.init = 16'h8100;
    FD1S1I dlatchrs_639_i2 (.D(ledA2[1]), .CK(n845), .CD(n2445), .Q(Digit2_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i2.GSR = "ENABLED";
    FD1S1I dlatchrs_642_i1 (.D(n1), .CK(n2601), .CD(n2444), .Q(segment[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_642_i1.GSR = "ENABLED";
    FD1S1I dlatchrs_639_i1 (.D(ledA2[0]), .CK(n845), .CD(n2414), .Q(Digit2_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 160[4])
    defparam dlatchrs_639_i1.GSR = "ENABLED";
    LUT4 and_93_i1_2_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(GrnD2[0]), .Z(n681[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam and_93_i1_2_lut_4_lut.init = 16'h8100;
    LUT4 i1256_2_lut_rep_8_4_lut (.A(cnt[8]), .B(cnt[7]), .C(n80[9]), 
         .D(cnt[6]), .Z(n2601)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1256_2_lut_rep_8_4_lut.init = 16'h8000;
    LUT4 n2_bdd_2_lut_4_lut (.A(cnt[8]), .B(cnt[7]), .C(n80[9]), .D(n2598), 
         .Z(n2444)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam n2_bdd_2_lut_4_lut.init = 16'hff7f;
    LUT4 i1258_1_lut_2_lut_4_lut (.A(cnt[8]), .B(cnt[7]), .C(n80[9]), 
         .D(cnt[6]), .Z(n845)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i1258_1_lut_2_lut_4_lut.init = 16'h7fff;
    LUT4 and_97_i3_2_lut_3_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), 
         .C(GrnD4[2]), .D(segment[2]), .Z(n711[2])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_97_i3_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    CCU2D cnt_662_add_4_3 (.A0(n80[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2536), 
          .COUT(n2537), .S0(n46[1]), .S1(n46[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_662_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_662_add_4_3.INJECT1_0 = "NO";
    defparam cnt_662_add_4_3.INJECT1_1 = "NO";
    LUT4 and_45_i3_2_lut_3_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), 
         .C(RedD2[2]), .D(segment[2]), .Z(n321[2])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_45_i3_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_49_i3_2_lut_3_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), 
         .C(RedD4[2]), .D(segment[2]), .Z(n351[2])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_49_i3_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_95_i3_2_lut_3_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), 
         .C(GrnD3[2]), .D(segment[2]), .Z(n696[2])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_95_i3_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_47_i3_2_lut_3_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), 
         .C(RedD3[2]), .D(segment[2]), .Z(n336[2])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_47_i3_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_91_i3_2_lut_3_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), 
         .C(GrnD1[2]), .D(segment[2]), .Z(n666[2])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_91_i3_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_43_i3_2_lut_3_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), 
         .C(RedD1[2]), .D(segment[2]), .Z(n306[2])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_43_i3_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 and_93_i7_2_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), .C(GrnD2[6]), 
         .D(segment[2]), .Z(n681[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_93_i7_2_lut_3_lut_4_lut.init = 16'h2000;
    CCU2D cnt_662_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2536), 
          .S1(n46[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(204[9:16])
    defparam cnt_662_add_4_1.INIT0 = 16'hF000;
    defparam cnt_662_add_4_1.INIT1 = 16'h0555;
    defparam cnt_662_add_4_1.INJECT1_0 = "NO";
    defparam cnt_662_add_4_1.INJECT1_1 = "NO";
    LUT4 and_45_i7_2_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), .C(RedD2[6]), 
         .D(segment[2]), .Z(n321[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_45_i7_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_97_i7_2_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), .C(GrnD4[6]), 
         .D(segment[2]), .Z(n711[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_97_i7_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 and_49_i7_2_lut_3_lut_4_lut (.A(segment[1]), .B(segment[0]), .C(RedD4[6]), 
         .D(segment[2]), .Z(n351[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(164[2] 173[9])
    defparam and_49_i7_2_lut_3_lut_4_lut.init = 16'h2000;
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

