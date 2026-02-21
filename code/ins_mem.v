module ins_mem(A,rst,RD);
input [31:0]A;
input rst;
output  [31:0]RD;
//creation of memory
reg [31:0]mem[1023:0]; //1024 memories of 32bit sized

assign RD = (~rst) ? {32{1'b0}} : mem[A[31:2]]; //the data inside A(A is address here) is read to RD
//always @(posedge clk)
//begin
//if(!rst)
// RD<=32'd0;
// else
// RD<=mem[A[31:2]];
//end

/*initial begin //automates memory reading automatically from file
    $readmemh("memfile.h",mem); //readmemh means read memory in hexadecimal 
                                //reads input from memfile.h into mem
end*/

initial begin //for each memory location we manually specify values
//mem[0]=32'hFFC4A303; //for load format instructions examples
//mem[1]=32'h00832383; //for load format instructions examples
//mem[0]=32'h0064A423;  //for s format instructions examples
//mem[1]=32'h00B62423;//for s format
mem[0]=32'h0062E233; // for R format
end
endmodule