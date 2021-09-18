
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
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_4 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;
  wire   n1;
  wire   [8:2] carry;

  ADDHX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  AND2X2 U1 ( .A(A[1]), .B(A[0]), .Y(n1) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
  XOR2XL U3 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
endmodule


module DT_DW01_inc_5 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
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
  wire   N45, N46, N47, N48, n494, N149, N150, N151, N152, N153, N154, N155,
         N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N170, N171, N172, N173, N174, N175, N200, N202,
         N203, N204, N205, N206, N207, N208, N209, N210, N211, N212, N213,
         N241, N242, N243, N244, N245, N246, N247, N248, N249, N250, N251,
         N252, N253, N254, N255, N256, N284, N285, N286, N287, N288, N289,
         N290, N291, N292, N293, N332, N335, N336, N337, N338, N339, N340,
         N341, N342, N477, N478, N479, N480, N481, N482, N483, N484, N485,
         N486, N487, N488, N489, N490, N556, N560, N561, N562, N563, n198,
         n199, n200, n201, n212, n213, n214, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, \r393/carry[4] , \r393/carry[3] ,
         \r393/carry[2] , \r382/carry[7] , \r382/carry[6] , \r382/carry[5] ,
         \r382/carry[4] , \r382/carry[3] , \r379/carry[2] , \r379/carry[3] ,
         \r379/carry[4] , \r379/carry[5] , \r379/carry[6] , \r379/carry[7] ,
         \r379/carry[9] , \r379/carry[10] , \r379/carry[11] , \r379/carry[12] ,
         \r379/carry[13] , n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493;
  wire   [4:0] next;
  wire   [4:0] state;

  DFFRX4 \res_addr_reg[13]  ( .D(n255), .CK(clk), .RN(reset), .Q(res_addr[13])
         );
  DFFRX4 \res_do_reg[6]  ( .D(n231), .CK(clk), .RN(reset), .Q(res_do[6]) );
  DFFRX4 \res_do_reg[0]  ( .D(n237), .CK(clk), .RN(reset), .Q(res_do[0]) );
  DFFRX4 \res_do_reg[1]  ( .D(n236), .CK(clk), .RN(reset), .Q(res_do[1]) );
  DFFRX4 \res_addr_reg[12]  ( .D(n242), .CK(clk), .RN(n294), .Q(res_addr[12]), 
        .QN(n269) );
  DFFRX4 \res_addr_reg[11]  ( .D(n243), .CK(clk), .RN(n294), .Q(res_addr[11])
         );
  DFFRX4 \res_addr_reg[10]  ( .D(n244), .CK(clk), .RN(n294), .Q(res_addr[10])
         );
  DFFRX4 \res_addr_reg[2]  ( .D(n252), .CK(clk), .RN(n294), .Q(res_addr[2]) );
  DFFRX4 \res_addr_reg[3]  ( .D(n251), .CK(clk), .RN(n294), .Q(res_addr[3]) );
  DFFRX4 \res_addr_reg[4]  ( .D(n250), .CK(clk), .RN(n294), .Q(res_addr[4]) );
  DFFRX4 \res_addr_reg[5]  ( .D(n249), .CK(clk), .RN(n294), .Q(res_addr[5]) );
  DFFRX4 \res_addr_reg[6]  ( .D(n248), .CK(clk), .RN(n294), .Q(res_addr[6]) );
  DFFRX4 \res_addr_reg[7]  ( .D(n247), .CK(clk), .RN(n295), .Q(res_addr[7]) );
  DFFRX4 \res_addr_reg[8]  ( .D(n246), .CK(clk), .RN(n295), .Q(res_addr[8]) );
  DFFRX4 \res_addr_reg[9]  ( .D(n245), .CK(clk), .RN(n295), .Q(res_addr[9]) );
  DT_DW01_dec_0 sub_133 ( .A(res_addr), .SUM({N490, N489, N488, N487, N486, 
        N485, N484, N483, N482, N481, N480, N479, N478, N477}) );
  DT_DW01_inc_0 add_82 ( .A(sti_addr), .SUM({N293, N292, N291, N290, N289, 
        N288, N287, N286, N285, N284}) );
  DT_DW01_inc_1 add_73 ( .A(res_do), .SUM({N248, N247, N246, N245, N244, N243, 
        N242, N241}) );
  DT_DW01_inc_3 r388 ( .A(res_di), .SUM({N342, N341, N340, N339, N338, N337, 
        N336, N335}) );
  DT_DW01_inc_4 r384 ( .A({1'b0, res_di}), .SUM({N332, N256, N255, N254, N253, 
        N252, N251, N250, N249}) );
  DT_DW01_inc_5 r380 ( .A(res_addr), .SUM({N175, N174, N173, N172, N171, N170, 
        N169, N168, N167, N166, N165, N164, N163, N162}) );
  DFFRX2 \sti_addr_reg[9]  ( .D(n229), .CK(clk), .RN(n295), .Q(sti_addr[9]) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n222), .CK(clk), .RN(reset), .Q(sti_addr[6])
         );
  DFFRX2 \sti_addr_reg[7]  ( .D(n221), .CK(clk), .RN(reset), .Q(sti_addr[7])
         );
  DFFRX2 \sti_addr_reg[1]  ( .D(n227), .CK(clk), .RN(n295), .Q(sti_addr[1]) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n226), .CK(clk), .RN(n295), .Q(sti_addr[2]) );
  DFFRX2 \sti_addr_reg[3]  ( .D(n225), .CK(clk), .RN(n295), .Q(sti_addr[3]) );
  DFFRX2 \sti_addr_reg[4]  ( .D(n224), .CK(clk), .RN(n295), .Q(sti_addr[4]) );
  DFFRX2 \sti_addr_reg[5]  ( .D(n223), .CK(clk), .RN(n295), .Q(sti_addr[5]) );
  DFFRX2 \sti_addr_reg[0]  ( .D(n228), .CK(clk), .RN(n295), .Q(sti_addr[0]) );
  DFFSX1 \index_reg[2]  ( .D(n240), .CK(clk), .SN(reset), .Q(N47), .QN(n199)
         );
  DFFSX1 \index_reg[3]  ( .D(n256), .CK(clk), .SN(reset), .Q(N48), .QN(n217)
         );
  DFFSX1 \index_reg[1]  ( .D(n241), .CK(clk), .SN(reset), .Q(N46), .QN(n218)
         );
  DFFRX2 \res_do_reg[7]  ( .D(n238), .CK(clk), .RN(n295), .Q(res_do[7]), .QN(
        n265) );
  DFFRX2 \state_reg[1]  ( .D(next[1]), .CK(clk), .RN(n295), .Q(state[1]), .QN(
        n258) );
  DFFRX2 \state_reg[0]  ( .D(n492), .CK(clk), .RN(n294), .Q(state[0]), .QN(
        n259) );
  DFFRX2 \res_do_reg[2]  ( .D(n235), .CK(clk), .RN(n294), .Q(res_do[2]), .QN(
        n261) );
  ADDHXL \r393/U1_1_3  ( .A(state[3]), .B(\r393/carry[3] ), .CO(
        \r393/carry[4] ), .S(N562) );
  ADDHXL \r393/U1_1_2  ( .A(state[2]), .B(\r393/carry[2] ), .CO(
        \r393/carry[3] ), .S(N561) );
  ADDHXL \r393/U1_1_1  ( .A(state[1]), .B(state[0]), .CO(\r393/carry[2] ), .S(
        N560) );
  DFFSX1 \index_reg[0]  ( .D(n257), .CK(clk), .SN(reset), .Q(N45), .QN(n198)
         );
  DFFRX1 \res_addr_reg[0]  ( .D(n254), .CK(clk), .RN(n294), .Q(N200), .QN(n267) );
  DFFRX1 \res_addr_reg[1]  ( .D(n253), .CK(clk), .RN(n294), .Q(n494), .QN(n268) );
  DFFRX1 \state_reg[4]  ( .D(next[4]), .CK(clk), .RN(reset), .Q(state[4]), 
        .QN(n474) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n220), .CK(clk), .RN(reset), .Q(sti_addr[8])
         );
  DFFSX2 sti_rd_reg ( .D(n219), .CK(clk), .SN(reset), .Q(sti_rd), .QN(n212) );
  DFFRX2 done_reg ( .D(n214), .CK(clk), .RN(reset), .Q(done), .QN(n213) );
  DFFRX2 res_wr_reg ( .D(n239), .CK(clk), .RN(n295), .Q(res_wr), .QN(n200) );
  DFFRX2 res_rd_reg ( .D(n230), .CK(clk), .RN(n295), .Q(res_rd), .QN(n201) );
  DFFRX2 \res_do_reg[3]  ( .D(n234), .CK(clk), .RN(n294), .Q(res_do[3]), .QN(
        n266) );
  DFFRX2 \res_do_reg[4]  ( .D(n233), .CK(clk), .RN(reset), .Q(res_do[4]), .QN(
        n264) );
  DFFRX1 \state_reg[2]  ( .D(n493), .CK(clk), .RN(reset), .Q(state[2]), .QN(
        n263) );
  DFFRX1 \state_reg[3]  ( .D(n216), .CK(clk), .RN(reset), .Q(state[3]), .QN(
        n262) );
  DFFRX2 \res_do_reg[5]  ( .D(n232), .CK(clk), .RN(reset), .Q(res_do[5]), .QN(
        n260) );
  OR2X4 U223 ( .A(N254), .B(n260), .Y(n432) );
  AND2X2 U224 ( .A(n428), .B(n429), .Y(n276) );
  NOR3X2 U225 ( .A(state[0]), .B(state[3]), .C(n474), .Y(n426) );
  NOR3BX1 U226 ( .AN(n472), .B(state[1]), .C(state[3]), .Y(n420) );
  NAND2X1 U227 ( .A(n385), .B(N251), .Y(n270) );
  NAND2X1 U228 ( .A(N243), .B(n386), .Y(n271) );
  NAND2XL U229 ( .A(res_do[2]), .B(n387), .Y(n272) );
  AND3X4 U230 ( .A(n270), .B(n271), .C(n272), .Y(n397) );
  OAI211X2 U231 ( .A0(n381), .A1(n395), .B0(n396), .C0(n397), .Y(n235) );
  NAND2X1 U232 ( .A(res_do[6]), .B(n387), .Y(n275) );
  AND3X2 U233 ( .A(n273), .B(n274), .C(n275), .Y(n409) );
  INVX1 U234 ( .A(N255), .Y(n437) );
  INVX3 U235 ( .A(n430), .Y(n428) );
  AOI32X1 U236 ( .A0(N253), .A1(n264), .A2(n432), .B0(n260), .B1(N254), .Y(
        n436) );
  OAI211X1 U237 ( .A0(n381), .A1(n407), .B0(n408), .C0(n409), .Y(n231) );
  NAND2XL U238 ( .A(n385), .B(N255), .Y(n273) );
  BUFX2 U239 ( .A(n330), .Y(n288) );
  BUFX2 U240 ( .A(n331), .Y(n287) );
  NOR2BXL U241 ( .AN(n363), .B(n334), .Y(n331) );
  NOR3X2 U242 ( .A(n276), .B(n277), .C(N332), .Y(n412) );
  OR2X1 U243 ( .A(N256), .B(n265), .Y(n429) );
  AND2X2 U244 ( .A(n265), .B(N256), .Y(n277) );
  INVX1 U245 ( .A(n464), .Y(n370) );
  NAND2XL U246 ( .A(n426), .B(n423), .Y(n416) );
  NOR2XL U247 ( .A(n420), .B(n380), .Y(n419) );
  AOI211XL U248 ( .A0(n446), .A1(n377), .B0(n291), .C0(n488), .Y(n475) );
  AO21XL U249 ( .A0(n259), .A1(n424), .B0(n426), .Y(n473) );
  NAND2XL U250 ( .A(n426), .B(n427), .Y(n425) );
  CLKINVX1 U251 ( .A(res_di[3]), .Y(n398) );
  OAI22XL U252 ( .A0(n447), .A1(n448), .B0(res_do[7]), .B1(n382), .Y(n422) );
  OAI21XL U253 ( .A0(n454), .A1(n407), .B0(res_do[6]), .Y(n453) );
  CLKINVX1 U254 ( .A(res_di[5]), .Y(n404) );
  NOR3XL U255 ( .A(n470), .B(n420), .C(n369), .Y(n462) );
  NAND3XL U256 ( .A(state[2]), .B(n258), .C(n426), .Y(n417) );
  NAND2X1 U257 ( .A(N247), .B(n386), .Y(n274) );
  NOR2X2 U258 ( .A(n422), .B(n366), .Y(n385) );
  NOR2X2 U259 ( .A(n366), .B(n410), .Y(n386) );
  NAND2XL U260 ( .A(n436), .B(n437), .Y(n434) );
  INVX1 U261 ( .A(res_di[1]), .Y(n392) );
  INVX1 U262 ( .A(res_di[0]), .Y(n389) );
  CLKBUFX3 U263 ( .A(N200), .Y(res_addr[0]) );
  CLKBUFX3 U264 ( .A(n494), .Y(res_addr[1]) );
  AOI2BB1X1 U265 ( .A0N(n310), .A1N(n364), .B0(n334), .Y(n330) );
  CLKBUFX3 U266 ( .A(n335), .Y(n289) );
  CLKINVX1 U267 ( .A(n365), .Y(n335) );
  AND4X4 U268 ( .A(n366), .B(n367), .C(n316), .D(n368), .Y(n334) );
  OR2X1 U269 ( .A(res_addr[1]), .B(res_addr[0]), .Y(\r379/carry[2] ) );
  CLKBUFX3 U270 ( .A(n333), .Y(n291) );
  CLKINVX1 U271 ( .A(n316), .Y(n333) );
  CLKBUFX3 U272 ( .A(n332), .Y(n286) );
  CLKINVX1 U273 ( .A(n362), .Y(n332) );
  XNOR2X1 U274 ( .A(res_addr[1]), .B(res_addr[0]), .Y(N149) );
  XOR2X1 U275 ( .A(res_addr[9]), .B(n281), .Y(N209) );
  XOR2X1 U276 ( .A(res_addr[8]), .B(n282), .Y(N208) );
  XOR2X1 U277 ( .A(res_addr[7]), .B(\r382/carry[7] ), .Y(N207) );
  XNOR2X1 U278 ( .A(res_addr[6]), .B(\r382/carry[6] ), .Y(N206) );
  XNOR2X1 U279 ( .A(res_addr[5]), .B(\r382/carry[5] ), .Y(N205) );
  XNOR2X1 U280 ( .A(res_addr[4]), .B(\r382/carry[4] ), .Y(N204) );
  XNOR2X1 U281 ( .A(res_addr[3]), .B(\r382/carry[3] ), .Y(N203) );
  XNOR2X1 U282 ( .A(res_addr[2]), .B(res_addr[1]), .Y(N202) );
  XOR2X1 U283 ( .A(res_addr[10]), .B(n280), .Y(N210) );
  XOR2X1 U284 ( .A(res_addr[11]), .B(n279), .Y(N211) );
  XOR2X1 U285 ( .A(res_addr[12]), .B(n283), .Y(N212) );
  XOR2X1 U286 ( .A(res_addr[13]), .B(n284), .Y(N213) );
  MX4X1 U287 ( .A(n299), .B(n297), .C(n298), .D(n296), .S0(N48), .S1(N47), .Y(
        N556) );
  MX4X1 U288 ( .A(sti_di[0]), .B(sti_di[1]), .C(sti_di[2]), .D(sti_di[3]), 
        .S0(N45), .S1(N46), .Y(n299) );
  MX4X1 U289 ( .A(sti_di[8]), .B(sti_di[9]), .C(sti_di[10]), .D(sti_di[11]), 
        .S0(N45), .S1(N46), .Y(n297) );
  MX4X1 U290 ( .A(sti_di[12]), .B(sti_di[13]), .C(sti_di[14]), .D(sti_di[15]), 
        .S0(N45), .S1(N46), .Y(n296) );
  MX4X1 U291 ( .A(sti_di[4]), .B(sti_di[5]), .C(sti_di[6]), .D(sti_di[7]), 
        .S0(N45), .S1(N46), .Y(n298) );
  NAND2BX1 U292 ( .AN(state[0]), .B(n301), .Y(n312) );
  CLKBUFX3 U293 ( .A(n325), .Y(n290) );
  NAND3X1 U294 ( .A(n217), .B(n309), .C(n310), .Y(n325) );
  XNOR2X1 U295 ( .A(res_addr[12]), .B(\r379/carry[12] ), .Y(N160) );
  AND2X2 U296 ( .A(res_addr[7]), .B(\r379/carry[7] ), .Y(n278) );
  AND2X2 U297 ( .A(res_addr[10]), .B(n280), .Y(n279) );
  OR2X1 U298 ( .A(res_addr[2]), .B(\r379/carry[2] ), .Y(\r379/carry[3] ) );
  OR2X1 U299 ( .A(res_addr[4]), .B(\r379/carry[4] ), .Y(\r379/carry[5] ) );
  OR2X1 U300 ( .A(res_addr[5]), .B(\r379/carry[5] ), .Y(\r379/carry[6] ) );
  OR2X1 U301 ( .A(res_addr[8]), .B(n278), .Y(\r379/carry[9] ) );
  OR2X1 U302 ( .A(res_addr[9]), .B(\r379/carry[9] ), .Y(\r379/carry[10] ) );
  OR2X1 U303 ( .A(res_addr[10]), .B(\r379/carry[10] ), .Y(\r379/carry[11] ) );
  OR2X1 U304 ( .A(res_addr[11]), .B(\r379/carry[11] ), .Y(\r379/carry[12] ) );
  OR2X1 U305 ( .A(res_addr[5]), .B(\r382/carry[5] ), .Y(\r382/carry[6] ) );
  OR2X1 U306 ( .A(res_addr[4]), .B(\r382/carry[4] ), .Y(\r382/carry[5] ) );
  OR2X1 U307 ( .A(res_addr[3]), .B(\r382/carry[3] ), .Y(\r382/carry[4] ) );
  OR2X1 U308 ( .A(res_addr[2]), .B(res_addr[1]), .Y(\r382/carry[3] ) );
  OR2X1 U309 ( .A(res_addr[6]), .B(\r379/carry[6] ), .Y(\r379/carry[7] ) );
  OR2X1 U310 ( .A(res_addr[6]), .B(\r382/carry[6] ), .Y(\r382/carry[7] ) );
  AND2X2 U311 ( .A(res_addr[9]), .B(n281), .Y(n280) );
  AND2X2 U312 ( .A(res_addr[8]), .B(n282), .Y(n281) );
  AND2X2 U313 ( .A(res_addr[7]), .B(\r382/carry[7] ), .Y(n282) );
  AND2X2 U314 ( .A(res_addr[11]), .B(n279), .Y(n283) );
  XNOR2X1 U315 ( .A(res_addr[13]), .B(\r379/carry[13] ), .Y(N161) );
  NAND2X1 U316 ( .A(n269), .B(n285), .Y(\r379/carry[13] ) );
  CLKINVX1 U317 ( .A(\r379/carry[12] ), .Y(n285) );
  AND2X2 U318 ( .A(res_addr[12]), .B(n283), .Y(n284) );
  OR2X1 U319 ( .A(res_addr[3]), .B(\r379/carry[3] ), .Y(\r379/carry[4] ) );
  XNOR2X1 U320 ( .A(res_addr[9]), .B(\r379/carry[9] ), .Y(N157) );
  XNOR2X1 U321 ( .A(res_addr[8]), .B(n278), .Y(N156) );
  XNOR2X1 U322 ( .A(res_addr[11]), .B(\r379/carry[11] ), .Y(N159) );
  XNOR2X1 U323 ( .A(res_addr[10]), .B(\r379/carry[10] ), .Y(N158) );
  XOR2X1 U324 ( .A(res_addr[7]), .B(\r379/carry[7] ), .Y(N155) );
  XNOR2X1 U325 ( .A(res_addr[2]), .B(\r379/carry[2] ), .Y(N150) );
  XNOR2X1 U326 ( .A(res_addr[6]), .B(\r379/carry[6] ), .Y(N154) );
  XNOR2X1 U327 ( .A(res_addr[5]), .B(\r379/carry[5] ), .Y(N153) );
  XNOR2X1 U328 ( .A(res_addr[4]), .B(\r379/carry[4] ), .Y(N152) );
  XNOR2X1 U329 ( .A(res_addr[3]), .B(\r379/carry[3] ), .Y(N151) );
  CLKBUFX3 U330 ( .A(reset), .Y(n295) );
  CLKBUFX3 U331 ( .A(reset), .Y(n294) );
  AOI211X4 U332 ( .A0(n421), .A1(n410), .B0(n420), .C0(n446), .Y(n381) );
  NOR2BX2 U333 ( .AN(n412), .B(n413), .Y(n388) );
  AOI32XL U334 ( .A0(n449), .A1(n450), .A2(n451), .B0(n452), .B1(n453), .Y(
        n447) );
  OAI221X4 U335 ( .A0(n410), .A1(n411), .B0(n412), .B1(n413), .C0(n414), .Y(
        n387) );
  XOR2X1 U336 ( .A(\r393/carry[4] ), .B(state[4]), .Y(N563) );
  CLKINVX1 U337 ( .A(n300), .Y(next[4]) );
  AOI211X1 U338 ( .A0(N563), .A1(n301), .B0(n302), .C0(n303), .Y(n300) );
  NAND3X1 U339 ( .A(n304), .B(n305), .C(n306), .Y(next[1]) );
  NOR3X1 U340 ( .A(n307), .B(n308), .C(n302), .Y(n306) );
  OAI2BB1X1 U341 ( .A0N(n309), .A1N(n217), .B0(n310), .Y(n305) );
  NAND2X1 U342 ( .A(N560), .B(n311), .Y(n304) );
  NAND4X1 U343 ( .A(n312), .B(n313), .C(n314), .D(n315), .Y(n492) );
  NAND3X1 U344 ( .A(n316), .B(n317), .C(n318), .Y(n301) );
  NAND3X1 U345 ( .A(n319), .B(n314), .C(n320), .Y(n493) );
  CLKINVX1 U346 ( .A(n302), .Y(n314) );
  NAND2X1 U347 ( .A(N561), .B(n311), .Y(n319) );
  OAI211X1 U348 ( .A0(n321), .A1(n316), .B0(n318), .C0(n317), .Y(n311) );
  OAI211X1 U349 ( .A0(n198), .A1(n310), .B0(n322), .C0(n323), .Y(n257) );
  OAI211X1 U350 ( .A0(n217), .A1(n324), .B0(n323), .C0(n290), .Y(n256) );
  NOR2X1 U351 ( .A(n326), .B(n327), .Y(n324) );
  NAND2X1 U352 ( .A(n328), .B(n329), .Y(n255) );
  AOI221XL U353 ( .A0(N175), .A1(n288), .B0(N161), .B1(n287), .C0(n286), .Y(
        n329) );
  AOI222XL U354 ( .A0(N490), .A1(n291), .B0(n334), .B1(res_addr[13]), .C0(N213), .C1(n289), .Y(n328) );
  NAND2X1 U355 ( .A(n336), .B(n337), .Y(n254) );
  AOI221XL U356 ( .A0(N162), .A1(n288), .B0(n267), .B1(n287), .C0(n286), .Y(
        n337) );
  AOI222XL U357 ( .A0(N477), .A1(n291), .B0(n334), .B1(res_addr[0]), .C0(
        res_addr[0]), .C1(n289), .Y(n336) );
  NAND2X1 U358 ( .A(n338), .B(n339), .Y(n253) );
  AOI221XL U359 ( .A0(N163), .A1(n288), .B0(N149), .B1(n287), .C0(n286), .Y(
        n339) );
  AOI222XL U360 ( .A0(N478), .A1(n291), .B0(n334), .B1(res_addr[1]), .C0(n268), 
        .C1(n289), .Y(n338) );
  NAND2X1 U361 ( .A(n340), .B(n341), .Y(n252) );
  AOI221XL U362 ( .A0(N164), .A1(n288), .B0(N150), .B1(n287), .C0(n286), .Y(
        n341) );
  AOI222XL U363 ( .A0(N479), .A1(n291), .B0(n334), .B1(res_addr[2]), .C0(N202), 
        .C1(n289), .Y(n340) );
  NAND2X1 U364 ( .A(n342), .B(n343), .Y(n251) );
  AOI221XL U365 ( .A0(N165), .A1(n288), .B0(N151), .B1(n287), .C0(n286), .Y(
        n343) );
  AOI222XL U366 ( .A0(N480), .A1(n291), .B0(n334), .B1(res_addr[3]), .C0(N203), 
        .C1(n289), .Y(n342) );
  NAND2X1 U367 ( .A(n344), .B(n345), .Y(n250) );
  AOI221XL U368 ( .A0(N166), .A1(n288), .B0(N152), .B1(n287), .C0(n286), .Y(
        n345) );
  AOI222XL U369 ( .A0(N481), .A1(n291), .B0(n334), .B1(res_addr[4]), .C0(N204), 
        .C1(n289), .Y(n344) );
  NAND2X1 U370 ( .A(n346), .B(n347), .Y(n249) );
  AOI221XL U371 ( .A0(N167), .A1(n288), .B0(N153), .B1(n287), .C0(n286), .Y(
        n347) );
  AOI222XL U372 ( .A0(N482), .A1(n291), .B0(n334), .B1(res_addr[5]), .C0(N205), 
        .C1(n289), .Y(n346) );
  NAND2X1 U373 ( .A(n348), .B(n349), .Y(n248) );
  AOI221XL U374 ( .A0(N168), .A1(n288), .B0(N154), .B1(n287), .C0(n286), .Y(
        n349) );
  AOI222XL U375 ( .A0(N483), .A1(n291), .B0(n334), .B1(res_addr[6]), .C0(N206), 
        .C1(n289), .Y(n348) );
  NAND2X1 U376 ( .A(n350), .B(n351), .Y(n247) );
  AOI221XL U377 ( .A0(N169), .A1(n288), .B0(N155), .B1(n287), .C0(n286), .Y(
        n351) );
  AOI222XL U378 ( .A0(N484), .A1(n291), .B0(n334), .B1(res_addr[7]), .C0(N207), 
        .C1(n289), .Y(n350) );
  NAND2X1 U379 ( .A(n352), .B(n353), .Y(n246) );
  AOI221XL U380 ( .A0(N170), .A1(n288), .B0(N156), .B1(n287), .C0(n286), .Y(
        n353) );
  AOI222XL U381 ( .A0(N485), .A1(n291), .B0(n334), .B1(res_addr[8]), .C0(N208), 
        .C1(n289), .Y(n352) );
  NAND2X1 U382 ( .A(n354), .B(n355), .Y(n245) );
  AOI221XL U383 ( .A0(N171), .A1(n288), .B0(N157), .B1(n287), .C0(n286), .Y(
        n355) );
  AOI222XL U384 ( .A0(N486), .A1(n291), .B0(n334), .B1(res_addr[9]), .C0(N209), 
        .C1(n289), .Y(n354) );
  NAND2X1 U385 ( .A(n356), .B(n357), .Y(n244) );
  AOI221XL U386 ( .A0(N172), .A1(n288), .B0(N158), .B1(n287), .C0(n286), .Y(
        n357) );
  AOI222XL U387 ( .A0(N487), .A1(n291), .B0(n334), .B1(res_addr[10]), .C0(N210), .C1(n289), .Y(n356) );
  NAND2X1 U388 ( .A(n358), .B(n359), .Y(n243) );
  AOI221XL U389 ( .A0(N173), .A1(n288), .B0(N159), .B1(n287), .C0(n286), .Y(
        n359) );
  AOI222XL U390 ( .A0(N488), .A1(n291), .B0(n334), .B1(res_addr[11]), .C0(N211), .C1(n289), .Y(n358) );
  NAND2X1 U391 ( .A(n360), .B(n361), .Y(n242) );
  AOI221XL U392 ( .A0(N174), .A1(n288), .B0(N160), .B1(n287), .C0(n286), .Y(
        n361) );
  AOI222XL U393 ( .A0(N489), .A1(n291), .B0(n334), .B1(res_addr[12]), .C0(N212), .C1(n289), .Y(n360) );
  NOR3X1 U394 ( .A(n369), .B(n310), .C(n370), .Y(n368) );
  NAND2X1 U395 ( .A(n371), .B(n323), .Y(n241) );
  XNOR2X1 U396 ( .A(n218), .B(n322), .Y(n371) );
  OAI211X1 U397 ( .A0(n326), .A1(n327), .B0(n372), .C0(n323), .Y(n240) );
  AO21X1 U398 ( .A0(n218), .A1(n373), .B0(n199), .Y(n372) );
  CLKINVX1 U399 ( .A(n322), .Y(n373) );
  NAND2X1 U400 ( .A(n310), .B(n198), .Y(n322) );
  MXI2X1 U401 ( .A(n374), .B(n200), .S0(n375), .Y(n239) );
  NOR4BBX1 U402 ( .AN(n367), .BN(n366), .C(n376), .D(n302), .Y(n375) );
  NOR2X1 U403 ( .A(n317), .B(n377), .Y(n302) );
  NAND3X1 U404 ( .A(n378), .B(n327), .C(n379), .Y(n376) );
  NOR2X1 U405 ( .A(n380), .B(n363), .Y(n374) );
  NAND2X1 U406 ( .A(n315), .B(n367), .Y(n363) );
  OAI211X1 U407 ( .A0(n381), .A1(n382), .B0(n383), .C0(n384), .Y(n238) );
  AOI222XL U408 ( .A0(n385), .A1(N256), .B0(N248), .B1(n386), .C0(res_do[7]), 
        .C1(n387), .Y(n384) );
  NAND2X1 U409 ( .A(N342), .B(n388), .Y(n383) );
  OAI211X1 U410 ( .A0(n381), .A1(n389), .B0(n390), .C0(n391), .Y(n237) );
  AOI222XL U411 ( .A0(n385), .A1(N249), .B0(N241), .B1(n386), .C0(res_do[0]), 
        .C1(n387), .Y(n391) );
  NAND2X1 U412 ( .A(N335), .B(n388), .Y(n390) );
  OAI211X1 U413 ( .A0(n381), .A1(n392), .B0(n393), .C0(n394), .Y(n236) );
  AOI222XL U414 ( .A0(n385), .A1(N250), .B0(N242), .B1(n386), .C0(res_do[1]), 
        .C1(n387), .Y(n394) );
  NAND2X1 U415 ( .A(N336), .B(n388), .Y(n393) );
  NAND2X1 U416 ( .A(N337), .B(n388), .Y(n396) );
  OAI211X1 U417 ( .A0(n381), .A1(n398), .B0(n399), .C0(n400), .Y(n234) );
  AOI222XL U418 ( .A0(n385), .A1(N252), .B0(N244), .B1(n386), .C0(res_do[3]), 
        .C1(n387), .Y(n400) );
  NAND2X1 U419 ( .A(N338), .B(n388), .Y(n399) );
  OAI211X1 U420 ( .A0(n381), .A1(n401), .B0(n402), .C0(n403), .Y(n233) );
  AOI222XL U421 ( .A0(n385), .A1(N253), .B0(N245), .B1(n386), .C0(res_do[4]), 
        .C1(n387), .Y(n403) );
  NAND2X1 U422 ( .A(N339), .B(n388), .Y(n402) );
  OAI211X1 U423 ( .A0(n381), .A1(n404), .B0(n405), .C0(n406), .Y(n232) );
  AOI222XL U424 ( .A0(n385), .A1(N254), .B0(N246), .B1(n386), .C0(res_do[5]), 
        .C1(n387), .Y(n406) );
  NAND2X1 U425 ( .A(N340), .B(n388), .Y(n405) );
  NAND4BX1 U426 ( .AN(n364), .B(n379), .C(n365), .D(n367), .Y(n414) );
  CLKINVX1 U427 ( .A(n415), .Y(n379) );
  NAND4X1 U428 ( .A(n416), .B(n417), .C(n418), .D(n419), .Y(n364) );
  NAND2X1 U429 ( .A(n317), .B(n366), .Y(n380) );
  CLKINVX1 U430 ( .A(n421), .Y(n411) );
  NAND3X1 U431 ( .A(n423), .B(n259), .C(n424), .Y(n366) );
  NAND2X1 U432 ( .A(N341), .B(n388), .Y(n408) );
  AND4X1 U433 ( .A(n425), .B(n367), .C(n416), .D(n417), .Y(n413) );
  NAND3X1 U434 ( .A(state[1]), .B(state[2]), .C(n426), .Y(n367) );
  AOI32X1 U435 ( .A0(n431), .A1(n432), .A2(n433), .B0(n434), .B1(n435), .Y(
        n430) );
  OAI21XL U436 ( .A0(n436), .A1(n437), .B0(res_do[6]), .Y(n435) );
  AOI2BB2X1 U437 ( .B0(res_do[6]), .B1(n437), .A0N(n264), .A1N(N253), .Y(n433)
         );
  OAI211X1 U438 ( .A0(n438), .A1(n439), .B0(n440), .C0(n441), .Y(n431) );
  OAI2BB1X1 U439 ( .A0N(n439), .A1N(n438), .B0(n266), .Y(n441) );
  OAI222XL U440 ( .A0(N252), .A1(n266), .B0(N251), .B1(n261), .C0(n442), .C1(
        n443), .Y(n440) );
  NOR2X1 U441 ( .A(res_do[1]), .B(n444), .Y(n443) );
  AOI211X1 U442 ( .A0(res_do[1]), .A1(n444), .B0(n445), .C0(res_do[0]), .Y(
        n442) );
  CLKINVX1 U443 ( .A(N249), .Y(n445) );
  CLKINVX1 U444 ( .A(N250), .Y(n444) );
  CLKINVX1 U445 ( .A(N252), .Y(n439) );
  NAND2X1 U446 ( .A(N251), .B(n261), .Y(n438) );
  CLKINVX1 U447 ( .A(n422), .Y(n410) );
  CLKINVX1 U448 ( .A(res_di[7]), .Y(n382) );
  NOR2X1 U449 ( .A(res_di[7]), .B(n265), .Y(n448) );
  NAND2X1 U450 ( .A(n454), .B(n407), .Y(n452) );
  AOI32X1 U451 ( .A0(res_di[4]), .A1(n264), .A2(n450), .B0(n260), .B1(
        res_di[5]), .Y(n454) );
  AOI22X1 U452 ( .A0(res_do[6]), .A1(n407), .B0(res_do[4]), .B1(n401), .Y(n451) );
  CLKINVX1 U453 ( .A(res_di[4]), .Y(n401) );
  CLKINVX1 U454 ( .A(res_di[6]), .Y(n407) );
  NAND2X1 U455 ( .A(res_do[5]), .B(n404), .Y(n450) );
  OAI211X1 U456 ( .A0(n455), .A1(n398), .B0(n456), .C0(n457), .Y(n449) );
  AO21X1 U457 ( .A0(n398), .A1(n455), .B0(res_do[3]), .Y(n457) );
  OAI222XL U458 ( .A0(res_di[3]), .A1(n266), .B0(res_di[2]), .B1(n261), .C0(
        n458), .C1(n459), .Y(n456) );
  NOR2X1 U459 ( .A(res_do[1]), .B(n392), .Y(n459) );
  AOI211X1 U460 ( .A0(res_do[1]), .A1(n392), .B0(n389), .C0(res_do[0]), .Y(
        n458) );
  NAND2X1 U461 ( .A(res_di[2]), .B(n261), .Y(n455) );
  OAI31XL U462 ( .A0(n460), .A1(state[0]), .A2(n461), .B0(n418), .Y(n421) );
  CLKINVX1 U463 ( .A(n424), .Y(n460) );
  MXI2X1 U464 ( .A(n462), .B(n201), .S0(n463), .Y(n230) );
  NOR3BXL U465 ( .AN(n378), .B(n369), .C(n370), .Y(n463) );
  AOI221XL U466 ( .A0(n377), .A1(n446), .B0(n308), .B1(N556), .C0(n420), .Y(
        n464) );
  OAI22XL U467 ( .A0(state[0]), .A1(n465), .B0(state[2]), .B1(n466), .Y(n378)
         );
  MXI2X1 U468 ( .A(n467), .B(n468), .S0(n469), .Y(n466) );
  NOR2X1 U469 ( .A(n258), .B(n262), .Y(n468) );
  NOR2X1 U470 ( .A(state[1]), .B(n259), .Y(n467) );
  NAND3X1 U471 ( .A(n365), .B(n362), .C(n471), .Y(n369) );
  AND3X1 U472 ( .A(n418), .B(n417), .C(n416), .Y(n471) );
  NAND3X1 U473 ( .A(n472), .B(n262), .C(state[1]), .Y(n418) );
  NAND3X1 U474 ( .A(n472), .B(n258), .C(state[3]), .Y(n362) );
  NAND2X1 U475 ( .A(n427), .B(n473), .Y(n365) );
  NAND3X1 U476 ( .A(n317), .B(n315), .C(n316), .Y(n470) );
  CLKMX2X2 U477 ( .A(N293), .B(sti_addr[9]), .S0(n290), .Y(n229) );
  CLKMX2X2 U478 ( .A(N284), .B(sti_addr[0]), .S0(n290), .Y(n228) );
  CLKMX2X2 U479 ( .A(N285), .B(sti_addr[1]), .S0(n290), .Y(n227) );
  CLKMX2X2 U480 ( .A(N286), .B(sti_addr[2]), .S0(n290), .Y(n226) );
  CLKMX2X2 U481 ( .A(N287), .B(sti_addr[3]), .S0(n290), .Y(n225) );
  CLKMX2X2 U482 ( .A(N288), .B(sti_addr[4]), .S0(n290), .Y(n224) );
  CLKMX2X2 U483 ( .A(N289), .B(sti_addr[5]), .S0(n290), .Y(n223) );
  CLKMX2X2 U484 ( .A(N290), .B(sti_addr[6]), .S0(n290), .Y(n222) );
  CLKMX2X2 U485 ( .A(N291), .B(sti_addr[7]), .S0(n290), .Y(n221) );
  CLKMX2X2 U486 ( .A(N292), .B(sti_addr[8]), .S0(n290), .Y(n220) );
  OAI21XL U487 ( .A0(n308), .A1(n212), .B0(n323), .Y(n219) );
  NAND4X1 U488 ( .A(n427), .B(n259), .C(n262), .D(n474), .Y(n323) );
  OAI211X1 U489 ( .A0(n475), .A1(n476), .B0(n320), .C0(n477), .Y(n216) );
  NOR2X1 U490 ( .A(n303), .B(n415), .Y(n477) );
  NOR2X1 U491 ( .A(n315), .B(N556), .Y(n415) );
  CLKINVX1 U492 ( .A(n313), .Y(n303) );
  NAND2X1 U493 ( .A(n291), .B(n321), .Y(n313) );
  AND4X1 U494 ( .A(n478), .B(n479), .C(n480), .D(n481), .Y(n321) );
  NOR4X1 U495 ( .A(res_addr[9]), .B(res_addr[8]), .C(res_addr[7]), .D(
        res_addr[6]), .Y(n481) );
  NOR3X1 U496 ( .A(res_addr[3]), .B(res_addr[5]), .C(res_addr[4]), .Y(n480) );
  NOR4X1 U497 ( .A(res_addr[2]), .B(res_addr[1]), .C(res_addr[13]), .D(
        res_addr[12]), .Y(n479) );
  NOR3X1 U498 ( .A(res_addr[0]), .B(res_addr[11]), .C(res_addr[10]), .Y(n478)
         );
  CLKINVX1 U499 ( .A(n482), .Y(n320) );
  OAI31XL U500 ( .A0(n483), .A1(n484), .A2(n485), .B0(n486), .Y(n482) );
  CLKINVX1 U501 ( .A(n307), .Y(n486) );
  NAND4X1 U502 ( .A(res_addr[2]), .B(res_addr[1]), .C(res_addr[13]), .D(
        res_addr[12]), .Y(n485) );
  NAND4BX1 U503 ( .AN(n290), .B(res_addr[11]), .C(res_addr[10]), .D(
        res_addr[0]), .Y(n484) );
  CLKINVX1 U504 ( .A(n327), .Y(n310) );
  CLKINVX1 U505 ( .A(n326), .Y(n309) );
  NAND3X1 U506 ( .A(n199), .B(n198), .C(n218), .Y(n326) );
  NAND4X1 U507 ( .A(res_addr[8]), .B(res_addr[7]), .C(res_addr[9]), .D(n487), 
        .Y(n483) );
  AND4X1 U508 ( .A(res_addr[3]), .B(res_addr[4]), .C(res_addr[5]), .D(
        res_addr[6]), .Y(n487) );
  CLKINVX1 U509 ( .A(N562), .Y(n476) );
  CLKINVX1 U510 ( .A(n318), .Y(n488) );
  NAND3X1 U511 ( .A(n327), .B(n316), .C(n489), .Y(n318) );
  NOR3X1 U512 ( .A(n446), .B(n308), .C(n307), .Y(n489) );
  NOR3X1 U513 ( .A(n461), .B(state[0]), .C(n469), .Y(n307) );
  CLKINVX1 U514 ( .A(n315), .Y(n308) );
  NAND4X1 U515 ( .A(n423), .B(n259), .C(n262), .D(n474), .Y(n315) );
  NAND3X1 U516 ( .A(n423), .B(state[0]), .C(n424), .Y(n327) );
  NOR2X1 U517 ( .A(n262), .B(state[4]), .Y(n424) );
  NOR2X1 U518 ( .A(n258), .B(state[2]), .Y(n423) );
  NAND4X1 U519 ( .A(state[4]), .B(state[0]), .C(n490), .D(state[1]), .Y(n316)
         );
  NOR2X1 U520 ( .A(state[3]), .B(n263), .Y(n490) );
  NAND4X1 U521 ( .A(n395), .B(n398), .C(n392), .D(n491), .Y(n377) );
  NOR4X1 U522 ( .A(res_di[7]), .B(res_di[6]), .C(res_di[5]), .D(res_di[4]), 
        .Y(n491) );
  CLKINVX1 U523 ( .A(res_di[2]), .Y(n395) );
  CLKINVX1 U524 ( .A(n317), .Y(n446) );
  NAND3X1 U525 ( .A(state[1]), .B(n472), .C(state[3]), .Y(n317) );
  NOR3X1 U526 ( .A(state[0]), .B(state[4]), .C(n263), .Y(n472) );
  OAI31XL U527 ( .A0(n469), .A1(n259), .A2(n461), .B0(n213), .Y(n214) );
  CLKINVX1 U528 ( .A(n427), .Y(n461) );
  NOR2X1 U529 ( .A(state[2]), .B(state[1]), .Y(n427) );
  CLKINVX1 U530 ( .A(n465), .Y(n469) );
  NOR2X1 U531 ( .A(n474), .B(n262), .Y(n465) );
endmodule

