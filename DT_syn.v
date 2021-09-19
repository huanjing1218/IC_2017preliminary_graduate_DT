
module DT_DW01_dec_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  CLKINVX1 U1 ( .A(n16), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U3 ( .A(A[10]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[11]), .Y(n3) );
  AO21X1 U5 ( .A0(n5), .A1(A[9]), .B0(n6), .Y(SUM[9]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[8]), .B0(n5), .Y(SUM[8]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[7]), .B0(n7), .Y(SUM[7]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[6]), .B0(n8), .Y(SUM[6]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[5]), .B0(n9), .Y(SUM[5]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[4]), .B0(n10), .Y(SUM[4]) );
  OAI2BB1X1 U11 ( .A0N(n12), .A1N(A[3]), .B0(n11), .Y(SUM[3]) );
  OAI2BB1X1 U12 ( .A0N(n13), .A1N(A[2]), .B0(n12), .Y(SUM[2]) );
  OAI2BB1X1 U13 ( .A0N(A[0]), .A1N(A[1]), .B0(n13), .Y(SUM[1]) );
  XOR2X1 U14 ( .A(A[13]), .B(n14), .Y(SUM[13]) );
  NOR2X1 U15 ( .A(A[12]), .B(n15), .Y(n14) );
  XNOR2X1 U16 ( .A(A[12]), .B(n15), .Y(SUM[12]) );
  OAI21XL U17 ( .A0(n1), .A1(n3), .B0(n15), .Y(SUM[11]) );
  NAND2X1 U18 ( .A(n1), .B(n3), .Y(n15) );
  OAI21XL U19 ( .A0(n6), .A1(n4), .B0(n16), .Y(SUM[10]) );
  NAND2X1 U20 ( .A(n6), .B(n4), .Y(n16) );
  NOR2X1 U21 ( .A(n5), .B(A[9]), .Y(n6) );
  OR2X1 U22 ( .A(n7), .B(A[8]), .Y(n5) );
  OR2X1 U23 ( .A(n8), .B(A[7]), .Y(n7) );
  OR2X1 U24 ( .A(n9), .B(A[6]), .Y(n8) );
  OR2X1 U25 ( .A(n10), .B(A[5]), .Y(n9) );
  OR2X1 U26 ( .A(n11), .B(A[4]), .Y(n10) );
  OR2X1 U27 ( .A(n12), .B(A[3]), .Y(n11) );
  OR2X1 U28 ( .A(n13), .B(A[2]), .Y(n12) );
  NAND2BX1 U29 ( .AN(A[1]), .B(SUM[0]), .Y(n13) );
endmodule


module DT_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module DT_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DT_DW01_inc_3 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX2 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CMPR22X2 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CMPR22X2 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DT_DW01_inc_4 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd;
  wire   N37, N38, N39, N40, n449, N101, N102, N103, N104, N105, N106, N107,
         N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, N118,
         N119, N120, N121, N122, N123, N124, N125, N126, N127, N143, N145,
         N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156,
         N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N185,
         N186, N187, N188, N189, N190, N214, N215, N216, N217, N218, N219,
         N220, N221, N222, N223, N270, N272, N273, N274, N275, N276, N277,
         N278, N279, N379, N380, N381, N382, N383, N384, N385, N386, N387,
         N388, N389, N390, N391, N392, N427, n181, n182, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, \r371/carry[7] , \r371/carry[6] , \r371/carry[5] ,
         \r371/carry[4] , \r371/carry[3] , \r368/carry[2] , \r368/carry[3] ,
         \r368/carry[4] , \r368/carry[5] , \r368/carry[6] , \r368/carry[7] ,
         \r368/carry[9] , \r368/carry[10] , \r368/carry[11] , \r368/carry[12] ,
         \r368/carry[13] , n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448;
  wire   [3:0] next;
  wire   [3:0] state;

  DFFRX4 \res_addr_reg[13]  ( .D(n237), .CK(clk), .RN(reset), .Q(res_addr[13])
         );
  DFFRX4 \res_addr_reg[12]  ( .D(n225), .CK(clk), .RN(reset), .Q(res_addr[12]), 
        .QN(n248) );
  DFFRX4 \res_addr_reg[11]  ( .D(n226), .CK(clk), .RN(reset), .Q(res_addr[11])
         );
  DFFRX4 \res_addr_reg[10]  ( .D(n227), .CK(clk), .RN(reset), .Q(res_addr[10])
         );
  DFFRX4 \res_addr_reg[2]  ( .D(n235), .CK(clk), .RN(n288), .Q(res_addr[2]) );
  DFFRX4 \res_addr_reg[3]  ( .D(n234), .CK(clk), .RN(reset), .Q(res_addr[3])
         );
  DFFRX4 \res_addr_reg[4]  ( .D(n233), .CK(clk), .RN(n287), .Q(res_addr[4]) );
  DFFRX4 \res_addr_reg[5]  ( .D(n232), .CK(clk), .RN(n287), .Q(res_addr[5]) );
  DFFRX4 \res_addr_reg[6]  ( .D(n231), .CK(clk), .RN(n287), .Q(res_addr[6]) );
  DFFRX4 \res_addr_reg[7]  ( .D(n230), .CK(clk), .RN(n287), .Q(res_addr[7]) );
  DFFRX4 \res_addr_reg[8]  ( .D(n229), .CK(clk), .RN(n287), .Q(res_addr[8]) );
  DFFRX4 \res_addr_reg[9]  ( .D(n228), .CK(clk), .RN(n287), .Q(res_addr[9]) );
  DT_DW01_dec_0 sub_118 ( .A(res_addr), .SUM({N392, N391, N390, N389, N388, 
        N387, N386, N385, N384, N383, N382, N381, N380, N379}) );
  DT_DW01_inc_0 add_72 ( .A(sti_addr), .SUM({N223, N222, N221, N220, N219, 
        N218, N217, N216, N215, N214}) );
  DT_DW01_inc_1 add_65 ( .A(res_do), .SUM({N190, N189, N188, N187, N186, N185, 
        N184, N183}) );
  DT_DW01_inc_2 r377 ( .A(res_di), .SUM({N279, N278, N277, N276, N275, N274, 
        N273, N272}) );
  DT_DW01_inc_3 r372 ( .A({1'b0, res_di}), .SUM({N270, N182, N181, N180, N179, 
        N178, N177, N176, N175}) );
  DT_DW01_inc_4 r369 ( .A(res_addr), .SUM({N127, N126, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114}) );
  DFFRX2 \sti_addr_reg[9]  ( .D(n222), .CK(clk), .RN(n287), .Q(sti_addr[9]) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n215), .CK(clk), .RN(n288), .Q(sti_addr[6]) );
  DFFRX2 \sti_addr_reg[7]  ( .D(n214), .CK(clk), .RN(n288), .Q(sti_addr[7]) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n213), .CK(clk), .RN(n288), .Q(sti_addr[8]) );
  DFFRX2 \sti_addr_reg[1]  ( .D(n220), .CK(clk), .RN(n287), .Q(sti_addr[1]) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n219), .CK(clk), .RN(n287), .Q(sti_addr[2]) );
  DFFRX2 \sti_addr_reg[3]  ( .D(n218), .CK(clk), .RN(n288), .Q(sti_addr[3]) );
  DFFRX2 \sti_addr_reg[4]  ( .D(n217), .CK(clk), .RN(n288), .Q(sti_addr[4]) );
  DFFRX2 \sti_addr_reg[5]  ( .D(n216), .CK(clk), .RN(n288), .Q(sti_addr[5]) );
  DFFRX2 \sti_addr_reg[0]  ( .D(n221), .CK(clk), .RN(n287), .Q(sti_addr[0]) );
  DFFSX1 \index_reg[2]  ( .D(n198), .CK(clk), .SN(reset), .Q(N39), .QN(n193)
         );
  DFFSX1 \index_reg[3]  ( .D(n199), .CK(clk), .SN(reset), .Q(N40), .QN(n194)
         );
  DFFSX1 \index_reg[1]  ( .D(n200), .CK(clk), .SN(reset), .Q(N38), .QN(n195)
         );
  DFFRX1 \state_reg[0]  ( .D(n203), .CK(clk), .RN(reset), .Q(state[0]), .QN(
        n203) );
  DFFRX2 \res_do_reg[1]  ( .D(n210), .CK(clk), .RN(n288), .Q(res_do[1]), .QN(
        n388) );
  DFFRX2 \res_do_reg[0]  ( .D(n212), .CK(clk), .RN(n288), .Q(res_do[0]), .QN(
        n380) );
  DFFSX1 \index_reg[0]  ( .D(n201), .CK(clk), .SN(reset), .Q(N37), .QN(n196)
         );
  DFFRX2 \res_do_reg[2]  ( .D(n209), .CK(clk), .RN(reset), .Q(res_do[2]), .QN(
        n241) );
  DFFRX2 \res_do_reg[7]  ( .D(n211), .CK(clk), .RN(n288), .Q(res_do[7]), .QN(
        n243) );
  DFFRX2 \res_do_reg[3]  ( .D(n208), .CK(clk), .RN(reset), .Q(res_do[3]), .QN(
        n239) );
  DFFRX1 \state_reg[1]  ( .D(next[1]), .CK(clk), .RN(reset), .Q(state[1]) );
  DFFRX1 \res_addr_reg[1]  ( .D(n236), .CK(clk), .RN(reset), .Q(n449), .QN(
        n247) );
  DFFRX1 \res_addr_reg[0]  ( .D(n238), .CK(clk), .RN(reset), .Q(N143), .QN(
        n246) );
  DFFRX2 \state_reg[3]  ( .D(n202), .CK(clk), .RN(reset), .Q(state[3]), .QN(
        n448) );
  DFFRX2 \state_reg[2]  ( .D(next[2]), .CK(clk), .RN(n287), .Q(state[2]), .QN(
        n298) );
  DFFSX2 sti_rd_reg ( .D(n204), .CK(clk), .SN(reset), .Q(sti_rd), .QN(n191) );
  DFFRX2 done_reg ( .D(n197), .CK(clk), .RN(reset), .Q(done), .QN(n192) );
  DFFRX2 res_rd_reg ( .D(n223), .CK(clk), .RN(n287), .Q(res_rd), .QN(n182) );
  DFFRX2 res_wr_reg ( .D(n224), .CK(clk), .RN(n287), .Q(res_wr), .QN(n181) );
  DFFRX2 \res_do_reg[6]  ( .D(n205), .CK(clk), .RN(n288), .Q(res_do[6]), .QN(
        n245) );
  DFFRX2 \res_do_reg[5]  ( .D(n206), .CK(clk), .RN(n288), .Q(res_do[5]), .QN(
        n244) );
  DFFRX2 \res_do_reg[4]  ( .D(n207), .CK(clk), .RN(n288), .Q(res_do[4]), .QN(
        n240) );
  OAI32X4 U204 ( .A0(n240), .A1(N179), .A2(n426), .B0(N180), .B1(n244), .Y(
        n430) );
  AND2XL U205 ( .A(N182), .B(n385), .Y(n253) );
  OR4X6 U206 ( .A(n402), .B(n403), .C(n404), .D(n405), .Y(n381) );
  OAI32X1 U207 ( .A0(n425), .A1(n426), .A2(n427), .B0(n428), .B1(n429), .Y(
        n423) );
  OR3X2 U208 ( .A(n254), .B(n255), .C(n242), .Y(n208) );
  OAI221XL U209 ( .A0(n378), .A1(n379), .B0(n380), .B1(n381), .C0(n382), .Y(
        n212) );
  NAND3X1 U210 ( .A(n256), .B(n257), .C(n258), .Y(n242) );
  NAND2X2 U211 ( .A(n372), .B(n406), .Y(n355) );
  AND4XL U212 ( .A(n352), .B(n353), .C(n354), .D(n355), .Y(n351) );
  OAI21X1 U213 ( .A0(n309), .A1(n343), .B0(n344), .Y(n352) );
  NOR3X1 U214 ( .A(n251), .B(n252), .C(n253), .Y(n387) );
  OR2XL U215 ( .A(n386), .B(n378), .Y(n249) );
  NAND3X1 U216 ( .A(n249), .B(n250), .C(n387), .Y(n211) );
  CLKINVX1 U217 ( .A(res_di[2]), .Y(n373) );
  OR2XL U218 ( .A(n243), .B(n381), .Y(n250) );
  AND2XL U219 ( .A(N279), .B(n383), .Y(n251) );
  AND2X2 U220 ( .A(N190), .B(n384), .Y(n252) );
  AND2X8 U221 ( .A(n381), .B(n357), .Y(n383) );
  CLKINVX1 U222 ( .A(res_di[3]), .Y(n374) );
  NOR2X1 U223 ( .A(n374), .B(n378), .Y(n254) );
  NOR2XL U224 ( .A(n239), .B(n381), .Y(n255) );
  NAND2XL U225 ( .A(N275), .B(n383), .Y(n256) );
  NAND2X1 U226 ( .A(N186), .B(n384), .Y(n257) );
  NAND2X1 U227 ( .A(n385), .B(N178), .Y(n258) );
  NAND3X1 U228 ( .A(n261), .B(n262), .C(n389), .Y(n210) );
  OR2X1 U229 ( .A(n423), .B(n424), .Y(n260) );
  NAND2X1 U230 ( .A(n260), .B(res_do[7]), .Y(n421) );
  OAI22XL U231 ( .A0(n407), .A1(n408), .B0(res_di[7]), .B1(n243), .Y(n398) );
  AOI32X1 U232 ( .A0(res_do[4]), .A1(n391), .A2(n410), .B0(n393), .B1(
        res_do[5]), .Y(n414) );
  CLKBUFX3 U233 ( .A(n316), .Y(n282) );
  AOI32X1 U234 ( .A0(n409), .A1(n410), .A2(n411), .B0(n412), .B1(n413), .Y(
        n407) );
  CLKINVX1 U235 ( .A(res_di[6]), .Y(n395) );
  NAND3XL U236 ( .A(state[3]), .B(n298), .C(n309), .Y(n422) );
  OR2XL U237 ( .A(n414), .B(res_di[6]), .Y(n259) );
  NAND2X1 U238 ( .A(n259), .B(n245), .Y(n413) );
  OAI211XL U239 ( .A0(n363), .A1(n360), .B0(n370), .C0(n371), .Y(n358) );
  AND2XL U240 ( .A(N274), .B(n383), .Y(n266) );
  XOR2XL U241 ( .A(n298), .B(n299), .Y(n295) );
  NAND4XL U242 ( .A(n346), .B(n355), .C(n347), .D(n360), .Y(n366) );
  NOR3X1 U243 ( .A(n263), .B(n264), .C(n265), .Y(n389) );
  AND4X1 U244 ( .A(n373), .B(n374), .C(n375), .D(n376), .Y(n363) );
  AND4XL U245 ( .A(n353), .B(n355), .C(n346), .D(n294), .Y(n362) );
  NOR2XL U246 ( .A(n356), .B(n358), .Y(n367) );
  NAND4XL U247 ( .A(n346), .B(n355), .C(n360), .D(n365), .Y(n369) );
  NAND3XL U248 ( .A(n406), .B(n298), .C(state[3]), .Y(n345) );
  NAND3XL U249 ( .A(state[3]), .B(n298), .C(n308), .Y(n359) );
  NAND2XL U250 ( .A(n437), .B(n360), .Y(n202) );
  OR2XL U251 ( .A(n375), .B(n378), .Y(n261) );
  OR2XL U252 ( .A(n388), .B(n381), .Y(n262) );
  AND2XL U253 ( .A(N273), .B(n383), .Y(n263) );
  AND2X2 U254 ( .A(N184), .B(n384), .Y(n264) );
  AND2X2 U255 ( .A(N176), .B(n385), .Y(n265) );
  INVXL U256 ( .A(res_di[1]), .Y(n375) );
  NOR2XL U257 ( .A(n397), .B(n352), .Y(n403) );
  AND2X2 U258 ( .A(N177), .B(n385), .Y(n268) );
  NOR3X1 U259 ( .A(n266), .B(n267), .C(n268), .Y(n390) );
  OR2XL U260 ( .A(n373), .B(n378), .Y(n269) );
  NAND3X1 U261 ( .A(n269), .B(n270), .C(n390), .Y(n209) );
  NOR4XL U262 ( .A(res_di[7]), .B(res_di[6]), .C(res_di[5]), .D(res_di[4]), 
        .Y(n376) );
  INVX1 U263 ( .A(res_di[5]), .Y(n393) );
  NAND2XL U264 ( .A(n414), .B(res_di[6]), .Y(n412) );
  CLKBUFX3 U265 ( .A(N143), .Y(res_addr[0]) );
  CLKBUFX3 U266 ( .A(n449), .Y(res_addr[1]) );
  AND2X2 U267 ( .A(N185), .B(n384), .Y(n267) );
  OR2XL U268 ( .A(n241), .B(n381), .Y(n270) );
  NOR2X2 U269 ( .A(n355), .B(n398), .Y(n384) );
  NOR2BX4 U270 ( .AN(N180), .B(res_do[5]), .Y(n426) );
  CLKBUFX3 U271 ( .A(n314), .Y(n283) );
  CLKINVX1 U272 ( .A(n370), .Y(n314) );
  AOI222XL U273 ( .A0(N277), .A1(n383), .B0(N188), .B1(n384), .C0(N180), .C1(
        n385), .Y(n394) );
  AND2X2 U274 ( .A(n350), .B(n351), .Y(n316) );
  CLKBUFX3 U275 ( .A(n312), .Y(n280) );
  AOI21X1 U276 ( .A0(n346), .A1(n347), .B0(n282), .Y(n312) );
  CLKBUFX3 U277 ( .A(n315), .Y(n281) );
  AOI2BB1X1 U278 ( .A0N(n348), .A1N(n349), .B0(n282), .Y(n315) );
  OR2X1 U279 ( .A(res_addr[1]), .B(res_addr[0]), .Y(\r368/carry[2] ) );
  CLKBUFX3 U280 ( .A(n301), .Y(n284) );
  CLKINVX1 U281 ( .A(n371), .Y(n301) );
  CLKBUFX3 U282 ( .A(n313), .Y(n279) );
  OAI2BB1X1 U283 ( .A0N(n343), .A1N(n344), .B0(n345), .Y(n313) );
  XNOR2X1 U284 ( .A(res_addr[1]), .B(res_addr[0]), .Y(N101) );
  XNOR2X1 U285 ( .A(res_addr[9]), .B(\r368/carry[9] ), .Y(N109) );
  XNOR2X1 U286 ( .A(res_addr[8]), .B(n272), .Y(N108) );
  XOR2X1 U287 ( .A(res_addr[7]), .B(\r368/carry[7] ), .Y(N107) );
  XNOR2X1 U288 ( .A(res_addr[6]), .B(\r368/carry[6] ), .Y(N106) );
  XNOR2X1 U289 ( .A(res_addr[5]), .B(\r368/carry[5] ), .Y(N105) );
  XNOR2X1 U290 ( .A(res_addr[4]), .B(\r368/carry[4] ), .Y(N104) );
  XNOR2X1 U291 ( .A(res_addr[3]), .B(\r368/carry[3] ), .Y(N103) );
  XNOR2X1 U292 ( .A(res_addr[2]), .B(\r368/carry[2] ), .Y(N102) );
  XNOR2X1 U293 ( .A(res_addr[10]), .B(\r368/carry[10] ), .Y(N110) );
  XOR2X1 U294 ( .A(res_addr[11]), .B(n276), .Y(N154) );
  XOR2X1 U295 ( .A(res_addr[12]), .B(n271), .Y(N155) );
  XOR2X1 U296 ( .A(res_addr[13]), .B(n277), .Y(N156) );
  MX4X1 U297 ( .A(n292), .B(n290), .C(n291), .D(n289), .S0(N40), .S1(N39), .Y(
        N427) );
  MX4X1 U298 ( .A(sti_di[8]), .B(sti_di[9]), .C(sti_di[10]), .D(sti_di[11]), 
        .S0(N37), .S1(N38), .Y(n290) );
  MX4X1 U299 ( .A(sti_di[0]), .B(sti_di[1]), .C(sti_di[2]), .D(sti_di[3]), 
        .S0(N37), .S1(N38), .Y(n292) );
  MX4X1 U300 ( .A(sti_di[12]), .B(sti_di[13]), .C(sti_di[14]), .D(sti_di[15]), 
        .S0(N37), .S1(N38), .Y(n289) );
  MX4X1 U301 ( .A(sti_di[4]), .B(sti_di[5]), .C(sti_di[6]), .D(sti_di[7]), 
        .S0(N37), .S1(N38), .Y(n291) );
  NAND3X4 U302 ( .A(n447), .B(n193), .C(n194), .Y(n377) );
  XNOR2X1 U303 ( .A(res_addr[12]), .B(\r368/carry[12] ), .Y(N112) );
  XNOR2X1 U304 ( .A(res_addr[13]), .B(\r368/carry[13] ), .Y(N113) );
  NAND2X1 U305 ( .A(n248), .B(n278), .Y(\r368/carry[13] ) );
  CLKINVX1 U306 ( .A(\r368/carry[12] ), .Y(n278) );
  AND2X2 U307 ( .A(res_addr[11]), .B(n276), .Y(n271) );
  OR2X1 U308 ( .A(res_addr[2]), .B(res_addr[1]), .Y(\r371/carry[3] ) );
  OR2X1 U309 ( .A(res_addr[3]), .B(\r371/carry[3] ), .Y(\r371/carry[4] ) );
  OR2X1 U310 ( .A(res_addr[4]), .B(\r371/carry[4] ), .Y(\r371/carry[5] ) );
  OR2X1 U311 ( .A(res_addr[10]), .B(\r368/carry[10] ), .Y(\r368/carry[11] ) );
  OR2X1 U312 ( .A(res_addr[11]), .B(\r368/carry[11] ), .Y(\r368/carry[12] ) );
  OR2X1 U313 ( .A(res_addr[4]), .B(\r368/carry[4] ), .Y(\r368/carry[5] ) );
  OR2X1 U314 ( .A(res_addr[3]), .B(\r368/carry[3] ), .Y(\r368/carry[4] ) );
  OR2X1 U315 ( .A(res_addr[2]), .B(\r368/carry[2] ), .Y(\r368/carry[3] ) );
  OR2X1 U316 ( .A(res_addr[9]), .B(\r368/carry[9] ), .Y(\r368/carry[10] ) );
  OR2X1 U317 ( .A(res_addr[6]), .B(\r371/carry[6] ), .Y(\r371/carry[7] ) );
  OR2X1 U318 ( .A(res_addr[6]), .B(\r368/carry[6] ), .Y(\r368/carry[7] ) );
  AND2X2 U319 ( .A(res_addr[7]), .B(\r368/carry[7] ), .Y(n272) );
  AND2X2 U320 ( .A(res_addr[9]), .B(n274), .Y(n273) );
  AND2X2 U321 ( .A(res_addr[8]), .B(n275), .Y(n274) );
  AND2X2 U322 ( .A(res_addr[7]), .B(\r371/carry[7] ), .Y(n275) );
  AND2X2 U323 ( .A(res_addr[10]), .B(n273), .Y(n276) );
  AND2X2 U324 ( .A(res_addr[12]), .B(n271), .Y(n277) );
  OR2X1 U325 ( .A(res_addr[5]), .B(\r371/carry[5] ), .Y(\r371/carry[6] ) );
  OR2X1 U326 ( .A(res_addr[5]), .B(\r368/carry[5] ), .Y(\r368/carry[6] ) );
  OR2X1 U327 ( .A(res_addr[8]), .B(n272), .Y(\r368/carry[9] ) );
  XNOR2X1 U328 ( .A(res_addr[11]), .B(\r368/carry[11] ), .Y(N111) );
  XOR2X1 U329 ( .A(res_addr[9]), .B(n274), .Y(N152) );
  XOR2X1 U330 ( .A(res_addr[8]), .B(n275), .Y(N151) );
  XOR2X1 U331 ( .A(res_addr[7]), .B(\r371/carry[7] ), .Y(N150) );
  XOR2X1 U332 ( .A(res_addr[10]), .B(n273), .Y(N153) );
  XNOR2X1 U333 ( .A(res_addr[6]), .B(\r371/carry[6] ), .Y(N149) );
  XNOR2X1 U334 ( .A(res_addr[2]), .B(res_addr[1]), .Y(N145) );
  XNOR2X1 U335 ( .A(res_addr[5]), .B(\r371/carry[5] ), .Y(N148) );
  XNOR2X1 U336 ( .A(res_addr[4]), .B(\r371/carry[4] ), .Y(N147) );
  XNOR2X1 U337 ( .A(res_addr[3]), .B(\r371/carry[3] ), .Y(N146) );
  CLKBUFX3 U338 ( .A(reset), .Y(n288) );
  CLKBUFX3 U339 ( .A(reset), .Y(n287) );
  NOR2X2 U340 ( .A(n355), .B(n397), .Y(n385) );
  OAI31X4 U341 ( .A0(n400), .A1(n364), .A2(n401), .B0(n381), .Y(n378) );
  NAND2X1 U342 ( .A(n293), .B(n294), .Y(next[2]) );
  MXI2X1 U343 ( .A(n295), .B(n296), .S0(n297), .Y(n293) );
  OAI2BB1X1 U344 ( .A0N(n300), .A1N(n284), .B0(n302), .Y(next[1]) );
  MXI2X1 U345 ( .A(n303), .B(n296), .S0(n297), .Y(n302) );
  AND4X1 U346 ( .A(n304), .B(n305), .C(n306), .D(n307), .Y(n296) );
  AND4X1 U347 ( .A(res_addr[0]), .B(res_addr[10]), .C(res_addr[11]), .D(
        res_addr[12]), .Y(n307) );
  AND3X1 U348 ( .A(res_addr[2]), .B(res_addr[13]), .C(res_addr[1]), .Y(n306)
         );
  AND4X1 U349 ( .A(res_addr[3]), .B(res_addr[4]), .C(res_addr[5]), .D(
        res_addr[6]), .Y(n305) );
  AND3X1 U350 ( .A(res_addr[9]), .B(res_addr[7]), .C(res_addr[8]), .Y(n304) );
  OR2X1 U351 ( .A(n308), .B(n309), .Y(n303) );
  NAND2X1 U352 ( .A(n310), .B(n311), .Y(n238) );
  AOI221XL U353 ( .A0(n246), .A1(n280), .B0(res_addr[0]), .B1(n279), .C0(n283), 
        .Y(n311) );
  AOI222XL U354 ( .A0(N379), .A1(n284), .B0(N114), .B1(n281), .C0(n282), .C1(
        res_addr[0]), .Y(n310) );
  NAND2X1 U355 ( .A(n317), .B(n318), .Y(n237) );
  AOI221XL U356 ( .A0(N113), .A1(n280), .B0(N156), .B1(n279), .C0(n283), .Y(
        n318) );
  AOI222XL U357 ( .A0(N392), .A1(n284), .B0(N127), .B1(n281), .C0(n282), .C1(
        res_addr[13]), .Y(n317) );
  NAND2X1 U358 ( .A(n319), .B(n320), .Y(n236) );
  AOI221XL U359 ( .A0(N101), .A1(n280), .B0(n247), .B1(n279), .C0(n283), .Y(
        n320) );
  AOI222XL U360 ( .A0(N380), .A1(n284), .B0(N115), .B1(n281), .C0(n282), .C1(
        res_addr[1]), .Y(n319) );
  NAND2X1 U361 ( .A(n321), .B(n322), .Y(n235) );
  AOI221XL U362 ( .A0(N102), .A1(n280), .B0(N145), .B1(n279), .C0(n283), .Y(
        n322) );
  AOI222XL U363 ( .A0(N381), .A1(n284), .B0(N116), .B1(n281), .C0(n282), .C1(
        res_addr[2]), .Y(n321) );
  NAND2X1 U364 ( .A(n323), .B(n324), .Y(n234) );
  AOI221XL U365 ( .A0(N103), .A1(n280), .B0(N146), .B1(n279), .C0(n283), .Y(
        n324) );
  AOI222XL U366 ( .A0(N382), .A1(n284), .B0(N117), .B1(n281), .C0(n282), .C1(
        res_addr[3]), .Y(n323) );
  NAND2X1 U367 ( .A(n325), .B(n326), .Y(n233) );
  AOI221XL U368 ( .A0(N104), .A1(n280), .B0(N147), .B1(n279), .C0(n283), .Y(
        n326) );
  AOI222XL U369 ( .A0(N383), .A1(n284), .B0(N118), .B1(n281), .C0(n282), .C1(
        res_addr[4]), .Y(n325) );
  NAND2X1 U370 ( .A(n327), .B(n328), .Y(n232) );
  AOI221XL U371 ( .A0(N105), .A1(n280), .B0(N148), .B1(n279), .C0(n283), .Y(
        n328) );
  AOI222XL U372 ( .A0(N384), .A1(n284), .B0(N119), .B1(n281), .C0(n282), .C1(
        res_addr[5]), .Y(n327) );
  NAND2X1 U373 ( .A(n329), .B(n330), .Y(n231) );
  AOI221XL U374 ( .A0(N106), .A1(n280), .B0(N149), .B1(n279), .C0(n283), .Y(
        n330) );
  AOI222XL U375 ( .A0(N385), .A1(n284), .B0(N120), .B1(n281), .C0(n282), .C1(
        res_addr[6]), .Y(n329) );
  NAND2X1 U376 ( .A(n331), .B(n332), .Y(n230) );
  AOI221XL U377 ( .A0(N107), .A1(n280), .B0(N150), .B1(n279), .C0(n283), .Y(
        n332) );
  AOI222XL U378 ( .A0(N386), .A1(n284), .B0(N121), .B1(n281), .C0(n282), .C1(
        res_addr[7]), .Y(n331) );
  NAND2X1 U379 ( .A(n333), .B(n334), .Y(n229) );
  AOI221XL U380 ( .A0(N108), .A1(n280), .B0(N151), .B1(n279), .C0(n283), .Y(
        n334) );
  AOI222XL U381 ( .A0(N387), .A1(n284), .B0(N122), .B1(n281), .C0(n282), .C1(
        res_addr[8]), .Y(n333) );
  NAND2X1 U382 ( .A(n335), .B(n336), .Y(n228) );
  AOI221XL U383 ( .A0(N109), .A1(n280), .B0(N152), .B1(n279), .C0(n283), .Y(
        n336) );
  AOI222XL U384 ( .A0(N388), .A1(n284), .B0(N123), .B1(n281), .C0(n282), .C1(
        res_addr[9]), .Y(n335) );
  NAND2X1 U385 ( .A(n337), .B(n338), .Y(n227) );
  AOI221XL U386 ( .A0(N110), .A1(n280), .B0(N153), .B1(n279), .C0(n283), .Y(
        n338) );
  AOI222XL U387 ( .A0(N389), .A1(n284), .B0(N124), .B1(n281), .C0(n282), .C1(
        res_addr[10]), .Y(n337) );
  NAND2X1 U388 ( .A(n339), .B(n340), .Y(n226) );
  AOI221XL U389 ( .A0(N111), .A1(n280), .B0(N154), .B1(n279), .C0(n283), .Y(
        n340) );
  AOI222XL U390 ( .A0(N390), .A1(n284), .B0(N125), .B1(n281), .C0(n282), .C1(
        res_addr[11]), .Y(n339) );
  NAND2X1 U391 ( .A(n341), .B(n342), .Y(n225) );
  AOI221XL U392 ( .A0(N112), .A1(n280), .B0(N155), .B1(n279), .C0(n283), .Y(
        n342) );
  AOI222XL U393 ( .A0(N391), .A1(n284), .B0(N126), .B1(n281), .C0(n282), .C1(
        res_addr[12]), .Y(n341) );
  AOI211X1 U394 ( .A0(N427), .A1(n356), .B0(n357), .C0(n358), .Y(n350) );
  NAND3X1 U395 ( .A(n355), .B(n354), .C(n359), .Y(n349) );
  NAND3BX1 U396 ( .AN(n309), .B(n360), .C(n353), .Y(n348) );
  MXI2X1 U397 ( .A(n361), .B(n181), .S0(n362), .Y(n224) );
  AOI221XL U398 ( .A0(n363), .A1(n364), .B0(n365), .B1(n356), .C0(n284), .Y(
        n294) );
  CLKINVX1 U399 ( .A(n366), .Y(n361) );
  MXI2X1 U400 ( .A(n367), .B(n182), .S0(n368), .Y(n223) );
  AOI211X1 U401 ( .A0(n369), .A1(n366), .B0(n284), .C0(n283), .Y(n368) );
  CLKINVX1 U402 ( .A(N427), .Y(n365) );
  NAND2X1 U403 ( .A(n309), .B(n372), .Y(n370) );
  CLKMX2X2 U404 ( .A(N223), .B(sti_addr[9]), .S0(n377), .Y(n222) );
  CLKMX2X2 U405 ( .A(N214), .B(sti_addr[0]), .S0(n377), .Y(n221) );
  CLKMX2X2 U406 ( .A(N215), .B(sti_addr[1]), .S0(n377), .Y(n220) );
  CLKMX2X2 U407 ( .A(N216), .B(sti_addr[2]), .S0(n377), .Y(n219) );
  CLKMX2X2 U408 ( .A(N217), .B(sti_addr[3]), .S0(n377), .Y(n218) );
  CLKMX2X2 U409 ( .A(N218), .B(sti_addr[4]), .S0(n377), .Y(n217) );
  CLKMX2X2 U410 ( .A(N219), .B(sti_addr[5]), .S0(n377), .Y(n216) );
  CLKMX2X2 U411 ( .A(N220), .B(sti_addr[6]), .S0(n377), .Y(n215) );
  CLKMX2X2 U412 ( .A(N221), .B(sti_addr[7]), .S0(n377), .Y(n214) );
  CLKMX2X2 U413 ( .A(N222), .B(sti_addr[8]), .S0(n377), .Y(n213) );
  AOI222XL U414 ( .A0(N272), .A1(n383), .B0(N183), .B1(n384), .C0(N175), .C1(
        n385), .Y(n382) );
  CLKINVX1 U415 ( .A(res_di[0]), .Y(n379) );
  OAI221XL U416 ( .A0(n391), .A1(n378), .B0(n240), .B1(n381), .C0(n392), .Y(
        n207) );
  AOI222XL U417 ( .A0(N276), .A1(n383), .B0(N187), .B1(n384), .C0(N179), .C1(
        n385), .Y(n392) );
  OAI221XL U418 ( .A0(n393), .A1(n378), .B0(n244), .B1(n381), .C0(n394), .Y(
        n206) );
  OAI221XL U419 ( .A0(n395), .A1(n378), .B0(n381), .B1(n245), .C0(n396), .Y(
        n205) );
  AOI222XL U420 ( .A0(N278), .A1(n383), .B0(N189), .B1(n384), .C0(N181), .C1(
        n385), .Y(n396) );
  NAND3X1 U421 ( .A(n354), .B(n360), .C(n355), .Y(n405) );
  NOR2X1 U422 ( .A(N427), .B(n347), .Y(n404) );
  CLKINVX1 U423 ( .A(n398), .Y(n397) );
  NOR2X1 U424 ( .A(res_do[7]), .B(n386), .Y(n408) );
  CLKINVX1 U425 ( .A(res_di[7]), .Y(n386) );
  CLKINVX1 U426 ( .A(res_di[4]), .Y(n391) );
  AOI2BB2X1 U427 ( .B0(res_di[4]), .B1(n240), .A0N(n395), .A1N(res_do[6]), .Y(
        n411) );
  NAND2X1 U428 ( .A(res_di[5]), .B(n244), .Y(n410) );
  OAI211X1 U429 ( .A0(n239), .A1(n415), .B0(n416), .C0(n417), .Y(n409) );
  OAI2BB1X1 U430 ( .A0N(n239), .A1N(n415), .B0(n374), .Y(n417) );
  OAI222XL U431 ( .A0(res_do[3]), .A1(n374), .B0(res_do[2]), .B1(n373), .C0(
        n418), .C1(n419), .Y(n416) );
  NOR2X1 U432 ( .A(res_di[1]), .B(n388), .Y(n419) );
  AOI211X1 U433 ( .A0(res_di[1]), .A1(n388), .B0(n380), .C0(res_di[0]), .Y(
        n418) );
  NAND2X1 U434 ( .A(res_do[2]), .B(n373), .Y(n415) );
  AOI211X1 U435 ( .A0(n420), .A1(n421), .B0(N270), .C0(n399), .Y(n402) );
  CLKINVX1 U436 ( .A(n357), .Y(n399) );
  NAND4X1 U437 ( .A(n422), .B(n359), .C(n346), .D(n345), .Y(n357) );
  NAND3X1 U438 ( .A(state[3]), .B(n298), .C(n343), .Y(n346) );
  NAND2X1 U439 ( .A(n423), .B(n424), .Y(n420) );
  CLKINVX1 U440 ( .A(N182), .Y(n424) );
  NOR2X1 U441 ( .A(n430), .B(n431), .Y(n429) );
  AOI21X1 U442 ( .A0(n431), .A1(n430), .B0(res_do[6]), .Y(n428) );
  CLKINVX1 U443 ( .A(N181), .Y(n431) );
  AOI2BB2X1 U444 ( .B0(n432), .B1(n433), .A0N(N178), .A1N(n239), .Y(n427) );
  NAND2X1 U445 ( .A(N178), .B(n239), .Y(n433) );
  OAI21XL U446 ( .A0(N177), .A1(n241), .B0(n434), .Y(n432) );
  OAI2BB2XL U447 ( .B0(n435), .B1(n436), .A0N(n241), .A1N(N177), .Y(n434) );
  NOR2X1 U448 ( .A(N176), .B(n388), .Y(n436) );
  AOI211X1 U449 ( .A0(N176), .A1(n388), .B0(n380), .C0(N175), .Y(n435) );
  AO22X1 U450 ( .A0(n245), .A1(N181), .B0(n240), .B1(N179), .Y(n425) );
  CLKINVX1 U451 ( .A(n352), .Y(n401) );
  NOR2BX1 U452 ( .AN(state[1]), .B(state[0]), .Y(n309) );
  CLKINVX1 U453 ( .A(n360), .Y(n364) );
  CLKINVX1 U454 ( .A(n354), .Y(n400) );
  NAND2X1 U455 ( .A(n308), .B(n344), .Y(n354) );
  OAI21XL U456 ( .A0(n356), .A1(n191), .B0(n377), .Y(n204) );
  CLKINVX1 U457 ( .A(n347), .Y(n356) );
  NAND2X1 U458 ( .A(n344), .B(n406), .Y(n347) );
  NOR2X1 U459 ( .A(state[2]), .B(state[3]), .Y(n344) );
  NAND2X1 U460 ( .A(n343), .B(n372), .Y(n360) );
  CLKINVX1 U461 ( .A(n299), .Y(n343) );
  CLKMX2X2 U462 ( .A(n438), .B(n300), .S0(n284), .Y(n437) );
  NAND3X1 U463 ( .A(state[2]), .B(n406), .C(state[3]), .Y(n371) );
  NAND4X1 U464 ( .A(n439), .B(n440), .C(n441), .D(n442), .Y(n300) );
  NOR4X1 U465 ( .A(res_addr[9]), .B(res_addr[8]), .C(res_addr[7]), .D(
        res_addr[6]), .Y(n442) );
  NOR3X1 U466 ( .A(res_addr[3]), .B(res_addr[5]), .C(res_addr[4]), .Y(n441) );
  NOR4X1 U467 ( .A(res_addr[2]), .B(res_addr[1]), .C(res_addr[13]), .D(
        res_addr[12]), .Y(n440) );
  NOR3X1 U468 ( .A(res_addr[0]), .B(res_addr[11]), .C(res_addr[10]), .Y(n439)
         );
  OAI21XL U469 ( .A0(n298), .A1(n299), .B0(state[3]), .Y(n438) );
  NAND2X1 U470 ( .A(state[1]), .B(state[0]), .Y(n299) );
  OAI21XL U471 ( .A0(n196), .A1(n297), .B0(n443), .Y(n201) );
  OAI21XL U472 ( .A0(n195), .A1(n444), .B0(n445), .Y(n200) );
  NAND2X1 U473 ( .A(n377), .B(n446), .Y(n199) );
  AO21X1 U474 ( .A0(n447), .A1(n193), .B0(n194), .Y(n446) );
  CLKINVX1 U475 ( .A(n445), .Y(n447) );
  XOR2X1 U476 ( .A(n445), .B(n193), .Y(n198) );
  NAND2X1 U477 ( .A(n195), .B(n444), .Y(n445) );
  CLKINVX1 U478 ( .A(n443), .Y(n444) );
  NAND2X1 U479 ( .A(n196), .B(n297), .Y(n443) );
  CLKINVX1 U480 ( .A(n353), .Y(n297) );
  NAND2X1 U481 ( .A(n308), .B(n372), .Y(n353) );
  NOR2X1 U482 ( .A(n298), .B(state[3]), .Y(n372) );
  NOR2BX1 U483 ( .AN(state[0]), .B(state[1]), .Y(n308) );
  OAI31XL U484 ( .A0(n448), .A1(n406), .A2(n298), .B0(n192), .Y(n197) );
  NOR2X1 U485 ( .A(state[0]), .B(state[1]), .Y(n406) );
endmodule

