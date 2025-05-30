module DSE_Solution_L5( 
clk,
rst,
DSE_Solution_L5_t5_In0_1,
DSE_Solution_L5_t5_O0_3
); 

input clk;
input rst;
input [31:0] DSE_Solution_L5_t5_In0_1; 
output [31:0] DSE_Solution_L5_t5_O0_3; 
wire [31:0] t5_In0_1_WDataIn_1;
wire [31:0] t5_In0_1_WDataOut_1;
HA_INW t5_In0_1 (
	.DataIn_1(t5_In0_1_WDataIn_1) ,
	.DataOut_1(t5_In0_1_WDataOut_1) 
);
assign t5_In0_1_WDataIn_1 = DSE_Solution_L5_t5_In0_1;
defparam t5_In0_1.DataOut_1_BW = 32;
defparam t5_In0_1.DataIn_1_BW = 32;
wire [31:0] Token0_2_WDataIn_1;
wire [31:0] Token0_2_WDataOut_1;
HA_TW Token0_2 (
	.DataIn_1(Token0_2_WDataIn_1) ,
	.DataOut_1(Token0_2_WDataOut_1) 
);
defparam Token0_2.DataOut_1_BW = 32;
defparam Token0_2.DataIn_1_BW = 32;
wire [31:0] t5_O0_3_WDataIn_1;
wire [31:0] t5_O0_3_WDataOut_1;
HA_OW t5_O0_3 (
	.DataIn_1(t5_O0_3_WDataIn_1) ,
	.DataOut_1(t5_O0_3_WDataOut_1) 
);
assign DSE_Solution_L5_t5_O0_3 = t5_O0_3_WDataOut_1;
defparam t5_O0_3.DataOut_1_BW = 32;
defparam t5_O0_3.DataIn_1_BW = 32;

// Connect child module input to parent module output 

assign Token0_2_WDataIn_1 = t5_In0_1_WDataOut_1;

// Connect child module input to parent module output 

assign t5_O0_3_WDataIn_1 = Token0_2_WDataOut_1;
endmodule
