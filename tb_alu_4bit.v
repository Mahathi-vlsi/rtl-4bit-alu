// Testbench for 4-bit ALU
module tb_alu_4bit;
reg [3:0] a, b;
reg [2:0] opcode;
wire [3:0] result;
wire carry;

// DUT instance
alu_4bit uut (.a(a), .b(b), .opcode(opcode), .result(result), .carry(carry));

initial begin
    $monitor("Time=%0t | A=%b B=%b Op=%b | Result=%b Carry=%b", 
             $time, a, b, opcode, result, carry);
    
    // Test cases
    a = 4'd5; b = 4'd3; opcode = 3'b000; #10; // ADD: 5+3=8
    a = 4'd9; b = 4'd4; opcode = 3'b001; #10; // SUB: 9-4=5
    a = 4'd12; b = 4'd10; opcode = 3'b010; #10; // AND
    a = 4'd12; b = 4'd10; opcode = 3'b011; #10; // OR
    a = 4'd12; b = 4'd10; opcode = 3'b100; #10; // XOR
    
    $finish;
end
endmodule