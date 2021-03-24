`timescale 1ns/1ps

module dff
(
  input clk,
  input d,
  output reg q
);

always @(posedge clk)
  q <= d;

endmodule
