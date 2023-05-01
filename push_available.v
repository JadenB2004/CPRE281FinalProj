module push_available(push,pop,A0,A1,O,E);
input push,pop;
output A0,A1,O,E;

integer cursor;

reg A0,A1,O,E;
initial
begin
cursor = 0;
E = 0;
O = 0;



end

always@(negedge push)
		
	begin
		case(cursor)
		0:
			begin
				cursor = cursor+1;
				A0 = 0;
				A1 = 0;
				E = 1;
			end
		
		1:
			begin
				cursor = cursor+1;
				A1 = 0;
				A0 = 1;
				
				E = 1;
			end
		
		2:
			begin
			cursor = cursor+1;
				A1 = 1;
				A0 = 0;
				
				E = 1;
			end
		3:
			begin
			cursor = cursor+1;
				A1 = 1;
				A0 = 1;
				
				E = 1;
			end
			
		4:
			begin
				O = 1;
			end
			
		endcase
	end






endmodule