module test1
(
input clk,
input rstn,

output [7:0] OutData
);

reg [27:0] Counter;
always @(posedge clk or negedge rstn)
	if (!rstn) Counter <= 24'h000000;
	 else Counter <= Counter + 1;
assign 	OutData =  Counter[27:20];

endmodule