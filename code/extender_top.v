module extender_top(in,imm_ext,immsrc);
input immsrc; //1 if store word and 0 if load word
input [31:0]in;  
output [31:0]imm_ext;

assign imm_ext=(immsrc == 1'b1)? ({{20{in[31]}},in[31:25],in[11:7]}):  //formatted according to s type
                                     //20 bits same as 31 st bit of in
                                 {{20{in[31]}},in[31:20]}; // formatted according to other types
endmodule