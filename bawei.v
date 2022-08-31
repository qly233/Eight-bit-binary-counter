`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:10 12/22/2021 
// Design Name: 
// Module Name:    bawei 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module erjinzhijiafajishuqi(mr,load,en,clk,d,q,co);
	input mr,load,en,clk;
	input[3:0] d;
	output reg co;
	output reg[3:0] q;
	always@(negedge mr or posedge clk)
	begin
		if(~mr)
		begin
			q = 4'b0000;
			co = 0;
		end
		else if(~load)
		begin
			q = d;
		end
		else if(en)
		begin
			if(q == 4'b1111)
			begin
				q = 4'b0000;
				co = 0;
			end
			else
			begin
				q = q + 1;
				if(q == 4'b1111)
					co = 1;
			end
		end
	end

endmodule

module bawei(mr,load,en,clk,d,q,co);
	input mr,load,en,clk;
	input[7:0] d;
	wire ci,cl;
	output wire co;
	output wire[7:0] q;
	erjinzhijiafajishuqi u1(mr,load,en,clk,d[3:0],q[3:0],ci);
	erjinzhijiafajishuqi u2(mr,load,ci,clk,d[7:4],q[7:4],cl);
	assign co = ci&cl;
endmodule
