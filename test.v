`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:34:11 12/22/2021
// Design Name:   bawei
// Module Name:   D:/szdl/baweierjinzhijishuqi/test.v
// Project Name:  baweierjinzhijishuqi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bawei
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg mr;
	reg load;
	reg en;
	reg clk;
	reg [7:0] d;

	// Outputs
	wire [7:0] q;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	bawei uut (
		.mr(mr), 
		.load(load), 
		.en(en), 
		.clk(clk), 
		.d(d), 
		.q(q), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		mr = 0;
		load = 0;
		en = 0;
		clk = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
      mr = 1;
		load = 0;
		en = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 0;
		en = 1;
		d = 8'b11101110;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 1;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 0;
		load = 1;
		en = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      always #20 begin clk=~clk; end
endmodule

