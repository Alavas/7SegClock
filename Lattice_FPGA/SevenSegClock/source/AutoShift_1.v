// Overly Complicated Alarm Clock
// by : Justin Savala
// January 5,2015

// 4 seven segments displays with each segment made of 6 bi-color leds (red & green). Microcontroller updates FPGA which then maintains clock display automatically.


module AutoShift(Digit1[19:0],Digit2[19:0],Digit3[19:0],Digit4[19:0], latch, clk, data);

output  Digit1;
output	Digit2;
output 	Digit3;
output	Digit4;

input 	latch;
input	clk;
input	data;
//input   oe;

reg		[19:0]	Digit1;	// Digit 1 output.
reg		[19:0]	Digit2;	// Digit 2 output.
reg		[19:0]	Digit3;	// Digit 3 output.
reg		[19:0]	Digit4;	// Digit 4 output.

reg		[6:0]	RedD1;	// Digit 1, RED.
reg		[6:0]	RedD2;	// Digit 2, RED.
reg		[6:0]	RedD3;	// Digit 3, RED.
reg		[6:0]	RedD4;	// Digit 4, RED.
reg		[6:0]	GrnD1;	// Digit 1, GREEN.
reg		[6:0]	GrnD2;	// Digit 2, GREEN.
reg		[6:0]	GrnD3;	// Digit 3, GREEN.
reg		[6:0]	GrnD4;	// Digit 4, GREEN.
reg		[5:0]	ledA1;	// Digit 1 LED anodes.
reg		[5:0]	ledA2;	// Digit 2 LED anodes.
reg		[5:0]	ledA3;	// Digit 3 LED anodes.
reg		[5:0]	ledA4;	// Digit 4 LED anodes.

// Working registers.
reg		[9:0] 	cnt ;	// Divider register for clock.
reg		[95:0] 	tmp;	// 8(leds) + 8(green segment) + 8(red segment) * 4 digits.
reg		[2:0] 	segment = 3'b000;
reg		[6:0] 	Seg;

// Internal Oscillator
defparam OSCH_inst.NOM_FREQ = "2.08";		//  This is the default frequency

