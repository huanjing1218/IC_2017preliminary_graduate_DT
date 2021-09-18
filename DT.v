module DT(
	input clk, 
	input reset,
	output reg done ,
	output reg sti_rd ,
	output reg [9:0] sti_addr ,
	input [15:0] sti_di,
	output reg res_wr ,
	output reg res_rd ,
	output reg [13:0] res_addr ,
	output reg [7:0] res_do,
	input [7:0]	res_di
);

reg [4:0] state, next;
reg [3:0] index;

integer i;

always @ (posedge clk or negedge reset) begin
	if(!reset) begin
		done <= 0;
		sti_rd <= 1;
		sti_addr <= 0;
		res_wr <= 0;
		res_rd <= 0;
		res_addr <= 0;
		res_do <= 0;
		state <= 0;
		index <= 15;
	end
	else begin
		state <= next;
		case(state)
			5'd0: begin
				sti_rd <= 1;
				index <= 15;
			end
			5'd2: begin 
				sti_rd <= 0;
				if(sti_di[index] == 0) begin // background, 0
					res_wr <= 1;
					res_do <= 0;
				end
				else begin // object, find (minimum + 1)
					res_rd <= 1;
					res_addr <= res_addr - 129; 
				end
			end
			5'd4: begin // read NW
				res_rd <= 1;
				res_do <= res_di;
				res_addr <= res_addr + 1;
			end
 			5'd6: begin // read N		
				res_rd <= 1;
				res_addr <= res_addr + 1;
				if(res_do < res_di)
					res_do <= res_do;
				else 
					res_do <= res_di;
			end
			5'd8: begin // read NE
				res_rd <= 1;
				res_addr <= res_addr + 126;
				if(res_do < res_di)
					res_do <= res_do;
				else 
					res_do <= res_di;
			end
			5'd10: begin // read W
				res_wr <= 1;
				res_addr <= res_addr + 1;
				if(res_do < res_di)
					res_do <= res_do + 1;
				else 
					res_do <= res_di + 1;
			end
			5'd11: begin
				res_wr <= 0;
				res_addr <= res_addr + 1;
				index <= index - 1;
				if(index == 0) 
					sti_addr <= sti_addr + 1;
			end
			5'd12: begin 
				res_rd <= 1;
				res_addr <= 16383;
			end
			5'd14: begin // Px,y
				res_do <= res_di;
				if(res_di[7:1] == 7'b0000000) begin
					res_wr <= 1;
				end
				else begin
					res_rd <= 1;
					res_addr <= res_addr + 1;
				end
			end
			5'd16: begin // read E
				res_rd <= 1;
				res_addr <= res_addr + 126;
				if(res_do < (res_di + 1))
					res_do <= res_do;
				else 
					res_do <= res_di + 1;
			end
			5'd18: begin // read SW
				res_rd <= 1;
				res_addr <= res_addr + 1;
				if(res_do < (res_di + 1))
					res_do <= res_do;
				else 
					res_do <= res_di + 1;
			end
			5'd20: begin // read S
				res_rd <= 1;
				res_addr <= res_addr + 1;
				if(res_do < (res_di + 1))
					res_do <= res_do;
				else 
					res_do <= res_di + 1;
			end
			5'd22: begin // read SE
				res_wr <= 1;
				res_addr <= res_addr - 129;
				if(res_do < (res_di + 1))
					res_do <= res_do;
				else 
					res_do <= res_di + 1;
			end
			5'd23: begin
				res_rd <= 1;
				res_wr <= 0;
				res_addr <= res_addr - 1;
			end
			5'd25: begin
				done <= 1;
			end
			default: begin
				res_rd <= 0;
				res_wr <= 0;
			end
		endcase
	end
end

always @ (*) begin
	case(state)
		5'd2: begin
			if(sti_di[index] == 0)
				next = 11;
			else 
				next = 3;
		end
		5'd11: begin
			if(index == 0) begin // finish each word
				if(res_addr == 16383) // finish forward pass
					next = 12;
				else 
					next = 0;
			end
			else
				next = 2;
		end
		5'd14: begin
			if(res_di[7:1] == 7'b0000000)
				next = 23;
			else 
				next = state + 1;
		end
		5'd23: begin
			if(res_addr == 0)
				next = 25; // done
			else 
				next = state + 1;
		end
		5'd24: begin
			next = 14;
		end
		default: begin
			next = state + 1;
		end
	endcase
end

endmodule
