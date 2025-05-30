module DSE_Solution_L0( 
clk,
rst,
DSE_Solution_L0_n0_HA_IN_1,
DSE_Solution_L0_n0_HA_IN_2,
DSE_Solution_L0_n0_HA_IN_3,
DSE_Solution_L0_n0_HA_OW_4,
DSE_Solution_L0_Config_Reg_EN,
DSE_Solution_L0_Config_Reg_InstIn
); 

input clk;
input rst;
input [31:0] DSE_Solution_L0_n0_HA_IN_1; 
input [31:0] DSE_Solution_L0_n0_HA_IN_2; 
input [31:0] DSE_Solution_L0_n0_HA_IN_3; 
output [31:0] DSE_Solution_L0_n0_HA_OW_4; 
input [0:0] DSE_Solution_L0_Config_Reg_EN; 
input [2:0] DSE_Solution_L0_Config_Reg_InstIn; 
wire [31:0] n0_HA_IN_1_WDataIn_1;
wire [31:0] n0_HA_IN_1_WDataIn_2;
wire [31:0] n0_HA_IN_1_WDataOut_1;
wire [0:0] n0_HA_IN_1_Wsel;
CADA_IN n0_HA_IN_1 (
	.clk( clk ) ,
	.rst( rst ) ,
	.DataIn_1(n0_HA_IN_1_WDataIn_1) ,
	.DataIn_2(n0_HA_IN_1_WDataIn_2) ,
	.DataOut_1(n0_HA_IN_1_WDataOut_1) ,
	.sel(n0_HA_IN_1_Wsel) 
);
assign n0_HA_IN_1_WDataIn_1 = DSE_Solution_L0_n0_HA_IN_1;
defparam n0_HA_IN_1.DataOut_1_BW = 32;
defparam n0_HA_IN_1.DataIn_1_BW = 32;
defparam n0_HA_IN_1.DataIn_2_BW = 32;
wire [31:0] n0_HA_IN_2_WDataIn_1;
wire [31:0] n0_HA_IN_2_WDataIn_2;
wire [31:0] n0_HA_IN_2_WDataOut_1;
wire [0:0] n0_HA_IN_2_Wsel;
CADA_IN n0_HA_IN_2 (
	.clk( clk ) ,
	.rst( rst ) ,
	.DataIn_1(n0_HA_IN_2_WDataIn_1) ,
	.DataIn_2(n0_HA_IN_2_WDataIn_2) ,
	.DataOut_1(n0_HA_IN_2_WDataOut_1) ,
	.sel(n0_HA_IN_2_Wsel) 
);
assign n0_HA_IN_2_WDataIn_1 = DSE_Solution_L0_n0_HA_IN_2;
defparam n0_HA_IN_2.DataOut_1_BW = 32;
defparam n0_HA_IN_2.DataIn_1_BW = 32;
defparam n0_HA_IN_2.DataIn_2_BW = 32;
wire [31:0] n0_HA_IN_3_WDataIn_1;
wire [31:0] n0_HA_IN_3_WDataIn_2;
wire [31:0] n0_HA_IN_3_WDataOut_1;
wire [0:0] n0_HA_IN_3_Wsel;
CADA_IN n0_HA_IN_3 (
	.clk( clk ) ,
	.rst( rst ) ,
	.DataIn_1(n0_HA_IN_3_WDataIn_1) ,
	.DataIn_2(n0_HA_IN_3_WDataIn_2) ,
	.DataOut_1(n0_HA_IN_3_WDataOut_1) ,
	.sel(n0_HA_IN_3_Wsel) 
);
assign n0_HA_IN_3_WDataIn_1 = DSE_Solution_L0_n0_HA_IN_3;
defparam n0_HA_IN_3.DataOut_1_BW = 32;
defparam n0_HA_IN_3.DataIn_1_BW = 32;
defparam n0_HA_IN_3.DataIn_2_BW = 32;
wire [31:0] n0_HA_OW_4_WDataIn_1;
wire [31:0] n0_HA_OW_4_WDataOut_1;
HA_OW n0_HA_OW_4 (
	.DataIn_1(n0_HA_OW_4_WDataIn_1) ,
	.DataOut_1(n0_HA_OW_4_WDataOut_1) 
);
assign DSE_Solution_L0_n0_HA_OW_4 = n0_HA_OW_4_WDataOut_1;
defparam n0_HA_OW_4.DataOut_1_BW = 32;
defparam n0_HA_OW_4.DataIn_1_BW = 32;
wire [31:0] n0_CADA_ADD_5_WDataIn_1;
wire [31:0] n0_CADA_ADD_5_WDataIn_2;
wire [31:0] n0_CADA_ADD_5_WDataOut_1;
wire [31:0] n0_CADA_ADD_5_DataOut_1_latency_1_WDataIn_1;
wire [31:0] n0_CADA_ADD_5_DataOut_1_latency_1_WDataOut_1;
assign n0_CADA_ADD_5_DataOut_1_latency_1_WDataIn_1 = n0_CADA_ADD_5_WDataOut_1;
HA_Reg n0_CADA_ADD_5_DataOut_1_latency_1 (
	.clk( clk ) ,
	.rst( rst ) ,
	.DataIn_1(n0_CADA_ADD_5_DataOut_1_latency_1_WDataIn_1) ,
	.DataOut_1(n0_CADA_ADD_5_DataOut_1_latency_1_WDataOut_1) 
);
defparam n0_CADA_ADD_5_DataOut_1_latency_1.DataIn_1_BW = 32;
defparam n0_CADA_ADD_5_DataOut_1_latency_1.DataOut_1_BW = 32;
CADA_ADD n0_CADA_ADD_5 (
	.DataIn_1(n0_CADA_ADD_5_WDataIn_1) ,
	.DataIn_2(n0_CADA_ADD_5_WDataIn_2) ,
	.DataOut_1(n0_CADA_ADD_5_WDataOut_1) 
);
defparam n0_CADA_ADD_5.DataOut_1_BW = 32;
defparam n0_CADA_ADD_5.DataIn_1_BW = 32;
defparam n0_CADA_ADD_5.DataIn_2_BW = 32;
wire [31:0] n0_CADA_Mult_6_WDataIn_1;
wire [31:0] n0_CADA_Mult_6_WDataIn_2;
wire [31:0] n0_CADA_Mult_6_WDataOut_1;
wire [31:0] n0_CADA_Mult_6_DataOut_1_latency_1_WDataIn_1;
wire [31:0] n0_CADA_Mult_6_DataOut_1_latency_1_WDataOut_1;
assign n0_CADA_Mult_6_DataOut_1_latency_1_WDataIn_1 = n0_CADA_Mult_6_WDataOut_1;
HA_Reg n0_CADA_Mult_6_DataOut_1_latency_1 (
	.clk( clk ) ,
	.rst( rst ) ,
	.DataIn_1(n0_CADA_Mult_6_DataOut_1_latency_1_WDataIn_1) ,
	.DataOut_1(n0_CADA_Mult_6_DataOut_1_latency_1_WDataOut_1) 
);
defparam n0_CADA_Mult_6_DataOut_1_latency_1.DataIn_1_BW = 32;
defparam n0_CADA_Mult_6_DataOut_1_latency_1.DataOut_1_BW = 32;
CADA_Mult n0_CADA_Mult_6 (
	.DataOut_1(n0_CADA_Mult_6_WDataOut_1) ,
	.DataIn_1(n0_CADA_Mult_6_WDataIn_1) ,
	.DataIn_2(n0_CADA_Mult_6_WDataIn_2) 
);
defparam n0_CADA_Mult_6.DataOut_1_BW = 32;
defparam n0_CADA_Mult_6.DataIn_1_BW = 32;
defparam n0_CADA_Mult_6.DataIn_2_BW = 32;
wire [31:0] LogicMux_1_WDataIn_1;
wire [31:0] LogicMux_1_WDataIn_2;
wire [31:0] LogicMux_1_WDataOut_1;
wire [0:0] LogicMux_1_Wsel;
HA_2IM LogicMux_1 (
	.DataIn_1(LogicMux_1_WDataIn_1) ,
	.DataIn_2(LogicMux_1_WDataIn_2) ,
	.DataOut_1(LogicMux_1_WDataOut_1) ,
	.sel(LogicMux_1_Wsel) 
);
defparam LogicMux_1.Mux_BW = 32;
wire [31:0] LogicMux_2_WDataIn_1;
wire [31:0] LogicMux_2_WDataIn_2;
wire [31:0] LogicMux_2_WDataOut_1;
wire [0:0] LogicMux_2_Wsel;
HA_2IM LogicMux_2 (
	.DataIn_1(LogicMux_2_WDataIn_1) ,
	.DataIn_2(LogicMux_2_WDataIn_2) ,
	.DataOut_1(LogicMux_2_WDataOut_1) ,
	.sel(LogicMux_2_Wsel) 
);
defparam LogicMux_2.Mux_BW = 32;
wire [31:0] LogicMux_3_WDataIn_1;
wire [31:0] LogicMux_3_WDataIn_2;
wire [31:0] LogicMux_3_WDataOut_1;
wire [0:0] LogicMux_3_Wsel;
HA_2IM LogicMux_3 (
	.DataIn_1(LogicMux_3_WDataIn_1) ,
	.DataIn_2(LogicMux_3_WDataIn_2) ,
	.DataOut_1(LogicMux_3_WDataOut_1) ,
	.sel(LogicMux_3_Wsel) 
);
defparam LogicMux_3.Mux_BW = 32;

