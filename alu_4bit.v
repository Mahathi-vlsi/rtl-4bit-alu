// 4-bit ALU - ADD, SUB, AND, OR, XOR
// Author: Mahathi-vlsi
module alu_4bit (
    input  [3:0] a,
    input  [3:0] b,
    input  [2:0] opcode,  // 000=ADD, 001=SUB, 010=AND, 011=OR, 100=XOR
    output reg [3:0] result,
    output reg carry
);

always @(*) begin
    case (opcode)
        3'b000: {carry, result} = a + b;      // ADD
        3'b001: {carry, result} = a - b;      // SUB
        3'b010: result = a & b; carry = 0;    // AND
        3'b011: result = a | b; carry = 0;    // OR  
        3'b100: result = a ^ b; carry = 0;    // XOR
        default: begin result = 4'b0; carry = 0; end
    endcase
end

endmodule