module PC_count( PC , IM, IBeq , zero , NPC);
input [29:0] PC ;
input [31:0] IM ;
input IBeq , zero ;
output [29:0]NPC ;

wire [29:0] p ;
assign p = {14'b0 , IM [15:0]} + PC;

assign NPC = ( IBeq & ~zero ) ? p  : PC  ;
endmodule