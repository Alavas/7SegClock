// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.3.0.109
// Netlist written on Fri Jan  2 08:05:43 2015
//
// Verilog Description of module AutoShift
//

module AutoShift (leds, latch, clk, data) /* synthesis syn_module_defined=1 */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(1[8:17])
    output [20:0]leds;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    input latch;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(5[8:13])
    input clk;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(6[7:10])
    input data;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(7[7:11])
    
    wire latch_c /* synthesis SET_AS_NETWORK=latch_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(5[8:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(6[7:10])
    wire data_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(7[7:11])
    wire [20:0]leds_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    wire [9:0]cnt;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    wire n1305;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    wire [23:0]tmp;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[13:16])
    wire [6:0]redsegment;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[12:22])
    wire [6:0]grnsegment;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[12:22])
    wire [6:0]ledon;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[12:17])
    wire [2:0]segment;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(15[12:19])
    wire n1050;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    wire osc_clk_c_c /* synthesis SET_AS_NETWORK=osc_clk_c_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(23[22:33])
    wire n1357;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire n1348;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire n1302;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    wire [9:0]n46;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    wire n956;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    wire n915;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire [9:0]n80;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    wire n950;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    wire n1382;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    wire n1385;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire n1365;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire n1164;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    wire n1377;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    wire n949;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    wire n1362;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire n952;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    wire n1363;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire n953;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    wire n958;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    wire n1356;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire n955;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    wire n914;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire n1354;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    wire n1303;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    wire n1351;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    wire n1347;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    wire n1301;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    wire n1304;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    wire n1366;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    
    wire GND_net, VCC_net;
    wire [2:0]n615;
    
    wire n1360;
    wire [6:0]n125;
    wire [6:0]n237;
    
    wire n1384, n32, n947, n1359, n1380, n724, n1379, n1378, 
        n30, n1376;
    
    VHI i2 (.Z(VCC_net));
    FD1S1I dlatchrs_216_i1 (.D(n1376), .CK(n1378), .CD(n949), .Q(leds_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i1.GSR = "ENABLED";
    FD1S3AX tmp_i1 (.D(data_c), .CK(clk_c), .Q(tmp[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i1.GSR = "ENABLED";
    OB leds_pad_18 (.I(leds_c[18]), .O(leds[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    CCU2D cnt_237_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1301), 
          .S1(n46[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237_add_4_1.INIT0 = 16'hF000;
    defparam cnt_237_add_4_1.INIT1 = 16'h0555;
    defparam cnt_237_add_4_1.INJECT1_0 = "NO";
    defparam cnt_237_add_4_1.INJECT1_1 = "NO";
    FD1S3AX redsegment_i0 (.D(tmp[16]), .CK(latch_c), .Q(redsegment[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam redsegment_i0.GSR = "ENABLED";
    FD1S3AX grnsegment_i0 (.D(tmp[8]), .CK(latch_c), .Q(grnsegment[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam grnsegment_i0.GSR = "ENABLED";
    FD1S3AX ledon_i0 (.D(tmp[0]), .CK(latch_c), .Q(ledon[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam ledon_i0.GSR = "ENABLED";
    FD1S3AX cnt_237__i0 (.D(n46[0]), .CK(osc_clk_c_c), .Q(n80[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i0.GSR = "ENABLED";
    FD1S1I dlatchrs_217_i2 (.D(n615[1]), .CK(n1379), .CD(n947), .Q(segment[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_217_i2.GSR = "ENABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk_c_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "2.08";
    OB leds_pad_4 (.I(leds_c[4]), .O(leds[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_5 (.I(leds_c[5]), .O(leds[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    FD1S1I dlatchrs_216_i8 (.D(n237[0]), .CK(n1378), .CD(n1164), .Q(leds_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i8.GSR = "ENABLED";
    IB data_pad (.I(data), .O(data_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(7[7:11])
    OB leds_pad_6 (.I(leds_c[6]), .O(leds[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    FD1S1I dlatchrs_217_i1 (.D(n1380), .CK(n1379), .CD(n947), .Q(segment[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_217_i1.GSR = "ENABLED";
    FD1S1I dlatchrs_217_i3 (.D(n615[2]), .CK(n1379), .CD(n947), .Q(segment[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_217_i3.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i9 (.D(n1359), .CK(n1378), .CD(n1164), .Q(leds_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i9.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i10 (.D(n1357), .CK(n1378), .CD(n1164), .Q(leds_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i10.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i11 (.D(n1348), .CK(n1378), .CD(n1164), .Q(leds_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i11.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i12 (.D(n1366), .CK(n1378), .CD(n1164), .Q(leds_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i12.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i13 (.D(n1363), .CK(n1378), .CD(n1164), .Q(leds_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i13.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i14 (.D(n914), .CK(n1378), .CD(n1164), .Q(leds_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i14.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i15 (.D(n125[0]), .CK(n1378), .CD(n724), .Q(leds_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i15.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i16 (.D(n1360), .CK(n1378), .CD(n724), .Q(leds_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i16.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i17 (.D(n1356), .CK(n1378), .CD(n724), .Q(leds_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i17.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i18 (.D(n1347), .CK(n1378), .CD(n724), .Q(leds_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i18.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i19 (.D(n1365), .CK(n1378), .CD(n724), .Q(leds_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i19.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i20 (.D(n1362), .CK(n1378), .CD(n724), .Q(leds_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i20.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i21 (.D(n915), .CK(n1378), .CD(n724), .Q(leds_c[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i21.GSR = "ENABLED";
    FD1S3AX tmp_i2 (.D(tmp[0]), .CK(clk_c), .Q(tmp[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i2.GSR = "ENABLED";
    OB leds_pad_7 (.I(leds_c[7]), .O(leds[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    IB clk_pad (.I(clk), .O(clk_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(6[7:10])
    OB leds_pad_8 (.I(leds_c[8]), .O(leds[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_9 (.I(leds_c[9]), .O(leds[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    IB latch_pad (.I(latch), .O(latch_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(5[8:13])
    OB leds_pad_10 (.I(leds_c[10]), .O(leds[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_11 (.I(leds_c[11]), .O(leds[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_0 (.I(leds_c[0]), .O(leds[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    FD1S1I dlatchrs_216_i7 (.D(n32), .CK(n1378), .CD(n958), .Q(leds_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i7.GSR = "ENABLED";
    OB leds_pad_12 (.I(leds_c[12]), .O(leds[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_13 (.I(leds_c[13]), .O(leds[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_1 (.I(leds_c[1]), .O(leds[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    FD1S1I dlatchrs_216_i6 (.D(n1354), .CK(n1378), .CD(n956), .Q(leds_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i6.GSR = "ENABLED";
    OB leds_pad_20 (.I(leds_c[20]), .O(leds[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_14 (.I(leds_c[14]), .O(leds[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    FD1S1I dlatchrs_216_i5 (.D(n1050), .CK(n1378), .CD(n955), .Q(leds_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i5.GSR = "ENABLED";
    OB leds_pad_15 (.I(leds_c[15]), .O(leds[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_2 (.I(leds_c[2]), .O(leds[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    CCU2D cnt_237_add_4_5 (.A0(n80[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1302), 
          .COUT(n1303), .S0(n46[3]), .S1(n46[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_237_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_237_add_4_5.INJECT1_0 = "NO";
    defparam cnt_237_add_4_5.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    OB leds_pad_19 (.I(leds_c[19]), .O(leds[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_16 (.I(leds_c[16]), .O(leds[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_17 (.I(leds_c[17]), .O(leds[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    OB leds_pad_3 (.I(leds_c[3]), .O(leds[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(3[9:13])
    FD1S1I dlatchrs_216_i4 (.D(n1351), .CK(n1378), .CD(n953), .Q(leds_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i4.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i3 (.D(n30), .CK(n1378), .CD(n952), .Q(leds_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i3.GSR = "ENABLED";
    FD1S1I dlatchrs_216_i2 (.D(n1377), .CK(n1378), .CD(n950), .Q(leds_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam dlatchrs_216_i2.GSR = "ENABLED";
    CCU2D cnt_237_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1305), 
          .S0(n46[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_237_add_4_11.INIT1 = 16'h0000;
    defparam cnt_237_add_4_11.INJECT1_0 = "NO";
    defparam cnt_237_add_4_11.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D cnt_237_add_4_3 (.A0(n80[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1301), 
          .COUT(n1302), .S0(n46[1]), .S1(n46[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_237_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_237_add_4_3.INJECT1_0 = "NO";
    defparam cnt_237_add_4_3.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i649_4_lut_4_lut (.A(cnt[6]), .B(cnt[9]), .C(cnt[7]), .D(cnt[8]), 
         .Z(n1050)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    defparam i649_4_lut_4_lut.init = 16'h0180;
    LUT4 i549_1_lut (.A(ledon[1]), .Z(n950)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam i549_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_4_lut (.A(segment[0]), .B(n1385), .C(n1382), 
         .D(n1384), .Z(n947)) /* synthesis lut_function=(!(A (C (D))+!A !(B+!(C (D))))) */ ;
    defparam i1_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h4fff;
    LUT4 i1_2_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(redsegment[1]), 
         .D(segment[0]), .Z(n1360)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_1 (.A(segment[2]), .B(segment[1]), .C(grnsegment[1]), 
         .D(segment[0]), .Z(n1359)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_1.init = 16'h1000;
    LUT4 i1_2_lut_2_lut_4_lut (.A(cnt[9]), .B(cnt[7]), .C(cnt[6]), .D(cnt[8]), 
         .Z(n30)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_2_lut_4_lut.init = 16'h0024;
    LUT4 i1_2_lut_4_lut (.A(cnt[9]), .B(cnt[7]), .C(cnt[6]), .D(cnt[8]), 
         .Z(n32)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h2400;
    LUT4 i1_2_lut_rep_12 (.A(cnt[7]), .B(cnt[8]), .Z(n1382)) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    defparam i1_2_lut_rep_12.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2 (.A(cnt[7]), .B(cnt[8]), .C(cnt[9]), 
         .D(cnt[6]), .Z(n724)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    defparam i1_2_lut_3_lut_4_lut_adj_2.init = 16'hf8f0;
    LUT4 i548_1_lut (.A(ledon[0]), .Z(n949)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam i548_1_lut.init = 16'h5555;
    LUT4 i14_3_lut_4_lut (.A(cnt[7]), .B(cnt[8]), .C(cnt[6]), .D(cnt[9]), 
         .Z(n1164)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(D))+!A !(D)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    defparam i14_3_lut_4_lut.init = 16'h887f;
    LUT4 i557_1_lut (.A(ledon[6]), .Z(n958)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam i557_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_14 (.A(cnt[6]), .B(cnt[9]), .Z(n1384)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_14.init = 16'h8888;
    LUT4 i1_2_lut_rep_9_3_lut_4_lut (.A(cnt[6]), .B(cnt[9]), .C(cnt[8]), 
         .D(cnt[7]), .Z(n1379)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_9_3_lut_4_lut.init = 16'h8000;
    CCU2D cnt_237_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1304), 
          .COUT(n1305), .S0(n46[7]), .S1(n46[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_237_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_237_add_4_9.INJECT1_0 = "NO";
    defparam cnt_237_add_4_9.INJECT1_1 = "NO";
    LUT4 i555_1_lut (.A(ledon[5]), .Z(n956)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam i555_1_lut.init = 16'h5555;
    LUT4 i10_1_lut_rep_8_2_lut_3_lut_4_lut (.A(cnt[6]), .B(cnt[9]), .C(cnt[8]), 
         .D(cnt[7]), .Z(n1378)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i10_1_lut_rep_8_2_lut_3_lut_4_lut.init = 16'h7fff;
    LUT4 i1_2_lut_rep_15 (.A(segment[2]), .B(segment[1]), .Z(n1385)) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_rep_15.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(redsegment[6]), 
         .D(segment[0]), .Z(n915)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_3 (.A(segment[2]), .B(segment[1]), 
         .C(grnsegment[6]), .D(segment[0]), .Z(n914)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_3.init = 16'h0080;
    LUT4 cnt_8__bdd_3_lut_4_lut (.A(cnt[6]), .B(cnt[9]), .C(cnt[7]), .D(cnt[8]), 
         .Z(n1377)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    defparam cnt_8__bdd_3_lut_4_lut.init = 16'h0006;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(cnt[6]), .B(cnt[9]), .C(cnt[7]), 
         .D(cnt[8]), .Z(n1354)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h0600;
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(cnt[6]), .B(cnt[9]), .C(cnt[8]), 
         .D(cnt[7]), .Z(n1351)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[12:15])
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'h0600;
    LUT4 i551_1_lut (.A(ledon[2]), .Z(n952)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam i551_1_lut.init = 16'h5555;
    LUT4 i890_1_lut_rep_10 (.A(segment[0]), .Z(n1380)) /* synthesis lut_function=(!(A)) */ ;
    defparam i890_1_lut_rep_10.init = 16'h5555;
    CCU2D cnt_237_add_4_7 (.A0(n80[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1303), 
          .COUT(n1304), .S0(n46[5]), .S1(n46[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_237_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_237_add_4_7.INJECT1_0 = "NO";
    defparam cnt_237_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(segment[2]), .B(segment[1]), .C(grnsegment[5]), 
         .D(segment[0]), .Z(n1363)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(segment[2]), .B(segment[1]), .C(redsegment[5]), 
         .D(segment[0]), .Z(n1362)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_8 (.A(segment[2]), .B(segment[1]), 
         .C(grnsegment[4]), .D(segment[0]), .Z(n1366)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_8.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_9 (.A(segment[2]), .B(segment[1]), 
         .C(redsegment[4]), .D(segment[0]), .Z(n1365)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_9.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(segment[1]), .B(segment[2]), .C(grnsegment[3]), 
         .D(segment[0]), .Z(n1348)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(segment[1]), .B(segment[2]), .C(redsegment[3]), 
         .D(segment[0]), .Z(n1347)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_4_lut_adj_11.init = 16'h2000;
    LUT4 i892_2_lut (.A(segment[1]), .B(segment[0]), .Z(n615[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i892_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_12 (.A(segment[1]), .B(segment[2]), 
         .C(redsegment[2]), .D(segment[0]), .Z(n1356)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_12.init = 16'h0020;
    LUT4 i554_1_lut (.A(ledon[4]), .Z(n955)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam i554_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_13 (.A(segment[1]), .B(segment[2]), 
         .C(grnsegment[2]), .D(segment[0]), .Z(n1357)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(30[1] 53[4])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_13.init = 16'h0020;
    LUT4 i1_2_lut_4_lut_adj_14 (.A(segment[0]), .B(segment[2]), .C(segment[1]), 
         .D(grnsegment[0]), .Z(n237[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_14.init = 16'h8100;
    LUT4 i1_2_lut_4_lut_adj_15 (.A(segment[0]), .B(segment[2]), .C(segment[1]), 
         .D(redsegment[0]), .Z(n125[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_15.init = 16'h8100;
    LUT4 i552_1_lut (.A(ledon[3]), .Z(n953)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam i552_1_lut.init = 16'h5555;
    LUT4 i899_3_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), .Z(n615[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i899_3_lut.init = 16'h6a6a;
    LUT4 cnt_9__bdd_4_lut (.A(cnt[9]), .B(cnt[7]), .C(cnt[6]), .D(cnt[8]), 
         .Z(n1376)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+(D))))) */ ;
    defparam cnt_9__bdd_4_lut.init = 16'h4001;
    FD1S3AX tmp_i3 (.D(tmp[1]), .CK(clk_c), .Q(tmp[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i3.GSR = "ENABLED";
    FD1S3AX tmp_i4 (.D(tmp[2]), .CK(clk_c), .Q(tmp[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i4.GSR = "ENABLED";
    FD1S3AX tmp_i5 (.D(tmp[3]), .CK(clk_c), .Q(tmp[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i5.GSR = "ENABLED";
    FD1S3AX tmp_i6 (.D(tmp[4]), .CK(clk_c), .Q(tmp[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i6.GSR = "ENABLED";
    FD1S3AX tmp_i7 (.D(tmp[5]), .CK(clk_c), .Q(tmp[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i7.GSR = "ENABLED";
    FD1S3AX tmp_i8 (.D(tmp[6]), .CK(clk_c), .Q(tmp[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i8.GSR = "ENABLED";
    FD1S3AX tmp_i9 (.D(tmp[7]), .CK(clk_c), .Q(tmp[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i9.GSR = "ENABLED";
    FD1S3AX tmp_i10 (.D(tmp[8]), .CK(clk_c), .Q(tmp[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i10.GSR = "ENABLED";
    FD1S3AX tmp_i11 (.D(tmp[9]), .CK(clk_c), .Q(tmp[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i11.GSR = "ENABLED";
    FD1S3AX tmp_i12 (.D(tmp[10]), .CK(clk_c), .Q(tmp[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i12.GSR = "ENABLED";
    FD1S3AX tmp_i13 (.D(tmp[11]), .CK(clk_c), .Q(tmp[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i13.GSR = "ENABLED";
    FD1S3AX tmp_i14 (.D(tmp[12]), .CK(clk_c), .Q(tmp[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i14.GSR = "ENABLED";
    FD1S3AX tmp_i15 (.D(tmp[13]), .CK(clk_c), .Q(tmp[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i15.GSR = "ENABLED";
    FD1S3AX tmp_i16 (.D(tmp[14]), .CK(clk_c), .Q(tmp[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i16.GSR = "ENABLED";
    FD1S3AX tmp_i17 (.D(tmp[15]), .CK(clk_c), .Q(tmp[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i17.GSR = "ENABLED";
    FD1S3AX tmp_i18 (.D(tmp[16]), .CK(clk_c), .Q(tmp[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i18.GSR = "ENABLED";
    FD1S3AX tmp_i19 (.D(tmp[17]), .CK(clk_c), .Q(tmp[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i19.GSR = "ENABLED";
    FD1S3AX tmp_i20 (.D(tmp[18]), .CK(clk_c), .Q(tmp[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i20.GSR = "ENABLED";
    FD1S3AX tmp_i21 (.D(tmp[19]), .CK(clk_c), .Q(tmp[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i21.GSR = "ENABLED";
    FD1S3AX tmp_i22 (.D(tmp[20]), .CK(clk_c), .Q(tmp[21]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i22.GSR = "ENABLED";
    FD1S3AX tmp_i23 (.D(tmp[21]), .CK(clk_c), .Q(tmp[22]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(68[8] 71[4])
    defparam tmp_i23.GSR = "ENABLED";
    FD1S3AX redsegment_i1 (.D(tmp[17]), .CK(latch_c), .Q(redsegment[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam redsegment_i1.GSR = "ENABLED";
    FD1S3AX redsegment_i2 (.D(tmp[18]), .CK(latch_c), .Q(redsegment[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam redsegment_i2.GSR = "ENABLED";
    FD1S3AX redsegment_i3 (.D(tmp[19]), .CK(latch_c), .Q(redsegment[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam redsegment_i3.GSR = "ENABLED";
    FD1S3AX redsegment_i4 (.D(tmp[20]), .CK(latch_c), .Q(redsegment[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam redsegment_i4.GSR = "ENABLED";
    FD1S3AX redsegment_i5 (.D(tmp[21]), .CK(latch_c), .Q(redsegment[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam redsegment_i5.GSR = "ENABLED";
    FD1S3AX redsegment_i6 (.D(tmp[22]), .CK(latch_c), .Q(redsegment[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam redsegment_i6.GSR = "ENABLED";
    FD1S3AX grnsegment_i1 (.D(tmp[9]), .CK(latch_c), .Q(grnsegment[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam grnsegment_i1.GSR = "ENABLED";
    FD1S3AX grnsegment_i2 (.D(tmp[10]), .CK(latch_c), .Q(grnsegment[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam grnsegment_i2.GSR = "ENABLED";
    FD1S3AX grnsegment_i3 (.D(tmp[11]), .CK(latch_c), .Q(grnsegment[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam grnsegment_i3.GSR = "ENABLED";
    FD1S3AX grnsegment_i4 (.D(tmp[12]), .CK(latch_c), .Q(grnsegment[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam grnsegment_i4.GSR = "ENABLED";
    FD1S3AX grnsegment_i5 (.D(tmp[13]), .CK(latch_c), .Q(grnsegment[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam grnsegment_i5.GSR = "ENABLED";
    FD1S3AX grnsegment_i6 (.D(tmp[14]), .CK(latch_c), .Q(grnsegment[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam grnsegment_i6.GSR = "ENABLED";
    FD1S3AX ledon_i1 (.D(tmp[1]), .CK(latch_c), .Q(ledon[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam ledon_i1.GSR = "ENABLED";
    FD1S3AX ledon_i2 (.D(tmp[2]), .CK(latch_c), .Q(ledon[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam ledon_i2.GSR = "ENABLED";
    FD1S3AX ledon_i3 (.D(tmp[3]), .CK(latch_c), .Q(ledon[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam ledon_i3.GSR = "ENABLED";
    FD1S3AX ledon_i4 (.D(tmp[4]), .CK(latch_c), .Q(ledon[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam ledon_i4.GSR = "ENABLED";
    FD1S3AX ledon_i5 (.D(tmp[5]), .CK(latch_c), .Q(ledon[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam ledon_i5.GSR = "ENABLED";
    FD1S3AX ledon_i6 (.D(tmp[6]), .CK(latch_c), .Q(ledon[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(73[8] 77[4])
    defparam ledon_i6.GSR = "ENABLED";
    FD1S3AX cnt_237__i1 (.D(n46[1]), .CK(osc_clk_c_c), .Q(n80[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i1.GSR = "ENABLED";
    FD1S3AX cnt_237__i2 (.D(n46[2]), .CK(osc_clk_c_c), .Q(n80[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i2.GSR = "ENABLED";
    FD1S3AX cnt_237__i3 (.D(n46[3]), .CK(osc_clk_c_c), .Q(n80[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i3.GSR = "ENABLED";
    FD1S3AX cnt_237__i4 (.D(n46[4]), .CK(osc_clk_c_c), .Q(n80[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i4.GSR = "ENABLED";
    FD1S3AX cnt_237__i5 (.D(n46[5]), .CK(osc_clk_c_c), .Q(n80[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i5.GSR = "ENABLED";
    FD1S3AX cnt_237__i6 (.D(n46[6]), .CK(osc_clk_c_c), .Q(cnt[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i6.GSR = "ENABLED";
    FD1S3AX cnt_237__i7 (.D(n46[7]), .CK(osc_clk_c_c), .Q(cnt[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i7.GSR = "ENABLED";
    FD1S3AX cnt_237__i8 (.D(n46[8]), .CK(osc_clk_c_c), .Q(cnt[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i8.GSR = "ENABLED";
    FD1S3AX cnt_237__i9 (.D(n46[9]), .CK(osc_clk_c_c), .Q(cnt[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[9:16])
    defparam cnt_237__i9.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

