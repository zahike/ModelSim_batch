module test1_tb();
reg clk ;
reg rstn;
initial begin 
clk = 1'b0;
rstn = 1'b0;
#100;
rstn = 1'b1;
end

always #5 clk = ~clk;

wire [7:0] OutData;

test1 test1_inst
(
.clk (clk),
.rstn(rstn),
.OutData(OutData)
);

reg[1:0] ChChang;
always @(posedge clk or negedge rstn)
	if (!rstn) ChChang <= 2'b00;
     else ChChang <= {ChChang[0],OutData[0]};

always @(posedge clk)
	if ((ChChang == 2'b01) || (ChChang == 2'b10))begin 
	   $display ("value == %x",OutData);
	     end
		 
reg monitor;		 
initial begin 
monitor = 1'b0;
@(rstn);
@(OutData == 8'hff);
monitor = 1'b1;
$finish;
end		 
endmodule