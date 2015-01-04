// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.1.0.96
// Netlist written on Sat Jan 03 01:12:30 2015
//
// Verilog Description of module AutoShift
//

module AutoShift (leds, latch, clk, data, osc_clk) /* synthesis syn_module_defined=1 */ ;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(1[8:17])
    output [11:0]leds;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(3[9:13])
    input latch;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(6[8:13])
    input clk;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(7[7:10])
    input data;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(8[7:11])
    output osc_clk;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(4[8:15])
    
    wire osc_clk_c;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(4[8:15])
    wire latch_c;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(6[8:13])
    wire clk_c;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(7[7:10])
    wire data_c;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(8[7:11])
    wire [11:0]leds_c;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(3[9:13])
    wire [10:0]cnt;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(11[13:16])
    wire [31:0]tmp;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(12[13:16])
    wire [31:0]digit;   // c:/users/justinw7/dropbox/alarmclockproject/7segclock/lattice_fpga/sevensegclock/source/autoshift.v(13[13:18])
    
    wire GND_net, VCC_net, n1290, n15, n1289, n15_adj_1, n1103, 
        n1096, n1102, n1104, n22, n7;
    wire [10:0]n50;
    
    wire n18, n1188, n1099, n13, n1098, n21, n30, n1196, n1194, 
        n30_adj_2;
    wire [10:0]n87_adj_12;
    
    wire n10_adj_3, n14, n65, n1360, n1109, n1190, n3, n1260, 
        n1259, n1203, n1258, n1303, n51_adj_5, n18_adj_6, n9_adj_7, 
        n7_adj_8, n1191, n15_adj_9, n2, n1095, n1202, n15_adj_10, 
        n1200, n1187, n1307, n1306, n1112, n4, n1097, n869, 
        n1305, n1304, n1291;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX tmp_i2 (.D(tmp[0]), .CK(clk_c), .Q(tmp[1]));
    defparam tmp_i2.GSR = "DISABLED";
    FD1S3AX tmp_i10 (.D(tmp[8]), .CK(clk_c), .Q(tmp[9]));
    defparam tmp_i10.GSR = "DISABLED";
    FD1S3AX cnt_41__i5 (.D(n50[5]), .CK(osc_clk_c), .Q(n87_adj_12[5]));
    defparam cnt_41__i5.GSR = "DISABLED";
    FD1S3AX cnt_41__i4 (.D(n50[4]), .CK(osc_clk_c), .Q(n87_adj_12[4]));
    defparam cnt_41__i4.GSR = "DISABLED";
    FD1S3AX tmp_i9 (.D(tmp[7]), .CK(clk_c), .Q(tmp[8]));
    defparam tmp_i9.GSR = "DISABLED";
    FD1S3AX digit_i1 (.D(tmp[0]), .CK(latch_c), .Q(digit[0]));
    defparam digit_i1.GSR = "DISABLED";
    FD1S3AX cnt_41__i3 (.D(n50[3]), .CK(osc_clk_c), .Q(n87_adj_12[3]));
    defparam cnt_41__i3.GSR = "DISABLED";
    FD1S3AX cnt_41__i2 (.D(n50[2]), .CK(osc_clk_c), .Q(n87_adj_12[2]));
    defparam cnt_41__i2.GSR = "DISABLED";
    FD1S3AX cnt_41__i1 (.D(n50[1]), .CK(osc_clk_c), .Q(n87_adj_12[1]));
    defparam cnt_41__i1.GSR = "DISABLED";
    FD1S3AX tmp_i8 (.D(tmp[6]), .CK(clk_c), .Q(tmp[7]));
    defparam tmp_i8.GSR = "DISABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "2.08";
    FD1S3AX tmp_i31 (.D(tmp[29]), .CK(clk_c), .Q(tmp[30]));
    defparam tmp_i31.GSR = "DISABLED";
    FD1S3AX tmp_i30 (.D(tmp[28]), .CK(clk_c), .Q(tmp[29]));
    defparam tmp_i30.GSR = "DISABLED";
    FD1S3AX tmp_i7 (.D(tmp[5]), .CK(clk_c), .Q(tmp[6]));
    defparam tmp_i7.GSR = "DISABLED";
    IFS1P3DX tmp_i1 (.D(data_c), .SP(VCC_net), .SCLK(clk_c), .CD(GND_net), 
            .Q(tmp[0]));
    defparam tmp_i1.GSR = "DISABLED";
    FD1S3AX cnt_41__i0 (.D(n50[0]), .CK(osc_clk_c), .Q(n87_adj_12[0]));
    defparam cnt_41__i0.GSR = "DISABLED";
    FD1S3AX tmp_i29 (.D(tmp[27]), .CK(clk_c), .Q(tmp[28]));
    defparam tmp_i29.GSR = "DISABLED";
    L6MUX21 mux_33_Mux_6_i31 (.D0(n14), .D1(n15), .SD(n1200), .Z(leds_c[6]));
    LUT4 cnt_9__bdd_3_lut_882 (.A(digit[12]), .B(cnt[7]), .C(cnt[6]), 
         .Z(n1259)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam cnt_9__bdd_3_lut_882.init = 16'h0808;
    FD1S3AX tmp_i28 (.D(tmp[26]), .CK(clk_c), .Q(tmp[27]));
    defparam tmp_i28.GSR = "DISABLED";
    L6MUX21 i822 (.D0(n1202), .D1(n1203), .SD(cnt[9]), .Z(leds_c[10]));
    FD1S3AX tmp_i27 (.D(tmp[25]), .CK(clk_c), .Q(tmp[26]));
    defparam tmp_i27.GSR = "DISABLED";
    PFUMX i821 (.BLUT(n1104), .ALUT(n1187), .C0(cnt[8]), .Z(n1203));
    FD1S3AX tmp_i6 (.D(tmp[4]), .CK(clk_c), .Q(tmp[5]));
    defparam tmp_i6.GSR = "DISABLED";
    FD1S3AX tmp_i26 (.D(tmp[24]), .CK(clk_c), .Q(tmp[25]));
    defparam tmp_i26.GSR = "DISABLED";
    FD1S3AX tmp_i25 (.D(tmp[23]), .CK(clk_c), .Q(tmp[24]));
    defparam tmp_i25.GSR = "DISABLED";
    FD1S3AX tmp_i24 (.D(tmp[22]), .CK(clk_c), .Q(tmp[23]));
    defparam tmp_i24.GSR = "DISABLED";
    FD1S3AX tmp_i5 (.D(tmp[3]), .CK(clk_c), .Q(tmp[4]));
    defparam tmp_i5.GSR = "DISABLED";
    FD1S3AX tmp_i23 (.D(tmp[21]), .CK(clk_c), .Q(tmp[22]));
    defparam tmp_i23.GSR = "DISABLED";
    PFUMX i317 (.BLUT(n1112), .ALUT(n1196), .C0(cnt[10]), .Z(n15));
    PFUMX mux_33_Mux_11_i30 (.BLUT(n22), .ALUT(n1190), .C0(cnt[9]), .Z(n30_adj_2));
    FD1S3AX tmp_i22 (.D(tmp[20]), .CK(clk_c), .Q(tmp[21]));
    defparam tmp_i22.GSR = "DISABLED";
    FD1S3AX tmp_i21 (.D(tmp[19]), .CK(clk_c), .Q(tmp[20]));
    defparam tmp_i21.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[3]), .Z(n9_adj_7)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    PFUMX mux_33_Mux_9_i15 (.BLUT(n7), .ALUT(n1191), .C0(cnt[9]), .Z(n15_adj_1));
    OB leds_pad_10 (.I(leds_c[10]), .O(leds[10]));
    FD1S3AX tmp_i20 (.D(tmp[18]), .CK(clk_c), .Q(tmp[19]));
    defparam tmp_i20.GSR = "DISABLED";
    FD1S3AX tmp_i4 (.D(tmp[2]), .CK(clk_c), .Q(tmp[3]));
    defparam tmp_i4.GSR = "DISABLED";
    FD1S3AX tmp_i3 (.D(tmp[1]), .CK(clk_c), .Q(tmp[2]));
    defparam tmp_i3.GSR = "DISABLED";
    FD1S3AX tmp_i19 (.D(tmp[17]), .CK(clk_c), .Q(tmp[18]));
    defparam tmp_i19.GSR = "DISABLED";
    FD1S3AX tmp_i18 (.D(tmp[16]), .CK(clk_c), .Q(tmp[17]));
    defparam tmp_i18.GSR = "DISABLED";
    FD1S3AX tmp_i17 (.D(tmp[15]), .CK(clk_c), .Q(tmp[16]));
    defparam tmp_i17.GSR = "DISABLED";
    FD1S3AX tmp_i16 (.D(tmp[14]), .CK(clk_c), .Q(tmp[15]));
    defparam tmp_i16.GSR = "DISABLED";
    LUT4 i475_2_lut_3_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[14]), 
         .D(cnt[8]), .Z(n22)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i475_2_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX i820 (.BLUT(n1103), .ALUT(n1102), .C0(cnt[8]), .Z(n1202));
    LUT4 i50_4_lut (.A(cnt[7]), .B(cnt[10]), .C(digit[16]), .D(digit[0]), 
         .Z(n51_adj_5)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;
    defparam i50_4_lut.init = 16'h6420;
    VLO i1 (.Z(GND_net));
    PFUMX i34 (.BLUT(n3), .ALUT(n2), .C0(cnt[9]), .Z(n15_adj_9));
    FD1S3AX tmp_i15 (.D(tmp[13]), .CK(clk_c), .Q(tmp[14]));
    defparam tmp_i15.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[24]), 
         .D(cnt[10]), .Z(n1188)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i477_4_lut_4_lut (.A(cnt[8]), .B(n1305), .C(cnt[9]), .D(cnt[10]), 
         .Z(leds_c[4])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(C (D)))) */ ;
    defparam i477_4_lut_4_lut.init = 16'h5800;
    FD1S3AX tmp_i14 (.D(tmp[12]), .CK(clk_c), .Q(tmp[13]));
    defparam tmp_i14.GSR = "DISABLED";
    PFUMX mux_33_Mux_6_i14 (.BLUT(n10_adj_3), .ALUT(n13), .C0(cnt[8]), 
          .Z(n14));
    LUT4 i1_2_lut_3_lut_adj_1 (.A(cnt[7]), .B(cnt[6]), .C(digit[27]), 
         .Z(n3)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_1.init = 16'h8080;
    FD1S3AX tmp_i13 (.D(tmp[11]), .CK(clk_c), .Q(tmp[12]));
    defparam tmp_i13.GSR = "DISABLED";
    PFUMX i33 (.BLUT(n7_adj_8), .ALUT(n9_adj_7), .C0(cnt[9]), .Z(n18_adj_6));
    FD1S3AX tmp_i12 (.D(tmp[10]), .CK(clk_c), .Q(tmp[11]));
    defparam tmp_i12.GSR = "DISABLED";
    FD1S3AX tmp_i11 (.D(tmp[9]), .CK(clk_c), .Q(tmp[10]));
    defparam tmp_i11.GSR = "DISABLED";
    FD1S3AX digit_i28 (.D(tmp[30]), .CK(latch_c), .Q(digit[30]));
    defparam digit_i28.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_2 (.A(cnt[7]), .B(cnt[6]), .C(digit[2]), .Z(n21)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_2.init = 16'h8080;
    FD1S3AX digit_i27 (.D(tmp[29]), .CK(latch_c), .Q(digit[29]));
    defparam digit_i27.GSR = "DISABLED";
    FD1S3AX digit_i26 (.D(tmp[28]), .CK(latch_c), .Q(digit[28]));
    defparam digit_i26.GSR = "DISABLED";
    FD1S3AX digit_i25 (.D(tmp[27]), .CK(latch_c), .Q(digit[27]));
    defparam digit_i25.GSR = "DISABLED";
    FD1S3AX digit_i24 (.D(tmp[26]), .CK(latch_c), .Q(digit[26]));
    defparam digit_i24.GSR = "DISABLED";
    FD1S3AX digit_i23 (.D(tmp[25]), .CK(latch_c), .Q(digit[25]));
    defparam digit_i23.GSR = "DISABLED";
    OB leds_pad_11 (.I(leds_c[11]), .O(leds[11]));
    FD1S3AX digit_i22 (.D(tmp[24]), .CK(latch_c), .Q(digit[24]));
    defparam digit_i22.GSR = "DISABLED";
    FD1S3AX digit_i21 (.D(tmp[22]), .CK(latch_c), .Q(digit[22]));
    defparam digit_i21.GSR = "DISABLED";
    FD1S3AX digit_i20 (.D(tmp[21]), .CK(latch_c), .Q(digit[21]));
    defparam digit_i20.GSR = "DISABLED";
    FD1S3AX digit_i19 (.D(tmp[20]), .CK(latch_c), .Q(digit[20]));
    defparam digit_i19.GSR = "DISABLED";
    FD1S3AX digit_i18 (.D(tmp[19]), .CK(latch_c), .Q(digit[19]));
    defparam digit_i18.GSR = "DISABLED";
    FD1S3AX digit_i17 (.D(tmp[18]), .CK(latch_c), .Q(digit[18]));
    defparam digit_i17.GSR = "DISABLED";
    FD1S3AX digit_i16 (.D(tmp[17]), .CK(latch_c), .Q(digit[17]));
    defparam digit_i16.GSR = "DISABLED";
    FD1S3AX digit_i15 (.D(tmp[16]), .CK(latch_c), .Q(digit[16]));
    defparam digit_i15.GSR = "DISABLED";
    FD1S3AX digit_i14 (.D(tmp[14]), .CK(latch_c), .Q(digit[14]));
    defparam digit_i14.GSR = "DISABLED";
    FD1S3AX digit_i13 (.D(tmp[13]), .CK(latch_c), .Q(digit[13]));
    defparam digit_i13.GSR = "DISABLED";
    FD1S3AX digit_i12 (.D(tmp[12]), .CK(latch_c), .Q(digit[12]));
    defparam digit_i12.GSR = "DISABLED";
    FD1S3AX digit_i11 (.D(tmp[11]), .CK(latch_c), .Q(digit[11]));
    defparam digit_i11.GSR = "DISABLED";
    FD1S3AX digit_i10 (.D(tmp[10]), .CK(latch_c), .Q(digit[10]));
    defparam digit_i10.GSR = "DISABLED";
    FD1S3AX digit_i9 (.D(tmp[9]), .CK(latch_c), .Q(digit[9]));
    defparam digit_i9.GSR = "DISABLED";
    FD1S3AX digit_i8 (.D(tmp[8]), .CK(latch_c), .Q(digit[8]));
    defparam digit_i8.GSR = "DISABLED";
    FD1S3AX digit_i7 (.D(tmp[6]), .CK(latch_c), .Q(digit[6]));
    defparam digit_i7.GSR = "DISABLED";
    FD1S3AX digit_i6 (.D(tmp[5]), .CK(latch_c), .Q(digit[5]));
    defparam digit_i6.GSR = "DISABLED";
    FD1S3AX digit_i5 (.D(tmp[4]), .CK(latch_c), .Q(digit[4]));
    defparam digit_i5.GSR = "DISABLED";
    FD1S3AX digit_i4 (.D(tmp[3]), .CK(latch_c), .Q(digit[3]));
    defparam digit_i4.GSR = "DISABLED";
    FD1S3AX digit_i3 (.D(tmp[2]), .CK(latch_c), .Q(digit[2]));
    defparam digit_i3.GSR = "DISABLED";
    FD1S3AX digit_i2 (.D(tmp[1]), .CK(latch_c), .Q(digit[1]));
    defparam digit_i2.GSR = "DISABLED";
    FD1S3AX cnt_41__i10 (.D(n50[10]), .CK(osc_clk_c), .Q(cnt[10]));
    defparam cnt_41__i10.GSR = "DISABLED";
    FD1S3AX cnt_41__i9 (.D(n50[9]), .CK(osc_clk_c), .Q(cnt[9]));
    defparam cnt_41__i9.GSR = "DISABLED";
    FD1S3AX cnt_41__i8 (.D(n50[8]), .CK(osc_clk_c), .Q(cnt[8]));
    defparam cnt_41__i8.GSR = "DISABLED";
    FD1S3AX cnt_41__i7 (.D(n50[7]), .CK(osc_clk_c), .Q(cnt[7]));
    defparam cnt_41__i7.GSR = "DISABLED";
    FD1S3AX cnt_41__i6 (.D(n50[6]), .CK(osc_clk_c), .Q(cnt[6]));
    defparam cnt_41__i6.GSR = "DISABLED";
    PFUMX mux_33_Mux_7_i31 (.BLUT(n15_adj_10), .ALUT(n30), .C0(cnt[10]), 
          .Z(leds_c[7]));
    OB leds_pad_9 (.I(leds_c[9]), .O(leds[9]));
    OB leds_pad_8 (.I(leds_c[8]), .O(leds[8]));
    OB leds_pad_7 (.I(leds_c[7]), .O(leds[7]));
    OB leds_pad_6 (.I(leds_c[6]), .O(leds[6]));
    OB leds_pad_5 (.I(leds_c[5]), .O(leds[5]));
    OB leds_pad_4 (.I(leds_c[4]), .O(leds[4]));
    OB leds_pad_3 (.I(leds_c[3]), .O(leds[3]));
    OB leds_pad_2 (.I(leds_c[2]), .O(leds[2]));
    OB leds_pad_1 (.I(leds_c[1]), .O(leds[1]));
    OB leds_pad_0 (.I(leds_c[0]), .O(leds[0]));
    OB osc_clk_pad (.I(osc_clk_c), .O(osc_clk));
    IB latch_pad (.I(latch), .O(latch_c));
    IB clk_pad (.I(clk), .O(clk_c));
    IB data_pad (.I(data), .O(data_c));
    LUT4 i850_4_lut (.A(cnt[10]), .B(cnt[6]), .C(cnt[9]), .D(n1304), 
         .Z(leds_c[1])) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C)))) */ ;
    defparam i850_4_lut.init = 16'h0105;
    LUT4 i845_2_lut_3_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[9]), .D(cnt[8]), 
         .Z(n869)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i845_2_lut_3_lut_4_lut.init = 16'h010f;
    LUT4 i1_2_lut_3_lut_adj_3 (.A(cnt[7]), .B(cnt[6]), .C(digit[9]), .Z(n13)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_3.init = 16'h8080;
    LUT4 i2_3_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[10]), .D(digit[13]), 
         .Z(n1103)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_4 (.A(cnt[7]), .B(cnt[6]), .C(cnt[10]), .D(digit[5]), 
         .Z(n1104)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_4.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_adj_5 (.A(cnt[7]), .B(cnt[6]), .C(digit[10]), 
         .Z(n18)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_5.init = 16'h1010;
    PFUMX i863 (.BLUT(n1259), .ALUT(n1258), .C0(cnt[9]), .Z(n1260));
    LUT4 i1_2_lut (.A(cnt[10]), .B(digit[8]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i300_4_lut (.A(n1360), .B(n1303), .C(cnt[9]), .D(n4), .Z(leds_c[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i300_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_3_lut_adj_6 (.A(cnt[7]), .B(cnt[6]), .C(digit[17]), 
         .Z(n10_adj_3)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_6.init = 16'h1010;
    PFUMX mux_33_Mux_3_i31 (.BLUT(n1194), .ALUT(n869), .C0(cnt[10]), .Z(leds_c[3]));
    LUT4 i2_3_lut_4_lut_adj_7 (.A(n1304), .B(cnt[6]), .C(digit[1]), .D(cnt[9]), 
         .Z(n1196)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_7.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_adj_8 (.A(cnt[7]), .B(cnt[6]), .C(digit[19]), 
         .Z(n2)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_8.init = 16'h2020;
    CCU2D cnt_41_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1099), 
          .S0(n50[9]), .S1(n50[10]));
    defparam cnt_41_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_11.INJECT1_0 = "NO";
    defparam cnt_41_add_4_11.INJECT1_1 = "NO";
    LUT4 mux_33_Mux_9_i31_4_lut (.A(n15_adj_1), .B(n1260), .C(cnt[10]), 
         .D(cnt[8]), .Z(leds_c[9])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_33_Mux_9_i31_4_lut.init = 16'h0aca;
    LUT4 i483_2_lut_3_lut_4_lut (.A(cnt[7]), .B(cnt[6]), .C(digit[28]), 
         .D(cnt[8]), .Z(n7)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i483_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(cnt[7]), .B(cnt[6]), .C(digit[21]), 
         .D(cnt[10]), .Z(n1187)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(cnt[7]), .B(cnt[6]), .C(digit[6]), 
         .D(cnt[8]), .Z(n1190)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(cnt[7]), .B(cnt[6]), .C(digit[20]), 
         .D(cnt[8]), .Z(n1191)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_11.init = 16'h0080;
    LUT4 i1_2_lut_rep_23 (.A(cnt[7]), .B(cnt[6]), .Z(n1305)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_23.init = 16'heeee;
    LUT4 i478_4_lut (.A(n18), .B(cnt[9]), .C(n21), .D(cnt[8]), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i478_4_lut.init = 16'h3022;
    CCU2D cnt_41_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1098), 
          .COUT(n1099), .S0(n50[7]), .S1(n50[8]));
    defparam cnt_41_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_9.INJECT1_0 = "NO";
    defparam cnt_41_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_12 (.A(cnt[9]), .B(cnt[8]), .C(cnt[7]), .Z(n1194)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_12.init = 16'h8080;
    LUT4 i2_3_lut_4_lut_adj_13 (.A(cnt[9]), .B(cnt[8]), .C(n1305), .D(cnt[10]), 
         .Z(leds_c[0])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_13.init = 16'h0800;
    LUT4 cnt_9__bdd_3_lut_883 (.A(digit[22]), .B(cnt[6]), .C(cnt[7]), 
         .Z(n1289)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam cnt_9__bdd_3_lut_883.init = 16'h0808;
    CCU2D cnt_41_add_4_7 (.A0(n87_adj_12[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1097), .COUT(n1098), .S0(n50[5]), .S1(n50[6]));
    defparam cnt_41_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_7.INJECT1_0 = "NO";
    defparam cnt_41_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_41_add_4_3 (.A0(n87_adj_12[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n87_adj_12[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1095), .COUT(n1096), .S0(n50[1]), .S1(n50[2]));
    defparam cnt_41_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_3.INJECT1_0 = "NO";
    defparam cnt_41_add_4_3.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(cnt[6]), .B(digit[26]), .C(cnt[7]), .Z(n1109)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut.init = 16'h4040;
    LUT4 cnt_9__bdd_3_lut (.A(digit[30]), .B(cnt[6]), .C(cnt[7]), .Z(n1290)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam cnt_9__bdd_3_lut.init = 16'h2020;
    LUT4 i2_3_lut_4_lut_adj_14 (.A(cnt[6]), .B(cnt[7]), .C(cnt[10]), .D(digit[29]), 
         .Z(n1102)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_14.init = 16'h0200;
    PFUMX i884 (.BLUT(n1290), .ALUT(n1289), .C0(cnt[9]), .Z(n1291));
    LUT4 i2_3_lut_4_lut_adj_15 (.A(cnt[6]), .B(cnt[7]), .C(digit[25]), 
         .D(cnt[8]), .Z(n1112)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_15.init = 16'h0020;
    LUT4 i1_4_lut (.A(cnt[8]), .B(n1109), .C(n65), .D(cnt[9]), .Z(n15_adj_10)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h5044;
    LUT4 i1_2_lut_3_lut_adj_16 (.A(cnt[6]), .B(cnt[7]), .C(digit[11]), 
         .Z(n7_adj_8)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_16.init = 16'h2020;
    LUT4 mux_33_Mux_11_i31_4_lut (.A(n1291), .B(n30_adj_2), .C(cnt[10]), 
         .D(cnt[8]), .Z(leds_c[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_33_Mux_11_i31_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_adj_17 (.A(cnt[6]), .B(cnt[7]), .C(digit[18]), 
         .Z(n65)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_17.init = 16'h2020;
    LUT4 cnt_6__bdd_4_lut (.A(cnt[6]), .B(n51_adj_5), .C(n1188), .D(cnt[8]), 
         .Z(n1360)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam cnt_6__bdd_4_lut.init = 16'h88f0;
    LUT4 i1_2_lut_rep_21_3_lut (.A(cnt[8]), .B(cnt[7]), .C(cnt[6]), .Z(n1303)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_21_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_22 (.A(cnt[8]), .B(cnt[7]), .Z(n1304)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_22.init = 16'h8888;
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D cnt_41_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n87_adj_12[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1095), .S1(n50[0]));
    defparam cnt_41_add_4_1.INIT0 = 16'hF000;
    defparam cnt_41_add_4_1.INIT1 = 16'h0555;
    defparam cnt_41_add_4_1.INJECT1_0 = "NO";
    defparam cnt_41_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_41_add_4_5 (.A0(n87_adj_12[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n87_adj_12[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1096), .COUT(n1097), .S0(n50[3]), .S1(n50[4]));
    defparam cnt_41_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_41_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_41_add_4_5.INJECT1_0 = "NO";
    defparam cnt_41_add_4_5.INJECT1_1 = "NO";
    LUT4 i847_2_lut (.A(cnt[10]), .B(cnt[9]), .Z(n1200)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i847_2_lut.init = 16'hbbbb;
    LUT4 n15_bdd_4_lut (.A(n15_adj_9), .B(n18_adj_6), .C(cnt[10]), .D(cnt[8]), 
         .Z(leds_c[8])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n15_bdd_4_lut.init = 16'h00ca;
    PFUMX i892 (.BLUT(n1306), .ALUT(n1307), .C0(cnt[7]), .Z(leds_c[2]));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i471_4_lut_else_4_lut (.A(cnt[10]), .B(cnt[9]), .Z(n1306)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i471_4_lut_else_4_lut.init = 16'h4444;
    LUT4 cnt_9__bdd_3_lut_862 (.A(digit[4]), .B(cnt[7]), .C(cnt[6]), .Z(n1258)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam cnt_9__bdd_3_lut_862.init = 16'h2020;
    LUT4 i471_4_lut_then_4_lut (.A(cnt[10]), .B(cnt[9]), .C(cnt[6]), .D(cnt[8]), 
         .Z(n1307)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;
    defparam i471_4_lut_then_4_lut.init = 16'h1044;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

