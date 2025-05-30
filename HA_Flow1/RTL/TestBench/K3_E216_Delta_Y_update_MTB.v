module K3_E216_Delta_Y_update_RTL_TB();
reg  clk, rst; 
wire [287:0] dataOut; 
reg [3455:0] dataIn; 
wire [557:0] IOConfigW; 
wire [74:0] totalConfigInW; 
reg [15:0] selectedChannel; 
reg [755:0] count1, count2; 
reg [647:0] startAddr1, startAddr2; 
reg [107:0] stride1, stride2; 
reg [107:0] WEn1, valid1, WEn2, valid2; 
reg [125:0] gcontrolR; 
reg [7:0] Icount1, Icount2; 
reg [4:0] IstartAddr1, IstartAddr2; 
reg [0:0] Istride1, Istride2; 
reg Ivalid1, IWEn1,  Ivalid2, IWEn2; 
wire[15:0] o0,o1,o2,o3,o4,o5,o6,o7,oi;
CADAMemTest_wrapper uut(
.clk(clk),
.rst(rst),
.addrIn1(startAddr1),
.addrIn2(startAddr2),
.count1(count1),
.count2(count2),
.strideIn1(stride1),
.strideIn2(stride2),
.writeEnIn1(WEn1),
.writeEnIn2(WEn2),
.validIn1(valid1),
.validIn2(valid2),
.IOConfig(IOConfigW),
.dataIn(dataIn),
.dataOut(dataOut),
.IglobalDataIn(dataIn),
.IglobalDataOut(dataOut),
.IaddrIn1(IstartAddr1),
.IaddrIn2(IstartAddr2),
.IstrideIn1(Istride1),
.IstrideIn2(Istride2),
.IwriteEnIn1(IWEn1),
.IwriteEnIn2(IWEn2),
.IvalidIn1(Ivalid1),
.IvalidIn2(Ivalid2),
.Icount1(Icount1),
.Icount2(Icount2),
.o0(o0),
.o1(o1),
.o2(o2),
.o3(o3),
.o4(o4),
.o5(o5),
.o6(o6),
.o7(o7),
.oi(oi)
);
reg [431:0] mOutConfigr;
assign IOConfigW = {mOutConfigr, gcontrolR }; 

reg [2:0] configInR; 
reg [35:0] controlInR; 
assign totalConfigInW = {configInR, controlInR }; 

always #1 clk = ~clk;
initial begin
rst = 1'b1;
clk = 1'b1;
dataIn = 0;
startAddr1 = 0;
startAddr2 = 0;
count1 = 0;
count2 = 0;
stride1 = 0;
stride2 = 0;
WEn1 = 0;
WEn2 = 0;
valid1 = 0;
valid2 = 0;
#20
rst = 1'b0;
#2
dataIn = {16'd1, 16'd1, 16'd1, 16'd1, 16'd1, 16'd1, 16'd1, 16'd1};
gcontrolR = 10'b1111111111;
mOutConfigr = 24'b101101101101101101101101;
WEn1 = 1;
startAddr1 = 0;
count1 = 3;
stride1 = 1;
valid1 = 1;
#2
valid1 = 0;
dataIn = {16'd2, 16'd2, 16'd2, 16'd2, 16'd2, 16'd2, 16'd2, 16'd2};
#2
valid1 = 0;
dataIn = {16'd3, 16'd3, 16'd3, 16'd3, 16'd3, 16'd3, 16'd3, 16'd3};
#2
WEn2 = 0;
startAddr2 = 0;
count2 = 3;
stride2 = 1;
valid2 = 1;
#2
valid2 = 0;
#20
valid2 = 0;

end


endmodule
