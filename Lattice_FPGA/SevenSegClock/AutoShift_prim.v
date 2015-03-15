// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.3.0.109
// Netlist written on Sun Mar 15 01:44:49 2015
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
    
    wire GND_net;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(28[12:17])
    wire latch_c /* synthesis SET_AS_NETWORK=latch_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(16[8:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(17[7:10])
    wire data_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(18[7:11])
    wire [9:0]n80;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    wire [19:0]Digit1_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    wire n2287;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n2329;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    wire [6:0]RedD1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(27[12:17])
    wire [6:0]GrnD1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(31[12:17])
    wire n2300;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n2044;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    wire [5:0]ledA1;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(35[12:17])
    wire [9:0]cnt;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(41[13:16])
    wire n2047;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    wire [9:0]n46;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    wire n1985;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    wire n2054;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    wire [95:0]tmp;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(42[14:17])
    wire [2:0]segment;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(43[13:20])
    wire osc_clk_c_c /* synthesis SET_AS_NETWORK=osc_clk_c_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(50[22:33])
    wire n2295;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n1970;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire [6:0]n306;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(43[13:20])
    wire n2294;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n2301;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n2289;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n2286;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n2290;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n2284;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    wire n2060;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    wire n1982;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    wire [6:0]n666;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(43[13:20])
    wire n2327;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n2020;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n1978;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    wire n1981;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    wire n2240;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    wire n2239;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    wire n2237;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    wire n2241;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    wire n2062;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    wire n2238;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    wire n1984;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    wire n1969;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    wire n1979;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    
    wire VCC_net, n2303, n1976, n2245, n2304, n2323, n2326, n2325;
    wire [2:0]n1738;
    
    VHI i2 (.Z(VCC_net));
    OB Digit3_pad_11 (.I(GND_net), .O(Digit3[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit2_pad_7 (.I(GND_net), .O(Digit2[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    IB data_pad (.I(data), .O(data_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(18[7:11])
    FD1S1I dlatchrs_700_i5 (.D(n2054), .CK(n2325), .CD(n1984), .Q(Digit1_c[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i5.GSR = "ENABLED";
    IB clk_pad (.I(clk), .O(clk_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(17[7:10])
    FD1S3AX tmp__0_i1 (.D(data_c), .CK(clk_c), .Q(tmp[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i1.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i2 (.D(n2284), .CK(n2325), .CD(n1979), .Q(Digit1_c[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i2.GSR = "ENABLED";
    OB Digit4_pad_15 (.I(GND_net), .O(Digit4[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    FD1S3AX cnt_727__i0 (.D(n46[0]), .CK(osc_clk_c_c), .Q(n80[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i0.GSR = "ENABLED";
    OB heartbeat_pad (.I(n80[9]), .O(heartbeat));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(14[9:18])
    FD1S3AX RedD1_i0 (.D(tmp[16]), .CK(latch_c), .Q(RedD1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam RedD1_i0.GSR = "ENABLED";
    OB Digit4_pad_16 (.I(GND_net), .O(Digit4[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    FD1S1I dlatchrs_700_i4 (.D(n2044), .CK(n2325), .CD(n1982), .Q(Digit1_c[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i4.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i3 (.D(n2323), .CK(n2325), .CD(n1981), .Q(Digit1_c[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i3.GSR = "ENABLED";
    OB Digit4_pad_17 (.I(GND_net), .O(Digit4[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_18 (.I(GND_net), .O(Digit4[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_19 (.I(GND_net), .O(Digit4[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    IB latch_pad (.I(latch), .O(latch_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(16[8:13])
    OB Digit4_pad_1 (.I(GND_net), .O(Digit4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_4 (.I(GND_net), .O(Digit4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_7 (.I(GND_net), .O(Digit4[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_10 (.I(GND_net), .O(Digit4[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_13 (.I(GND_net), .O(Digit4[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit2_pad_8 (.I(GND_net), .O(Digit2[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_9 (.I(GND_net), .O(Digit2[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_10 (.I(GND_net), .O(Digit2[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_11 (.I(GND_net), .O(Digit2[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_12 (.I(GND_net), .O(Digit2[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    FD1S3AX GrnD1_i0 (.D(tmp[8]), .CK(latch_c), .Q(GrnD1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam GrnD1_i0.GSR = "ENABLED";
    OB Digit3_pad_12 (.I(GND_net), .O(Digit3[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_13 (.I(GND_net), .O(Digit3[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit2_pad_13 (.I(GND_net), .O(Digit2[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit3_pad_14 (.I(GND_net), .O(Digit3[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit2_pad_14 (.I(GND_net), .O(Digit2[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit3_pad_0 (.I(GND_net), .O(Digit3[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    FD1S3AX ledA1_i0 (.D(tmp[0]), .CK(latch_c), .Q(ledA1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam ledA1_i0.GSR = "ENABLED";
    FD1S1I dlatchrs_704_i2 (.D(n1738[1]), .CK(n2326), .CD(n1976), .Q(segment[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_704_i2.GSR = "ENABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk_c_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "2.08";
    OB Digit3_pad_1 (.I(GND_net), .O(Digit3[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_15 (.I(GND_net), .O(Digit3[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_16 (.I(GND_net), .O(Digit3[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit4_pad_12 (.I(GND_net), .O(Digit4[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_9 (.I(GND_net), .O(Digit4[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_6 (.I(GND_net), .O(Digit4[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_3 (.I(GND_net), .O(Digit4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_0 (.I(GND_net), .O(Digit4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit2_pad_15 (.I(GND_net), .O(Digit2[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_16 (.I(GND_net), .O(Digit2[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit3_pad_2 (.I(GND_net), .O(Digit3[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_17 (.I(GND_net), .O(Digit3[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit2_pad_17 (.I(GND_net), .O(Digit2[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_18 (.I(GND_net), .O(Digit2[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit3_pad_18 (.I(GND_net), .O(Digit3[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_19 (.I(GND_net), .O(Digit3[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit2_pad_19 (.I(GND_net), .O(Digit2[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_0 (.I(GND_net), .O(Digit2[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit3_pad_3 (.I(GND_net), .O(Digit3[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit1_pad_0 (.I(Digit1_c[0]), .O(Digit1[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_1 (.I(Digit1_c[1]), .O(Digit1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_2 (.I(Digit1_c[2]), .O(Digit1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_3 (.I(Digit1_c[3]), .O(Digit1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit2_pad_1 (.I(GND_net), .O(Digit2[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit1_pad_4 (.I(Digit1_c[4]), .O(Digit1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit2_pad_2 (.I(GND_net), .O(Digit2[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit1_pad_5 (.I(Digit1_c[5]), .O(Digit1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit2_pad_3 (.I(GND_net), .O(Digit2[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit1_pad_6 (.I(Digit1_c[6]), .O(Digit1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_7 (.I(Digit1_c[7]), .O(Digit1[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_8 (.I(Digit1_c[8]), .O(Digit1[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_9 (.I(Digit1_c[9]), .O(Digit1[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_10 (.I(Digit1_c[10]), .O(Digit1[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit3_pad_4 (.I(GND_net), .O(Digit3[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    FD1S1I dlatchrs_700_i1 (.D(n2245), .CK(n2325), .CD(n1978), .Q(Digit1_c[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i1.GSR = "ENABLED";
    OB Digit2_pad_4 (.I(GND_net), .O(Digit2[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit2_pad_5 (.I(GND_net), .O(Digit2[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    OB Digit1_pad_11 (.I(Digit1_c[11]), .O(Digit1[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit3_pad_5 (.I(GND_net), .O(Digit3[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit2_pad_6 (.I(GND_net), .O(Digit2[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(11[8:14])
    FD1S1I dlatchrs_704_i3 (.D(n1738[2]), .CK(n2326), .CD(n1976), .Q(segment[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_704_i3.GSR = "ENABLED";
    OB Digit1_pad_19 (.I(Digit1_c[19]), .O(Digit1[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_12 (.I(Digit1_c[12]), .O(Digit1[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit3_pad_6 (.I(GND_net), .O(Digit3[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit1_pad_13 (.I(Digit1_c[13]), .O(Digit1[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    FD1S1I dlatchrs_700_i7 (.D(n666[0]), .CK(n2325), .CD(n2062), .Q(Digit1_c[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i7.GSR = "ENABLED";
    OB Digit1_pad_14 (.I(Digit1_c[14]), .O(Digit1[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_15 (.I(Digit1_c[15]), .O(Digit1[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit1_pad_16 (.I(Digit1_c[16]), .O(Digit1[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    CCU2D cnt_727_add_4_5 (.A0(n80[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2238), 
          .COUT(n2239), .S0(n46[3]), .S1(n46[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_727_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_727_add_4_5.INJECT1_0 = "NO";
    defparam cnt_727_add_4_5.INJECT1_1 = "NO";
    OB Digit1_pad_17 (.I(Digit1_c[17]), .O(Digit1[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit3_pad_7 (.I(GND_net), .O(Digit3[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit1_pad_18 (.I(Digit1_c[18]), .O(Digit1[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(10[9:15])
    OB Digit3_pad_8 (.I(GND_net), .O(Digit3[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit4_pad_11 (.I(GND_net), .O(Digit4[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_8 (.I(GND_net), .O(Digit4[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_5 (.I(GND_net), .O(Digit4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit4_pad_2 (.I(GND_net), .O(Digit4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    OB Digit3_pad_9 (.I(GND_net), .O(Digit3[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit3_pad_10 (.I(GND_net), .O(Digit3[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(12[9:15])
    OB Digit4_pad_14 (.I(GND_net), .O(Digit4[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(13[8:14])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S1I dlatchrs_700_i6 (.D(n2047), .CK(n2325), .CD(n1985), .Q(Digit1_c[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i6.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i8 (.D(n2304), .CK(n2325), .CD(n2062), .Q(Digit1_c[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i8.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i9 (.D(n2301), .CK(n2325), .CD(n2062), .Q(Digit1_c[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i9.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i10 (.D(n2289), .CK(n2325), .CD(n2062), .Q(Digit1_c[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i10.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i11 (.D(n2286), .CK(n2325), .CD(n2062), .Q(Digit1_c[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i11.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i12 (.D(n2294), .CK(n2325), .CD(n2062), .Q(Digit1_c[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i12.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i13 (.D(n1970), .CK(n2325), .CD(n2062), .Q(Digit1_c[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i13.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i14 (.D(n306[0]), .CK(n2325), .CD(n2060), .Q(Digit1_c[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i14.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i15 (.D(n2303), .CK(n2325), .CD(n2060), .Q(Digit1_c[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i15.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i16 (.D(n2300), .CK(n2325), .CD(n2060), .Q(Digit1_c[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i16.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i17 (.D(n2290), .CK(n2325), .CD(n2060), .Q(Digit1_c[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i17.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i18 (.D(n2287), .CK(n2325), .CD(n2060), .Q(Digit1_c[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i18.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i19 (.D(n2295), .CK(n2325), .CD(n2060), .Q(Digit1_c[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i19.GSR = "ENABLED";
    FD1S1I dlatchrs_700_i20 (.D(n1969), .CK(n2325), .CD(n2060), .Q(Digit1_c[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_700_i20.GSR = "ENABLED";
    FD1S3AX tmp__0_i2 (.D(tmp[0]), .CK(clk_c), .Q(tmp[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i2.GSR = "ENABLED";
    CCU2D cnt_727_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2240), 
          .COUT(n2241), .S0(n46[7]), .S1(n46[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_727_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_727_add_4_9.INJECT1_0 = "NO";
    defparam cnt_727_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_727_add_4_3 (.A0(n80[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2237), 
          .COUT(n2238), .S0(n46[1]), .S1(n46[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_727_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_727_add_4_3.INJECT1_0 = "NO";
    defparam cnt_727_add_4_3.INJECT1_1 = "NO";
    LUT4 cnt_6__bdd_4_lut (.A(cnt[6]), .B(cnt[7]), .C(n80[9]), .D(cnt[8]), 
         .Z(n2054)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam cnt_6__bdd_4_lut.init = 16'h0140;
    LUT4 and_43_i1_2_lut_4_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(RedD1[0]), .Z(n306[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(43[13:20])
    defparam and_43_i1_2_lut_4_lut_4_lut.init = 16'h8100;
    LUT4 and_91_i1_2_lut_4_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(GrnD1[0]), .Z(n666[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(43[13:20])
    defparam and_91_i1_2_lut_4_lut_4_lut.init = 16'h8100;
    LUT4 i945_1_lut (.A(ledA1[4]), .Z(n1984)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam i945_1_lut.init = 16'h5555;
    FD1S1I dlatchrs_704_i1 (.D(n2020), .CK(n2326), .CD(n1976), .Q(segment[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam dlatchrs_704_i1.GSR = "ENABLED";
    LUT4 cnt_7__bdd_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[8]), .D(n80[9]), 
         .Z(n2323)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam cnt_7__bdd_4_lut.init = 16'h0102;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .D(GrnD1[1]), .Z(n2304)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h1000;
    CCU2D cnt_727_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n80[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2237), 
          .S1(n46[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727_add_4_1.INIT0 = 16'hF000;
    defparam cnt_727_add_4_1.INIT1 = 16'h0555;
    defparam cnt_727_add_4_1.INJECT1_0 = "NO";
    defparam cnt_727_add_4_1.INJECT1_1 = "NO";
    LUT4 i943_1_lut (.A(ledA1[3]), .Z(n1982)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam i943_1_lut.init = 16'h5555;
    LUT4 i939_1_lut (.A(ledA1[0]), .Z(n1978)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam i939_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_1 (.A(segment[2]), .B(segment[1]), 
         .C(segment[0]), .D(RedD1[1]), .Z(n2303)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_1.init = 16'h1000;
    LUT4 i1_2_lut_3_lut (.A(cnt[7]), .B(cnt[8]), .C(n80[9]), .Z(n2060)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    CCU2D cnt_727_add_4_7 (.A0(n80[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2239), 
          .COUT(n2240), .S0(n46[5]), .S1(n46[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_727_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_727_add_4_7.INJECT1_0 = "NO";
    defparam cnt_727_add_4_7.INJECT1_1 = "NO";
    LUT4 i1188_2_lut (.A(segment[1]), .B(segment[0]), .Z(n1738[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1188_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_10 (.A(cnt[8]), .B(cnt[7]), .Z(n2329)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam i1_2_lut_rep_10.init = 16'h2222;
    VLO i1 (.Z(GND_net));
    LUT4 i1202_1_lut_rep_6_2_lut_3_lut_4_lut (.A(cnt[8]), .B(cnt[7]), .C(n80[9]), 
         .D(cnt[6]), .Z(n2325)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam i1202_1_lut_rep_6_2_lut_3_lut_4_lut.init = 16'hdfff;
    LUT4 i1201_2_lut_rep_7_3_lut_4_lut (.A(cnt[8]), .B(cnt[7]), .C(n80[9]), 
         .D(cnt[6]), .Z(n2326)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam i1201_2_lut_rep_7_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(segment[1]), .B(segment[0]), .C(RedD1[5]), 
         .D(segment[2]), .Z(n2295)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_2 (.A(segment[1]), .B(segment[0]), 
         .C(GrnD1[5]), .D(segment[2]), .Z(n2294)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_2.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_3 (.A(segment[1]), .B(segment[0]), 
         .C(RedD1[4]), .D(segment[2]), .Z(n2287)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_3.init = 16'h1000;
    LUT4 i946_1_lut (.A(ledA1[5]), .Z(n1985)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam i946_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_4 (.A(segment[1]), .B(segment[0]), 
         .C(GrnD1[4]), .D(segment[2]), .Z(n2286)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_4.init = 16'h1000;
    LUT4 i942_1_lut (.A(ledA1[2]), .Z(n1981)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam i942_1_lut.init = 16'h5555;
    LUT4 i1195_2_lut_3_lut (.A(segment[1]), .B(segment[0]), .C(segment[2]), 
         .Z(n1738[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1195_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_3_lut_4_lut (.A(cnt[6]), .B(cnt[8]), .C(n80[9]), .D(cnt[7]), 
         .Z(n2044)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam i1_3_lut_4_lut.init = 16'h0220;
    LUT4 i1270_4_lut_4_lut (.A(n80[9]), .B(cnt[8]), .C(cnt[6]), .D(cnt[7]), 
         .Z(n2245)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i1270_4_lut_4_lut.init = 16'h0401;
    LUT4 i1_2_lut_3_lut_4_lut (.A(segment[1]), .B(segment[2]), .C(GrnD1[3]), 
         .D(segment[0]), .Z(n2289)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(segment[1]), .B(segment[2]), .C(RedD1[3]), 
         .D(segment[0]), .Z(n2290)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(segment[1]), .B(segment[2]), .C(RedD1[2]), 
         .D(segment[0]), .Z(n2300)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(segment[1]), .B(segment[2]), .C(GrnD1[2]), 
         .D(segment[0]), .Z(n2301)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h0020;
    LUT4 i1_2_lut_rep_8_3_lut (.A(segment[2]), .B(segment[1]), .C(segment[0]), 
         .Z(n2327)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_rep_8_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(segment[2]), .B(segment[1]), .C(GrnD1[6]), 
         .D(segment[0]), .Z(n1970)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'h0080;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(cnt[6]), .B(n2329), .C(n2327), 
         .D(n80[9]), .Z(n1976)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(segment[2]), .B(segment[1]), .C(RedD1[6]), 
         .D(segment[0]), .Z(n1969)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'h0080;
    CCU2D cnt_727_add_4_11 (.A0(n80[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2241), 
          .S0(n46[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_727_add_4_11.INIT1 = 16'h0000;
    defparam cnt_727_add_4_11.INJECT1_0 = "NO";
    defparam cnt_727_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(n80[9]), .B(cnt[8]), .C(cnt[7]), .D(cnt[6]), 
         .Z(n2284)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam i1_4_lut_4_lut.init = 16'h4100;
    FD1S3AX tmp__0_i3 (.D(tmp[1]), .CK(clk_c), .Q(tmp[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i3.GSR = "ENABLED";
    FD1S3AX tmp__0_i4 (.D(tmp[2]), .CK(clk_c), .Q(tmp[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i4.GSR = "ENABLED";
    FD1S3AX tmp__0_i5 (.D(tmp[3]), .CK(clk_c), .Q(tmp[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i5.GSR = "ENABLED";
    FD1S3AX tmp__0_i6 (.D(tmp[4]), .CK(clk_c), .Q(tmp[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i6.GSR = "ENABLED";
    FD1S3AX tmp__0_i7 (.D(tmp[5]), .CK(clk_c), .Q(tmp[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i7.GSR = "ENABLED";
    FD1S3AX tmp__0_i8 (.D(tmp[6]), .CK(clk_c), .Q(tmp[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i8.GSR = "ENABLED";
    FD1S3AX tmp__0_i9 (.D(tmp[7]), .CK(clk_c), .Q(tmp[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i9.GSR = "ENABLED";
    FD1S3AX tmp__0_i10 (.D(tmp[8]), .CK(clk_c), .Q(tmp[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i10.GSR = "ENABLED";
    FD1S3AX tmp__0_i11 (.D(tmp[9]), .CK(clk_c), .Q(tmp[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i11.GSR = "ENABLED";
    FD1S3AX tmp__0_i12 (.D(tmp[10]), .CK(clk_c), .Q(tmp[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i12.GSR = "ENABLED";
    FD1S3AX tmp__0_i13 (.D(tmp[11]), .CK(clk_c), .Q(tmp[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i13.GSR = "ENABLED";
    FD1S3AX tmp__0_i14 (.D(tmp[12]), .CK(clk_c), .Q(tmp[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i14.GSR = "ENABLED";
    FD1S3AX tmp__0_i15 (.D(tmp[13]), .CK(clk_c), .Q(tmp[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i15.GSR = "ENABLED";
    FD1S3AX tmp__0_i16 (.D(tmp[14]), .CK(clk_c), .Q(tmp[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i16.GSR = "ENABLED";
    FD1S3AX tmp__0_i17 (.D(tmp[15]), .CK(clk_c), .Q(tmp[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i17.GSR = "ENABLED";
    FD1S3AX tmp__0_i18 (.D(tmp[16]), .CK(clk_c), .Q(tmp[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i18.GSR = "ENABLED";
    FD1S3AX tmp__0_i19 (.D(tmp[17]), .CK(clk_c), .Q(tmp[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i19.GSR = "ENABLED";
    FD1S3AX tmp__0_i20 (.D(tmp[18]), .CK(clk_c), .Q(tmp[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i20.GSR = "ENABLED";
    FD1S3AX tmp__0_i21 (.D(tmp[19]), .CK(clk_c), .Q(tmp[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i21.GSR = "ENABLED";
    FD1S3AX tmp__0_i22 (.D(tmp[20]), .CK(clk_c), .Q(tmp[21]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i22.GSR = "ENABLED";
    FD1S3AX tmp__0_i23 (.D(tmp[21]), .CK(clk_c), .Q(tmp[22]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(160[8] 163[4])
    defparam tmp__0_i23.GSR = "ENABLED";
    FD1S3AX cnt_727__i1 (.D(n46[1]), .CK(osc_clk_c_c), .Q(n80[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i1.GSR = "ENABLED";
    LUT4 i981_1_lut (.A(segment[0]), .Z(n2020)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(62[1] 143[4])
    defparam i981_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 cnt_8__bdd_4_lut (.A(cnt[8]), .B(cnt[7]), .C(n80[9]), .D(cnt[6]), 
         .Z(n2047)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))))) */ ;
    defparam cnt_8__bdd_4_lut.init = 16'h4200;
    LUT4 cnt_7__bdd_3_lut (.A(cnt[7]), .B(cnt[8]), .C(n80[9]), .Z(n2062)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;
    defparam cnt_7__bdd_3_lut.init = 16'hc7c7;
    LUT4 i940_1_lut (.A(ledA1[1]), .Z(n1979)) /* synthesis lut_function=(!(A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam i940_1_lut.init = 16'h5555;
    FD1S3AX cnt_727__i2 (.D(n46[2]), .CK(osc_clk_c_c), .Q(n80[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i2.GSR = "ENABLED";
    FD1S3AX cnt_727__i3 (.D(n46[3]), .CK(osc_clk_c_c), .Q(n80[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i3.GSR = "ENABLED";
    FD1S3AX cnt_727__i4 (.D(n46[4]), .CK(osc_clk_c_c), .Q(n80[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i4.GSR = "ENABLED";
    FD1S3AX cnt_727__i5 (.D(n46[5]), .CK(osc_clk_c_c), .Q(n80[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i5.GSR = "ENABLED";
    FD1S3AX cnt_727__i6 (.D(n46[6]), .CK(osc_clk_c_c), .Q(cnt[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i6.GSR = "ENABLED";
    FD1S3AX cnt_727__i7 (.D(n46[7]), .CK(osc_clk_c_c), .Q(cnt[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i7.GSR = "ENABLED";
    FD1S3AX cnt_727__i8 (.D(n46[8]), .CK(osc_clk_c_c), .Q(cnt[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i8.GSR = "ENABLED";
    FD1S3AX cnt_727__i9 (.D(n46[9]), .CK(osc_clk_c_c), .Q(n80[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(174[9:16])
    defparam cnt_727__i9.GSR = "ENABLED";
    FD1S3AX RedD1_i1 (.D(tmp[17]), .CK(latch_c), .Q(RedD1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam RedD1_i1.GSR = "ENABLED";
    FD1S3AX RedD1_i2 (.D(tmp[18]), .CK(latch_c), .Q(RedD1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam RedD1_i2.GSR = "ENABLED";
    FD1S3AX RedD1_i3 (.D(tmp[19]), .CK(latch_c), .Q(RedD1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam RedD1_i3.GSR = "ENABLED";
    FD1S3AX RedD1_i4 (.D(tmp[20]), .CK(latch_c), .Q(RedD1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam RedD1_i4.GSR = "ENABLED";
    FD1S3AX RedD1_i5 (.D(tmp[21]), .CK(latch_c), .Q(RedD1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam RedD1_i5.GSR = "ENABLED";
    FD1S3AX RedD1_i6 (.D(tmp[22]), .CK(latch_c), .Q(RedD1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam RedD1_i6.GSR = "ENABLED";
    FD1S3AX GrnD1_i1 (.D(tmp[9]), .CK(latch_c), .Q(GrnD1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam GrnD1_i1.GSR = "ENABLED";
    FD1S3AX GrnD1_i2 (.D(tmp[10]), .CK(latch_c), .Q(GrnD1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam GrnD1_i2.GSR = "ENABLED";
    FD1S3AX GrnD1_i3 (.D(tmp[11]), .CK(latch_c), .Q(GrnD1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam GrnD1_i3.GSR = "ENABLED";
    FD1S3AX GrnD1_i4 (.D(tmp[12]), .CK(latch_c), .Q(GrnD1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam GrnD1_i4.GSR = "ENABLED";
    FD1S3AX GrnD1_i5 (.D(tmp[13]), .CK(latch_c), .Q(GrnD1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam GrnD1_i5.GSR = "ENABLED";
    FD1S3AX GrnD1_i6 (.D(tmp[14]), .CK(latch_c), .Q(GrnD1[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam GrnD1_i6.GSR = "ENABLED";
    FD1S3AX ledA1_i1 (.D(tmp[1]), .CK(latch_c), .Q(ledA1[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam ledA1_i1.GSR = "ENABLED";
    FD1S3AX ledA1_i2 (.D(tmp[2]), .CK(latch_c), .Q(ledA1[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam ledA1_i2.GSR = "ENABLED";
    FD1S3AX ledA1_i3 (.D(tmp[3]), .CK(latch_c), .Q(ledA1[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam ledA1_i3.GSR = "ENABLED";
    FD1S3AX ledA1_i4 (.D(tmp[4]), .CK(latch_c), .Q(ledA1[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam ledA1_i4.GSR = "ENABLED";
    FD1S3AX ledA1_i5 (.D(tmp[5]), .CK(latch_c), .Q(ledA1[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift_1.v(166[8] 170[4])
    defparam ledA1_i5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

