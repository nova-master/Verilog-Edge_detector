`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2023 10:18:51 AM
// Design Name: 
// Module Name: Edge_detector_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Edge_detector_tb;
reg clk,btnD;
    wire check;
    Edge_detector dut(btnD,clk,check);

    initial begin
        btnD = 0;
        clk = 0;
        forever begin
        // generating clk signal with time interval 8
          #5 clk = ~clk;
        end
    end

    initial begin
       // generating btnD signal with time interval 8
        forever begin
            #8 btnD = ~btnD;
       
        end
    end
endmodule
//there is initialization delay of 100ns
//https://support.xilinx.com/s/question/0D52E00006hpZBtSAM/100ns-delay-when-using-ise-isim-why?language=en_US 