OSCH OSCH_inst( .STDBY(1'b0), 		// 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
                .OSC(osc_clk_c_c),
                .SEDSTDBY());		//  this signal is not required if not using SED - see TN1199 for more details. osc_clk_c_c

//always @*begin	
//	assign Digit1 = (oe) ? ledsout : 21'b000000000000000000000;
//end

// Segment 1 controller.
always @(cnt[9:6])begin
	case(cnt[9:6])		0  : begin
				Digit1 = {(RedD1 & Seg),7'b0000000,(ledA1 & 6'b000001)};
				Digit2 = {(RedD2 & Seg),7'b0000000,(ledA2 & 6'b000001)};
				Digit3 = {(RedD3 & Seg),7'b0000000,(ledA3 & 6'b000001)};
				Digit4 = {(RedD4 & Seg),7'b0000000,(ledA4 & 6'b000001)};
			 end
		1  : begin
				Digit1 = {(RedD1 & Seg),7'b0000000,(ledA1 & 6'b000010)};
				Digit2 = {(RedD2 & Seg),7'b0000000,(ledA2 & 6'b000010)};				
				Digit3 = {(RedD3 & Seg),7'b0000000,(ledA3 & 6'b000010)};				
				Digit4 = {(RedD4 & Seg),7'b0000000,(ledA4 & 6'b000010)};				
			 end	
		2  : begin
				Digit1 = {(RedD1 & Seg),7'b0000000,(ledA1 & 6'b000100)};
				Digit2 = {(RedD2 & Seg),7'b0000000,(ledA2 & 6'b000100)};				
				Digit3 = {(RedD3 & Seg),7'b0000000,(ledA3 & 6'b000100)};				
				Digit4 = {(RedD4 & Seg),7'b0000000,(ledA4 & 6'b000100)};				
			 end
		3  : begin
				Digit1 = {(RedD1 & Seg),7'b0000000,(ledA1 & 6'b001000)};
				Digit2 = {(RedD2 & Seg),7'b0000000,(ledA2 & 6'b001000)};				
				Digit3 = {(RedD3 & Seg),7'b0000000,(ledA3 & 6'b001000)};				
				Digit4 = {(RedD4 & Seg),7'b0000000,(ledA4 & 6'b001000)};				
			 end
		4  : begin
				Digit1 = {(RedD1 & Seg),7'b0000000,(ledA1 & 6'b010000)};
				Digit2 = {(RedD2 & Seg),7'b0000000,(ledA2 & 6'b010000)};				
				Digit3 = {(RedD3 & Seg),7'b0000000,(ledA3 & 6'b010000)};				
				Digit4 = {(RedD4 & Seg),7'b0000000,(ledA4 & 6'b010000)};				
			 end
		5  : begin
				Digit1 = {(RedD1 & Seg),7'b0000000,(ledA1 & 6'b100000)};
				Digit2 = {(RedD2 & Seg),7'b0000000,(ledA2 & 6'b100000)};				
				Digit3 = {(RedD3 & Seg),7'b0000000,(ledA3 & 6'b100000)};				
				Digit4 = {(RedD4 & Seg),7'b0000000,(ledA4 & 6'b100000)};				
			 end	
		6  : begin
				Digit1 = {7'b0000000,(GrnD1 & Seg),(ledA1 & 6'b000001)};
				Digit2 = {7'b0000000,(GrnD2 & Seg),(ledA2 & 6'b000001)};	
				Digit3 = {7'b0000000,(GrnD3 & Seg),(ledA3 & 6'b000001)};
				Digit4 = {7'b0000000,(GrnD4 & Seg),(ledA4 & 6'b000001)};					
			 end	
		7  : begin
				Digit1 = {7'b0000000,(GrnD1 & Seg),(ledA1 & 6'b000010)};
				Digit2 = {7'b0000000,(GrnD2 & Seg),(ledA2 & 6'b000010)};	
				Digit3 = {7'b0000000,(GrnD3 & Seg),(ledA3 & 6'b000010)};
				Digit4 = {7'b0000000,(GrnD4 & Seg),(ledA4 & 6'b000010)};					
			 end
		8  : begin
				Digit1 = {7'b0000000,(GrnD1 & Seg),(ledA1 & 6'b000100)};
				Digit2 = {7'b0000000,(GrnD2 & Seg),(ledA2 & 6'b000100)};	
				Digit3 = {7'b0000000,(GrnD3 & Seg),(ledA3 & 6'b000100)};
				Digit4 = {7'b0000000,(GrnD4 & Seg),(ledA4 & 6'b000100)};					
			 end
		9  : begin
				Digit1 = {7'b0000000,(GrnD1 & Seg),(ledA1 & 6'b001000)};
				Digit2 = {7'b0000000,(GrnD2 & Seg),(ledA2 & 6'b001000)};	
				Digit3 = {7'b0000000,(GrnD3 & Seg),(ledA3 & 6'b001000)};
				Digit4 = {7'b0000000,(GrnD4 & Seg),(ledA4 & 6'b001000)};					
			 end
		10 : begin
				Digit1 = {7'b0000000,(GrnD1 & Seg),(ledA1 & 6'b010000)};
				Digit2 = {7'b0000000,(GrnD2 & Seg),(ledA2 & 6'b010000)};	
				Digit3 = {7'b0000000,(GrnD3 & Seg),(ledA3 & 6'b010000)};
				Digit4 = {7'b0000000,(GrnD4 & Seg),(ledA4 & 6'b010000)};					
			 end
		11 : begin
				Digit1 = {7'b0000000,(GrnD1 & Seg),(ledA1 & 6'b100000)};
				Digit2 = {7'b0000000,(GrnD2 & Seg),(ledA2 & 6'b100000)};	
				Digit3 = {7'b0000000,(GrnD3 & Seg),(ledA3 & 6'b100000)};
				Digit4 = {7'b0000000,(GrnD4 & Seg),(ledA4 & 6'b100000)};					
			 end	
		12 : Digit1 = 20'b000000000000000000000;		
		13 : begin
				segment = segment + 1;
				if (segment == 3'b111)
					segment = 3'b000;
			 end	
		default : Digit1 = 20'b000000000000000000000;
	endcase
end

// Segment selector.
always @(segment)begin 
	case(segment)
		0 : Seg = 7'b0000001;
		1 : Seg = 7'b0000010;
		2 : Seg = 7'b0000100;
		3 : Seg = 7'b0001000;
		4 : Seg = 7'b0010000;
		5 : Seg = 7'b0100000;
		6 : Seg = 7'b1000000;
		default : Seg = 7'b0000001;
	endcase	
end

// Serial data register.
always @(posedge clk)begin
	tmp = tmp << 1;
	tmp[0] = data;
end

// LED controller latch.
always @(posedge latch)begin
		RedD1 = tmp[22:16];
		GrnD1 = tmp[14:8];
		ledA1 = tmp[6:0];
end

// Counter for case selector.
always @(posedge osc_clk_c_c) begin
	cnt <= cnt + 1;
end

endmodule
