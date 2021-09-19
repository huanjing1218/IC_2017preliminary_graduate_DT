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

reg [3:0] state, next;
reg [3:0] index;

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
			4'd0: begin 
				sti_rd <= 0;
				if(sti_di[index] == 0) begin // background, res_do = 0
					res_wr <= 1;
					res_do <= 0;
				end
				else begin // object, res_do = (min + 1)
					res_rd <= 1;
					res_addr <= res_addr - 129; 
				end
			end
			4'd1: begin // NW
				res_do <= res_di;
				res_addr <= res_addr + 1;
			end
			4'd2: begin // N
				res_addr <= res_addr + 1;
				if(res_di < res_do) 
					res_do <= res_di;
			end
			4'd3: begin // NE
				res_addr <= res_addr + 126;
				if(res_di < res_do) 
					res_do <= res_di;
			end
			4'd4: begin // W
				res_wr <= 1;
				res_rd <= 0;
				res_addr <= res_addr + 1;
				if(res_di < res_do)
					res_do <= res_di + 1;
				else 
					res_do <= res_do + 1;
			end				
			4'd5: begin
				res_wr <= 0;
				res_addr <= res_addr + 1;
				if(index == 0) begin
					sti_rd <= 1;
					sti_addr <= sti_addr + 1;
					index <= 15;
				end
				else 
					index <= index - 1;
			end
			4'd6: begin 
				res_rd <= 1;
				res_addr <= 16383;
			end
			4'd7: begin // Px,y
				res_do <= res_di;
				if(res_di[7:1] == 7'b0000000) begin
					res_wr <= 1;
					res_rd <= 0;
				end
				else begin
					res_rd <= 1;
					res_addr <= res_addr + 1;
				end
			end
			4'd8: begin // E
				res_addr <= res_addr + 126;
				if((res_di + 1) < res_do)
					res_do <= res_di + 1;	
			end
			4'd9: begin // SW 
				res_addr <= res_addr + 1;
				if((res_di + 1) < res_do)
					res_do <= res_di + 1;
			end
			4'd10: begin // S
				res_addr <= res_addr + 1;
				if((res_di + 1) < res_do)
					res_do <= res_di + 1;
			end
			4'd11: begin // SE
				res_rd <= 0;
				res_wr <= 1;
				res_addr <= res_addr - 129;
				if((res_di + 1) < res_do)
					res_do <= res_di + 1;
			end
			4'd12: begin
				res_rd <= 1;
				res_wr <= 0;
				res_addr <= res_addr - 1;
			end
			default: begin
				done <= 1;
			end
		endcase
	end
end

always @ (*) begin
	if(state == 0) begin
		if(sti_di[index] == 0) 
			next = 5;
		else 
			next = 1;
	end
	else if(state == 5) begin
		if(res_addr == 16383) // finish forward pass
			next = 6;
		else 
			next = 0;
	end
	else if(state == 7) begin
		if(res_di[7:1] == 7'b0000000)
			next = 12;
		else 
			next = 8;
	end
	else if(state == 12) begin
		if(res_addr == 0) // done 
			next = 13;
		else 
			next = 7;
	end
	else 
		next = state + 1;
end

endmodule
