//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri May 30 00:05:40 2025
//Host        : cjl running 64-bit major release  (build 9200)
//Command     : generate_target CADABD_wrapper.bd
//Design      : CADABD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CADABD_wrapper
   (IOConfig,
    IaddrIn1,
    IaddrIn2,
    Icount1,
    Icount2,
    IdataIn,
    IdataOut,
    IstrideIn1,
    IstrideIn2,
    IvalidIn1,
    IvalidIn2,
    IwriteEnIn1,
    IwriteEnIn2,
    addrIn1,
    addrIn2,
    clk,
    count1,
    count2,
    dataIn,
    dataOut,
    rst,
    strideIn1,
    strideIn2,
    validIn1,
    validIn2,
    writeEnIn1,
    writeEnIn2);
  input [557:0]IOConfig;
  input [4:0]IaddrIn1;
  input [4:0]IaddrIn2;
  input [7:0]Icount1;
  input [7:0]Icount2;
  input [38:0]IdataIn;
  output [38:0]IdataOut;
  input [0:0]IstrideIn1;
  input [0:0]IstrideIn2;
  input [0:0]IvalidIn1;
  input [0:0]IvalidIn2;
  input [0:0]IwriteEnIn1;
  input [0:0]IwriteEnIn2;
  input [647:0]addrIn1;
  input [647:0]addrIn2;
  input clk;
  input [755:0]count1;
  input [755:0]count2;
  input [3455:0]dataIn;
  output [3455:0]dataOut;
  input rst;
  input [107:0]strideIn1;
  input [107:0]strideIn2;
  input [107:0]validIn1;
  input [107:0]validIn2;
  input [107:0]writeEnIn1;
  input [107:0]writeEnIn2;

  wire [557:0]IOConfig;
  wire [4:0]IaddrIn1;
  wire [4:0]IaddrIn2;
  wire [7:0]Icount1;
  wire [7:0]Icount2;
  wire [38:0]IdataIn;
  wire [38:0]IdataOut;
  wire [0:0]IstrideIn1;
  wire [0:0]IstrideIn2;
  wire [0:0]IvalidIn1;
  wire [0:0]IvalidIn2;
  wire [0:0]IwriteEnIn1;
  wire [0:0]IwriteEnIn2;
  wire [647:0]addrIn1;
  wire [647:0]addrIn2;
  wire clk;
  wire [755:0]count1;
  wire [755:0]count2;
  wire [3455:0]dataIn;
  wire [3455:0]dataOut;
  wire rst;
  wire [107:0]strideIn1;
  wire [107:0]strideIn2;
  wire [107:0]validIn1;
  wire [107:0]validIn2;
  wire [107:0]writeEnIn1;
  wire [107:0]writeEnIn2;

  CADABD CADABD_i
       (.IOConfig(IOConfig),
        .IaddrIn1(IaddrIn1),
        .IaddrIn2(IaddrIn2),
        .Icount1(Icount1),
        .Icount2(Icount2),
        .IdataIn(IdataIn),
        .IdataOut(IdataOut),
        .IstrideIn1(IstrideIn1),
        .IstrideIn2(IstrideIn2),
        .IvalidIn1(IvalidIn1),
        .IvalidIn2(IvalidIn2),
        .IwriteEnIn1(IwriteEnIn1),
        .IwriteEnIn2(IwriteEnIn2),
        .addrIn1(addrIn1),
        .addrIn2(addrIn2),
        .clk(clk),
        .count1(count1),
        .count2(count2),
        .dataIn(dataIn),
        .dataOut(dataOut),
        .rst(rst),
        .strideIn1(strideIn1),
        .strideIn2(strideIn2),
        .validIn1(validIn1),
        .validIn2(validIn2),
        .writeEnIn1(writeEnIn1),
        .writeEnIn2(writeEnIn2));
endmodule
