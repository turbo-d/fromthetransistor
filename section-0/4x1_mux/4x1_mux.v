`timescale 1ns/1ps

module 4x1_mux
(
  input [3:0] in,
  input [1:0] s,
  output out
);

always @(in, s) begin
  case (s)
    2'b00:
      out = in[0];
    2'b01:
      out = in[1];
    2'b10:
      out = in[2];
    2'b11:
      out = in[3];
  endcase
end

endmodule
