module ALU_decoder(
input [6:0]fn7,op,
input [1:0] ALUop,
input [2:0] fn3,
output [2:0]ALU_control
 );
 wire [1:0]concatenation;
// assign concatenation={op,fn7};
 //truth table for ALU decoder
 assign ALU_control=(ALUop==2'b00)? 3'b000:
                     (ALUop==2'b01)? 3'b001:
                     ((ALUop==2'b10) & (fn3==3'b111))? 3'b010:
                     ((ALUop==2'b10) & (fn3==3'b110))? 3'b011:
                     ((ALUop==2'b10) & (fn3==3'b010))? 3'b101:
                     ((ALUop==2'b10) & (fn3==3'b000)&({op[5],fn7[5]}==2'b11))? 3'b010:
                     ((ALUop==2'b10) & (fn3==3'b000)&({op[5],fn7[5]}!=2'b11))? 3'b000:3'b000;
endmodule