module dff_mux #(

	parameter size = 18 ,
	parameter pipeline = 0 ,
	parameter RSTTYPE = "SYNC" 
	)(
	input[size - 1 : 0]  in,
	input clk ,
	input EN ,
	input rst ,
	output reg[size - 1 : 0] out 
	);
	generate
	if(pipeline)begin
		if(RSTTYPE == "SYNC")  begin
			always @(posedge clk ) begin
				if (rst) begin		
					out <= 0;
				end
				else begin
					if(EN) begin
                        out <= in;//pipelining enabled
                    end
				end
			end
		end
		else begin
			always @(posedge clk or posedge rst) begin
				if (rst) begin
					out <= 0;
				end
				else begin
					if(EN) begin
                        out <= in;//pipelining enabled
                    end
				end
			end
		end
	end
	else always@(in) out = in;
endgenerate






endmodule