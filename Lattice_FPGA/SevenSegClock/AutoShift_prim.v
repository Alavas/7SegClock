// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.3.0.109
// Netlist written on Tue Dec 30 04:27:22 2014
//
// Verilog Description of module AutoShift
//

module AutoShift (leds, latch, clk, data, osc_clk) /* synthesis syn_module_defined=1 */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(1[8:17])
    output [11:0]leds;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    input latch;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(6[8:13])
    input clk;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(7[7:10])
    input data;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(8[7:11])
    output osc_clk;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(4[8:15])
    
    wire osc_clk_c /* synthesis SET_AS_NETWORK=osc_clk_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(4[8:15])
    wire latch_c /* synthesis SET_AS_NETWORK=latch_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(6[8:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(7[7:10])
    wire data_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(8[7:11])
    wire [11:0]leds_c;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    wire [10:0]cnt;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(11[13:16])
    wire [31:0]tmp;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(12[13:16])
    wire [31:0]digit;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(13[13:18])
    wire n1105;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1104;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1106;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1099;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire [10:0]n50;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1194;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1098;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1341;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire [10:0]n87_adj_4;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1322;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1342;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n3;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1313;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1255;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1101;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1097;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1248;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1100;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n1300;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n7_adj_2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    wire n2;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    
    wire GND_net, VCC_net, n1321, n1349, n1334, n1284, n1348, 
        n1346, n1323, n1345, n1338, n1344, n1315, n1314, n1340, 
        n1339, n1257, n1256, n1253, n1347, n1337, n1249, n1336, 
        n1407, n1205, n1189, n1204, n1302, n21, n18, n9_adj_1, 
        n1335, n1333, n15, n1279, n1278;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX tmp_i2 (.D(tmp[0]), .CK(clk_c), .Q(tmp[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i2.GSR = "ENABLED";
    FD1S3AX tmp_i10 (.D(tmp[8]), .CK(clk_c), .Q(tmp[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i10.GSR = "ENABLED";
    FD1S3AX cnt_41__i5 (.D(n50[5]), .CK(osc_clk_c), .Q(n87_adj_4[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i5.GSR = "ENABLED";
    FD1S3AX cnt_41__i4 (.D(n50[4]), .CK(osc_clk_c), .Q(n87_adj_4[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i4.GSR = "ENABLED";
    FD1S3AX tmp_i9 (.D(tmp[7]), .CK(clk_c), .Q(tmp[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i9.GSR = "ENABLED";
    FD1S3AX digit_i1 (.D(tmp[0]), .CK(latch_c), .Q(digit[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i1.GSR = "ENABLED";
    FD1S3AX cnt_41__i3 (.D(n50[3]), .CK(osc_clk_c), .Q(n87_adj_4[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i3.GSR = "ENABLED";
    FD1S3AX cnt_41__i2 (.D(n50[2]), .CK(osc_clk_c), .Q(n87_adj_4[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i2.GSR = "ENABLED";
    FD1S3AX cnt_41__i1 (.D(n50[1]), .CK(osc_clk_c), .Q(n87_adj_4[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i1.GSR = "ENABLED";
    FD1S3AX tmp_i8 (.D(tmp[6]), .CK(clk_c), .Q(tmp[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i8.GSR = "ENABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "2.08";
    FD1S3AX tmp_i31 (.D(tmp[29]), .CK(clk_c), .Q(tmp[30]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i31.GSR = "ENABLED";
    FD1S3AX tmp_i30 (.D(tmp[28]), .CK(clk_c), .Q(tmp[29]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i30.GSR = "ENABLED";
    FD1S3AX tmp_i1 (.D(data_c), .CK(clk_c), .Q(tmp[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i1.GSR = "ENABLED";
    LUT4 n1111_bdd_4_lut_874_then_4_lut (.A(digit[18]), .B(cnt[8]), .C(cnt[9]), 
         .D(cnt[7]), .Z(n1336)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam n1111_bdd_4_lut_874_then_4_lut.init = 16'h0020;
    FD1S3AX cnt_41__i0 (.D(n50[0]), .CK(osc_clk_c), .Q(n87_adj_4[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i0.GSR = "ENABLED";
    FD1S3AX tmp_i7 (.D(tmp[5]), .CK(clk_c), .Q(tmp[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i7.GSR = "ENABLED";
    LUT4 n1111_bdd_4_lut_874_else_4_lut (.A(cnt[8]), .B(cnt[9]), .C(cnt[7]), 
         .D(digit[26]), .Z(n1335)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam n1111_bdd_4_lut_874_else_4_lut.init = 16'h1000;
    LUT4 n665_bdd_2_lut_870_3_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[10]), 
         .Z(n1256)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n665_bdd_2_lut_870_3_lut.init = 16'h1010;
    FD1S3AX tmp_i29 (.D(tmp[27]), .CK(clk_c), .Q(tmp[28]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i29.GSR = "ENABLED";
    LUT4 n1292_bdd_4_lut_then_4_lut (.A(digit[4]), .B(cnt[8]), .C(cnt[7]), 
         .D(cnt[6]), .Z(n1339)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam n1292_bdd_4_lut_then_4_lut.init = 16'h0200;
    FD1S3AX tmp_i28 (.D(tmp[26]), .CK(clk_c), .Q(tmp[27]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i28.GSR = "ENABLED";
    FD1S3AX tmp_i27 (.D(tmp[25]), .CK(clk_c), .Q(tmp[26]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i27.GSR = "ENABLED";
    LUT4 n1292_bdd_4_lut_else_4_lut (.A(digit[12]), .B(cnt[8]), .C(cnt[7]), 
         .D(cnt[6]), .Z(n1338)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam n1292_bdd_4_lut_else_4_lut.init = 16'h0020;
    FD1S3AX tmp_i6 (.D(tmp[4]), .CK(clk_c), .Q(tmp[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i6.GSR = "ENABLED";
    FD1S3AX tmp_i26 (.D(tmp[24]), .CK(clk_c), .Q(tmp[25]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i26.GSR = "ENABLED";
    FD1S3AX tmp_i25 (.D(tmp[23]), .CK(clk_c), .Q(tmp[24]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i25.GSR = "ENABLED";
    FD1S3AX tmp_i24 (.D(tmp[22]), .CK(clk_c), .Q(tmp[23]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i24.GSR = "ENABLED";
    FD1S3AX tmp_i5 (.D(tmp[3]), .CK(clk_c), .Q(tmp[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i5.GSR = "ENABLED";
    FD1S3AX tmp_i23 (.D(tmp[21]), .CK(clk_c), .Q(tmp[22]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i23.GSR = "ENABLED";
    L6MUX21 i823 (.D0(n1204), .D1(n1205), .SD(cnt[9]), .Z(leds_c[10]));
    FD1S3AX tmp_i22 (.D(tmp[20]), .CK(clk_c), .Q(tmp[21]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i22.GSR = "ENABLED";
    FD1S3AX tmp_i21 (.D(tmp[19]), .CK(clk_c), .Q(tmp[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i21.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[27]), .Z(n3)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    OB leds_pad_10 (.I(leds_c[10]), .O(leds[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    FD1S3AX tmp_i20 (.D(tmp[18]), .CK(clk_c), .Q(tmp[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i20.GSR = "ENABLED";
    FD1S3AX tmp_i4 (.D(tmp[2]), .CK(clk_c), .Q(tmp[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i4.GSR = "ENABLED";
    FD1S3AX tmp_i3 (.D(tmp[1]), .CK(clk_c), .Q(tmp[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i3.GSR = "ENABLED";
    FD1S3AX tmp_i19 (.D(tmp[17]), .CK(clk_c), .Q(tmp[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i19.GSR = "ENABLED";
    FD1S3AX tmp_i18 (.D(tmp[16]), .CK(clk_c), .Q(tmp[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i18.GSR = "ENABLED";
    FD1S3AX tmp_i17 (.D(tmp[15]), .CK(clk_c), .Q(tmp[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i17.GSR = "ENABLED";
    FD1S3AX tmp_i16 (.D(tmp[14]), .CK(clk_c), .Q(tmp[15]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i16.GSR = "ENABLED";
    LUT4 i471_4_lut_4_lut_4_lut_then_4_lut (.A(cnt[10]), .B(cnt[7]), .C(cnt[9]), 
         .D(cnt[8]), .Z(n1342)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i471_4_lut_4_lut_4_lut_then_4_lut.init = 16'h1450;
    LUT4 n1325_bdd_4_lut_else_4_lut (.A(digit[30]), .B(cnt[8]), .C(cnt[6]), 
         .D(cnt[7]), .Z(n1347)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam n1325_bdd_4_lut_else_4_lut.init = 16'h0800;
    LUT4 n1252_bdd_3_lut (.A(n1346), .B(n1249), .C(cnt[8]), .Z(n1253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1252_bdd_3_lut.init = 16'hcaca;
    LUT4 i471_4_lut_4_lut_4_lut_else_4_lut (.A(cnt[10]), .B(cnt[7]), .C(cnt[9]), 
         .D(cnt[8]), .Z(n1341)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C)))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i471_4_lut_4_lut_4_lut_else_4_lut.init = 16'h1050;
    PFUMX i866 (.BLUT(n1256), .ALUT(n1255), .C0(cnt[8]), .Z(n1257));
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[21]), 
         .D(cnt[10]), .Z(n1189)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut (.A(cnt[8]), .B(n21), .Z(leds_c[8])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(27[2] 61[9])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_1 (.A(cnt[7]), .B(cnt[6]), .C(digit[3]), .Z(n9_adj_1)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_1.init = 16'h1010;
    PFUMX i821 (.BLUT(n1105), .ALUT(n1104), .C0(cnt[8]), .Z(n1204));
    LUT4 cnt_7__bdd_4_lut_968 (.A(cnt[7]), .B(digit[9]), .C(cnt[9]), .D(cnt[6]), 
         .Z(n1249)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam cnt_7__bdd_4_lut_968.init = 16'h8000;
    LUT4 n665_bdd_4_lut_then_4_lut (.A(digit[25]), .B(cnt[6]), .C(cnt[7]), 
         .D(cnt[9]), .Z(n1345)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam n665_bdd_4_lut_then_4_lut.init = 16'h0308;
    FD1S3AX tmp_i15 (.D(tmp[13]), .CK(clk_c), .Q(tmp[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i15.GSR = "ENABLED";
    LUT4 cnt_6__bdd_4_lut_944 (.A(digit[0]), .B(cnt[7]), .C(cnt[10]), 
         .D(digit[16]), .Z(n1284)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A ((C+!(D))+!B))) */ ;
    defparam cnt_6__bdd_4_lut_944.init = 16'h2c20;
    LUT4 cnt_10__bdd_4_lut_901 (.A(cnt[10]), .B(n1334), .C(cnt[6]), .D(cnt[9]), 
         .Z(leds_c[1])) /* synthesis lut_function=(!(A+(B (C+(D))+!B (D)))) */ ;
    defparam cnt_10__bdd_4_lut_901.init = 16'h0015;
    FD1S3AX tmp_i14 (.D(tmp[12]), .CK(clk_c), .Q(tmp[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i14.GSR = "ENABLED";
    LUT4 cnt_10__bdd_4_lut_953 (.A(cnt[10]), .B(cnt[8]), .C(cnt[9]), .D(n1333), 
         .Z(leds_c[4])) /* synthesis lut_function=(!((B (C+!(D))+!B !(C))+!A)) */ ;
    defparam cnt_10__bdd_4_lut_953.init = 16'h2820;
    CCU2D cnt_41_add_4_5 (.A0(n87_adj_4[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n87_adj_4[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1098), .COUT(n1099), .S0(n50[3]), .S1(n50[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_5.INJECT1_0 = "NO";
    defparam cnt_41_add_4_5.INJECT1_1 = "NO";
    PFUMX i920 (.BLUT(n1322), .ALUT(n1321), .C0(cnt[8]), .Z(n1323));
    FD1S3AX tmp_i13 (.D(tmp[11]), .CK(clk_c), .Q(tmp[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i13.GSR = "ENABLED";
    LUT4 n1284_bdd_3_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[10]), .D(digit[24]), 
         .Z(n1302)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n1284_bdd_3_lut_4_lut.init = 16'h0100;
    LUT4 n665_bdd_3_lut_918_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[8]), 
         .D(digit[28]), .Z(n1314)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam n665_bdd_3_lut_918_4_lut.init = 16'h1000;
    LUT4 n665_bdd_4_lut_else_4_lut (.A(digit[25]), .B(cnt[6]), .C(cnt[7]), 
         .D(cnt[9]), .Z(n1344)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n665_bdd_4_lut_else_4_lut.init = 16'h0008;
    FD1S3AX tmp_i12 (.D(tmp[10]), .CK(clk_c), .Q(tmp[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i12.GSR = "ENABLED";
    LUT4 n1284_bdd_4_lut (.A(n1284), .B(cnt[6]), .C(n1302), .D(cnt[8]), 
         .Z(n1407)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n1284_bdd_4_lut.init = 16'h88f0;
    PFUMX i822 (.BLUT(n1106), .ALUT(n1189), .C0(cnt[8]), .Z(n1205));
    LUT4 i1_2_lut_adj_2 (.A(cnt[9]), .B(cnt[8]), .Z(n1194)) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i1_2_lut_adj_2.init = 16'h8888;
    PFUMX i863 (.BLUT(n1253), .ALUT(n1248), .C0(cnt[10]), .Z(leds_c[6]));
    LUT4 i1_2_lut_3_lut_adj_3 (.A(cnt[6]), .B(cnt[7]), .C(digit[11]), 
         .Z(n7_adj_2)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i1_2_lut_3_lut_adj_3.init = 16'h2020;
    FD1S3AX tmp_i11 (.D(tmp[9]), .CK(clk_c), .Q(tmp[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(64[8] 67[4])
    defparam tmp_i11.GSR = "ENABLED";
    FD1S3AX digit_i28 (.D(tmp[30]), .CK(latch_c), .Q(digit[30]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i28.GSR = "ENABLED";
    LUT4 n1303_bdd_3_lut (.A(n1407), .B(n1300), .C(cnt[9]), .Z(leds_c[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1303_bdd_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_3_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[5]), .D(cnt[10]), 
         .Z(n1106)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h2000;
    CCU2D cnt_41_add_4_3 (.A0(n87_adj_4[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n87_adj_4[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1097), .COUT(n1098), .S0(n50[1]), .S1(n50[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_3.INJECT1_0 = "NO";
    defparam cnt_41_add_4_3.INJECT1_1 = "NO";
    FD1S3AX digit_i27 (.D(tmp[29]), .CK(latch_c), .Q(digit[29]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i27.GSR = "ENABLED";
    FD1S3AX digit_i26 (.D(tmp[28]), .CK(latch_c), .Q(digit[28]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i26.GSR = "ENABLED";
    FD1S3AX digit_i25 (.D(tmp[27]), .CK(latch_c), .Q(digit[27]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i25.GSR = "ENABLED";
    FD1S3AX digit_i24 (.D(tmp[26]), .CK(latch_c), .Q(digit[26]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i24.GSR = "ENABLED";
    FD1S3AX digit_i23 (.D(tmp[25]), .CK(latch_c), .Q(digit[25]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i23.GSR = "ENABLED";
    OB leds_pad_11 (.I(leds_c[11]), .O(leds[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    FD1S3AX digit_i22 (.D(tmp[24]), .CK(latch_c), .Q(digit[24]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i22.GSR = "ENABLED";
    FD1S3AX digit_i21 (.D(tmp[22]), .CK(latch_c), .Q(digit[22]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i21.GSR = "ENABLED";
    FD1S3AX digit_i20 (.D(tmp[21]), .CK(latch_c), .Q(digit[21]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i20.GSR = "ENABLED";
    FD1S3AX digit_i19 (.D(tmp[20]), .CK(latch_c), .Q(digit[20]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i19.GSR = "ENABLED";
    CCU2D cnt_41_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n87_adj_4[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1097), .S1(n50[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41_add_4_1.INIT0 = 16'hF000;
    defparam cnt_41_add_4_1.INIT1 = 16'h0555;
    defparam cnt_41_add_4_1.INJECT1_0 = "NO";
    defparam cnt_41_add_4_1.INJECT1_1 = "NO";
    FD1S3AX digit_i18 (.D(tmp[19]), .CK(latch_c), .Q(digit[19]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i18.GSR = "ENABLED";
    FD1S3AX digit_i17 (.D(tmp[18]), .CK(latch_c), .Q(digit[18]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i17.GSR = "ENABLED";
    FD1S3AX digit_i16 (.D(tmp[17]), .CK(latch_c), .Q(digit[17]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i16.GSR = "ENABLED";
    FD1S3AX digit_i15 (.D(tmp[16]), .CK(latch_c), .Q(digit[16]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i15.GSR = "ENABLED";
    FD1S3AX digit_i14 (.D(tmp[14]), .CK(latch_c), .Q(digit[14]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i14.GSR = "ENABLED";
    FD1S3AX digit_i13 (.D(tmp[13]), .CK(latch_c), .Q(digit[13]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i13.GSR = "ENABLED";
    FD1S3AX digit_i12 (.D(tmp[12]), .CK(latch_c), .Q(digit[12]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i12.GSR = "ENABLED";
    FD1S3AX digit_i11 (.D(tmp[11]), .CK(latch_c), .Q(digit[11]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i11.GSR = "ENABLED";
    FD1S3AX digit_i10 (.D(tmp[10]), .CK(latch_c), .Q(digit[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i10.GSR = "ENABLED";
    FD1S3AX digit_i9 (.D(tmp[9]), .CK(latch_c), .Q(digit[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i9.GSR = "ENABLED";
    FD1S3AX digit_i8 (.D(tmp[8]), .CK(latch_c), .Q(digit[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i8.GSR = "ENABLED";
    FD1S3AX digit_i7 (.D(tmp[6]), .CK(latch_c), .Q(digit[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i7.GSR = "ENABLED";
    FD1S3AX digit_i6 (.D(tmp[5]), .CK(latch_c), .Q(digit[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i6.GSR = "ENABLED";
    FD1S3AX digit_i5 (.D(tmp[4]), .CK(latch_c), .Q(digit[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i5.GSR = "ENABLED";
    FD1S3AX digit_i4 (.D(tmp[3]), .CK(latch_c), .Q(digit[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i4.GSR = "ENABLED";
    FD1S3AX digit_i3 (.D(tmp[2]), .CK(latch_c), .Q(digit[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i3.GSR = "ENABLED";
    FD1S3AX digit_i2 (.D(tmp[1]), .CK(latch_c), .Q(digit[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(69[8] 71[4])
    defparam digit_i2.GSR = "ENABLED";
    FD1S3AX cnt_41__i10 (.D(n50[10]), .CK(osc_clk_c), .Q(cnt[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i10.GSR = "ENABLED";
    FD1S3AX cnt_41__i9 (.D(n50[9]), .CK(osc_clk_c), .Q(cnt[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i9.GSR = "ENABLED";
    FD1S3AX cnt_41__i8 (.D(n50[8]), .CK(osc_clk_c), .Q(cnt[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i8.GSR = "ENABLED";
    FD1S3AX cnt_41__i7 (.D(n50[7]), .CK(osc_clk_c), .Q(cnt[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i7.GSR = "ENABLED";
    FD1S3AX cnt_41__i6 (.D(n50[6]), .CK(osc_clk_c), .Q(cnt[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41__i6.GSR = "ENABLED";
    OB leds_pad_9 (.I(leds_c[9]), .O(leds[9]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB leds_pad_8 (.I(leds_c[8]), .O(leds[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB leds_pad_7 (.I(leds_c[7]), .O(leds[7]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB leds_pad_6 (.I(leds_c[6]), .O(leds[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB leds_pad_5 (.I(leds_c[5]), .O(leds[5]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB leds_pad_4 (.I(leds_c[4]), .O(leds[4]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB leds_pad_3 (.I(leds_c[3]), .O(leds[3]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB leds_pad_2 (.I(leds_c[2]), .O(leds[2]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB leds_pad_1 (.I(leds_c[1]), .O(leds[1]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB leds_pad_0 (.I(leds_c[0]), .O(leds[0]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(3[9:13])
    OB osc_clk_pad (.I(osc_clk_c), .O(osc_clk));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(4[8:15])
    IB latch_pad (.I(latch), .O(latch_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(6[8:13])
    IB clk_pad (.I(clk), .O(clk_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(7[7:10])
    IB data_pad (.I(data), .O(data_c));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(8[7:11])
    L6MUX21 i32 (.D0(n15), .D1(n18), .SD(cnt[10]), .Z(n21));
    PFUMX i913 (.BLUT(n1314), .ALUT(n1313), .C0(cnt[9]), .Z(n1315));
    LUT4 n1257_bdd_4_lut (.A(n1257), .B(cnt[9]), .C(n1337), .D(cnt[10]), 
         .Z(leds_c[7])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n1257_bdd_4_lut.init = 16'h22f0;
    LUT4 n1325_bdd_4_lut_then_4_lut (.A(digit[22]), .B(cnt[8]), .C(cnt[6]), 
         .D(cnt[7]), .Z(n1348)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam n1325_bdd_4_lut_then_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_adj_4 (.A(cnt[7]), .B(cnt[6]), .C(digit[19]), 
         .Z(n2)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i1_2_lut_3_lut_adj_4.init = 16'h2020;
    CCU2D cnt_41_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1101), 
          .S0(n50[9]), .S1(n50[10]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_11.INJECT1_0 = "NO";
    defparam cnt_41_add_4_11.INJECT1_1 = "NO";
    LUT4 n1315_bdd_3_lut (.A(n1315), .B(n1340), .C(cnt[10]), .Z(leds_c[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1315_bdd_3_lut.init = 16'hcaca;
    CCU2D cnt_41_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1100), 
          .COUT(n1101), .S0(n50[7]), .S1(n50[8]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_9.INJECT1_0 = "NO";
    defparam cnt_41_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_21 (.A(cnt[7]), .B(cnt[6]), .Z(n1333)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_21.init = 16'heeee;
    LUT4 i1_2_lut_rep_22 (.A(cnt[8]), .B(cnt[7]), .Z(n1334)) /* synthesis lut_function=(A (B)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i1_2_lut_rep_22.init = 16'h8888;
    CCU2D cnt_41_add_4_7 (.A0(n87_adj_4[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1099), .COUT(n1100), .S0(n50[5]), .S1(n50[6]));   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam cnt_41_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_7.INJECT1_0 = "NO";
    defparam cnt_41_add_4_7.INJECT1_1 = "NO";
    PFUMX i34 (.BLUT(n3), .ALUT(n2), .C0(cnt[9]), .Z(n15));
    PFUMX i33 (.BLUT(n7_adj_2), .ALUT(n9_adj_1), .C0(cnt[9]), .Z(n18));
    LUT4 i2_3_lut_3_lut_4_lut_adj_5 (.A(cnt[7]), .B(cnt[6]), .C(n1194), 
         .D(cnt[10]), .Z(leds_c[0])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_3_lut_4_lut_adj_5.init = 16'h1000;
    VLO i1 (.Z(GND_net));
    PFUMX i935 (.BLUT(n1347), .ALUT(n1348), .C0(cnt[9]), .Z(n1349));
    LUT4 n1327_bdd_3_lut (.A(n1349), .B(n1323), .C(cnt[10]), .Z(leds_c[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1327_bdd_3_lut.init = 16'hcaca;
    LUT4 n1197_bdd_3_lut_875_4_lut_4_lut (.A(cnt[6]), .B(cnt[9]), .C(digit[1]), 
         .D(n1334), .Z(n1248)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam n1197_bdd_3_lut_875_4_lut_4_lut.init = 16'h1000;
    LUT4 n1284_bdd_3_lut_902_4_lut_4_lut (.A(cnt[6]), .B(cnt[10]), .C(digit[8]), 
         .D(n1334), .Z(n1300)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam n1284_bdd_3_lut_902_4_lut_4_lut.init = 16'h1000;
    PFUMX i933 (.BLUT(n1344), .ALUT(n1345), .C0(digit[17]), .Z(n1346));
    LUT4 n665_bdd_3_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[9]), .D(digit[6]), 
         .Z(n1322)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam n665_bdd_3_lut_4_lut.init = 16'h8000;
    LUT4 n665_bdd_3_lut_885 (.A(cnt[7]), .B(cnt[9]), .C(cnt[8]), .Z(n1279)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n665_bdd_3_lut_885.init = 16'h8080;
    LUT4 n665_bdd_3_lut_912_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[8]), 
         .D(digit[20]), .Z(n1313)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam n665_bdd_3_lut_912_4_lut.init = 16'h0800;
    PFUMX i931 (.BLUT(n1341), .ALUT(n1342), .C0(cnt[6]), .Z(leds_c[2]));
    LUT4 n665_bdd_3_lut_919_4_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[14]), 
         .D(cnt[9]), .Z(n1321)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n665_bdd_3_lut_919_4_lut.init = 16'h0010;
    LUT4 n665_bdd_3_lut_882_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[8]), 
         .D(cnt[9]), .Z(n1278)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam n665_bdd_3_lut_882_4_lut.init = 16'h001f;
    LUT4 n665_bdd_2_lut_865_3_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[2]), 
         .Z(n1255)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam n665_bdd_2_lut_865_3_lut.init = 16'h8080;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i2_3_lut_4_lut (.A(cnt[6]), .B(cnt[7]), .C(cnt[10]), .D(digit[29]), 
         .Z(n1104)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i2_3_lut_4_lut.init = 16'h0200;
    PFUMX i929 (.BLUT(n1338), .ALUT(n1339), .C0(cnt[9]), .Z(n1340));
    LUT4 i2_3_lut_4_lut_adj_6 (.A(cnt[7]), .B(cnt[6]), .C(cnt[10]), .D(digit[13]), 
         .Z(n1105)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/justin/7SegClock/7SegClock/Lattice_FPGA/SevenSegClock/source/AutoShift.v(23[9:16])
    defparam i2_3_lut_4_lut_adj_6.init = 16'h8000;
    PFUMX i927 (.BLUT(n1335), .ALUT(n1336), .C0(cnt[6]), .Z(n1337));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i883 (.BLUT(n1279), .ALUT(n1278), .C0(cnt[10]), .Z(leds_c[3]));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