// Connect child module input to parent module output 

assign n0_CADA_Mult_6_WDataIn_1 = n0_HA_IN_1_WDataOut_1;
assign LogicMux_2_WDataIn_1 = n0_HA_IN_2_WDataOut_1;
assign n0_CADA_ADD_5_WDataIn_1 = LogicMux_2_WDataOut_1;
assign LogicMux_3_WDataIn_1 = n0_HA_IN_2_WDataOut_1;
assign n0_CADA_Mult_6_WDataIn_2 = LogicMux_3_WDataOut_1;

// Connect child module input to parent module output 

assign n0_CADA_ADD_5_WDataIn_2 = n0_HA_IN_3_WDataOut_1;
assign LogicMux_1_WDataIn_1 = n0_CADA_ADD_5_DataOut_1_latency_1_WDataOut_1;
assign n0_HA_OW_4_WDataIn_1 = LogicMux_1_WDataOut_1;
assign LogicMux_3_WDataIn_2 = n0_CADA_ADD_5_DataOut_1_latency_1_WDataOut_1;
assign LogicMux_1_WDataIn_2 = n0_CADA_Mult_6_DataOut_1_latency_1_WDataOut_1;
assign LogicMux_2_WDataIn_2 = n0_CADA_Mult_6_DataOut_1_latency_1_WDataOut_1;
wire [2:0] Config_Reg_WInstOut;
wire [2:0] Config_Reg_WInstIn;
wire [0:0] Config_Reg_WEN;
assign LogicMux_1_Wsel = Config_Reg_WInstOut[0:0]; 
assign LogicMux_2_Wsel = Config_Reg_WInstOut[1:1]; 
assign LogicMux_3_Wsel = Config_Reg_WInstOut[2:2]; 
HA_CReg Config_Reg (
	.clk( clk ) ,
	.rst( rst ) ,
	.InstIn(Config_Reg_WInstIn) ,
	.InstOut(Config_Reg_WInstOut) ,
	.EN(Config_Reg_WEN) 
);
defparam Config_Reg.Inst_BW = 3;
assign Config_Reg_WEN = DSE_Solution_L0_Config_Reg_EN;
assign Config_Reg_WInstIn = DSE_Solution_L0_Config_Reg_InstIn;
endmodule
