// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:CGRATop:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module CADABD_CGRATop_0_0 (
  clk,
  rst,
  startAddr1,
  count1,
  count2,
  stride1,
  WEn1,
  valid1,
  startAddr2,
  stride2,
  WEn2,
  valid2,
  IOConfig,
  globalDataIn,
  globalDataOut,
  IglobalDataIn,
  IglobalDataOut,
  IstartAddr1,
  Istride1,
  IWEn1,
  Ivalid1,
  IstartAddr2,
  Istride2,
  IWEn2,
  Ivalid2,
  mWEn1,
  mWEn2,
  mDataToMem,
  mDataFromMem,
  mAddr1,
  mEn1,
  mAddr2,
  mEn2,
  mIWEn1,
  mIWEn2,
  Icount1,
  Icount2,
  mIDataFromMem,
  mIDataToMem,
  mIAddr1,
  mIEn1,
  mIAddr2,
  mIEn2
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [647 : 0] startAddr1;
input wire [755 : 0] count1;
input wire [755 : 0] count2;
input wire [107 : 0] stride1;
input wire [107 : 0] WEn1;
input wire [107 : 0] valid1;
input wire [647 : 0] startAddr2;
input wire [107 : 0] stride2;
input wire [107 : 0] WEn2;
input wire [107 : 0] valid2;
input wire [557 : 0] IOConfig;
input wire [3455 : 0] globalDataIn;
output wire [3455 : 0] globalDataOut;
input wire [38 : 0] IglobalDataIn;
output wire [38 : 0] IglobalDataOut;
input wire [4 : 0] IstartAddr1;
input wire [0 : 0] Istride1;
input wire IWEn1;
input wire Ivalid1;
input wire [4 : 0] IstartAddr2;
input wire [0 : 0] Istride2;
input wire IWEn2;
input wire Ivalid2;
output wire [107 : 0] mWEn1;
output wire [107 : 0] mWEn2;
output wire [3455 : 0] mDataToMem;
input wire [3455 : 0] mDataFromMem;
output wire [647 : 0] mAddr1;
output wire [107 : 0] mEn1;
output wire [647 : 0] mAddr2;
output wire [107 : 0] mEn2;
output wire mIWEn1;
output wire mIWEn2;
input wire [7 : 0] Icount1;
input wire [7 : 0] Icount2;
input wire [38 : 0] mIDataFromMem;
output wire [38 : 0] mIDataToMem;
output wire [4 : 0] mIAddr1;
output wire mIEn1;
output wire [4 : 0] mIAddr2;
output wire mIEn2;

  CGRATop inst (
    .clk(clk),
    .rst(rst),
    .startAddr1(startAddr1),
    .count1(count1),
    .count2(count2),
    .stride1(stride1),
    .WEn1(WEn1),
    .valid1(valid1),
    .startAddr2(startAddr2),
    .stride2(stride2),
    .WEn2(WEn2),
    .valid2(valid2),
    .IOConfig(IOConfig),
    .globalDataIn(globalDataIn),
    .globalDataOut(globalDataOut),
    .IglobalDataIn(IglobalDataIn),
    .IglobalDataOut(IglobalDataOut),
    .IstartAddr1(IstartAddr1),
    .Istride1(Istride1),
    .IWEn1(IWEn1),
    .Ivalid1(Ivalid1),
    .IstartAddr2(IstartAddr2),
    .Istride2(Istride2),
    .IWEn2(IWEn2),
    .Ivalid2(Ivalid2),
    .mWEn1(mWEn1),
    .mWEn2(mWEn2),
    .mDataToMem(mDataToMem),
    .mDataFromMem(mDataFromMem),
    .mAddr1(mAddr1),
    .mEn1(mEn1),
    .mAddr2(mAddr2),
    .mEn2(mEn2),
    .mIWEn1(mIWEn1),
    .mIWEn2(mIWEn2),
    .Icount1(Icount1),
    .Icount2(Icount2),
    .mIDataFromMem(mIDataFromMem),
    .mIDataToMem(mIDataToMem),
    .mIAddr1(mIAddr1),
    .mIEn1(mIEn1),
    .mIAddr2(mIAddr2),
    .mIEn2(mIEn2)
  );
endmodule
