//mux design w/ tri
module mux(out, a, b, control);
  output out;
  input a, b, control;
  
  tri out;
  wire a, b, control;

  bufif0 b1(out, a, control); // control=0 : out = a, z(o.w.) 
  bufif1 b2(out, b, control); // control=1 : out = b, z(o.w.)
endmodule

// trireg
trireg (large) out;
wire a, control;

bufif1 (out, a, control); // control=1 : a, control=0 : last value instead of z

// tri
tri0 out;
wire a, control;

bufif1 (out, a, control); // control=1 : a, control=0 : 0 instead of z

//wand, wor
wand out1;
wor out2;

buf (out1, 1'b0); // out1 = 0
buf (out1, 1'b1); // out1 = 0

buf (out2, 1'b0); // out2 = 1
buf (out2, 1'b1); // out2 = 1
