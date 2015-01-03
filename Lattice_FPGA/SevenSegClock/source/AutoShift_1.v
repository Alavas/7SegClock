module AutoShift(leds[20:0], latch, clk, data);

output  leds;

input 	latch;
input	clk;
input	data;
//input   oe;

reg		[20:0] leds;  // 7 green segments + 7 red segments + 7 leds.
reg		[9:0] cnt ;
reg		[23:0] tmp;   // 8(leds) + 8(green segment) + 8(red segment).
reg		[6:0] redsegment;
reg		[6:0] grnsegment;
reg		[6:0] ledon;
reg		[2:0] segment = 3'b000;
reg		[6:0] seg;

// Internal Oscillator
defparam OSCH_inst.NOM_FREQ = "2.08";		//  This is the default frequency

OSCH OSCH_inst( .STDBY(1'b0), 		// 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
                .OSC(osc_clk_c_c),
                .SEDSTDBY());		//  this signal is not required if not using SED - see TN1199 for more details. osc_clk_c_c

//always @*begin	
//	assign leds = (oe) ? ledsout : 21'b000000000000000000000;
//end

always @(posedge osc_clk_c_c) begin
	cnt <= cnt + 1;
end

always @(cnt[9:6])begin
	case(cnt[9:6])		0  : leds = {(redsegment & seg),7'b0000000,(ledon & 7'b0000001)};
		1  : leds = {(redsegment & seg),7'b0000000,(ledon & 7'b0000010)};
		2  : leds = {(redsegment & seg),7'b0000000,(ledon & 7'b0000100)};
		3  : leds = {(redsegment & seg),7'b0000000,(ledon & 7'b0001000)};
		4  : leds = {(redsegment & seg),7'b0000000,(ledon & 7'b0010000)};
		5  : leds = {(redsegment & seg),7'b0000000,(ledon & 7'b0100000)};
		6  : leds = {(redsegment & seg),7'b0000000,(ledon & 7'b1000000)};	
		7  : leds = {7'b0000000,(grnsegment & seg),(ledon & 7'b0000001)};
		8  : leds = {7'b0000000,(grnsegment & seg),(ledon & 7'b0000010)};
		9  : leds = {7'b0000000,(grnsegment & seg),(ledon & 7'b0000100)};
		10 : leds = {7'b0000000,(grnsegment & seg),(ledon & 7'b0001000)};
		11 : leds = {7'b0000000,(grnsegment & seg),(ledon & 7'b0010000)};
		12 : leds = {7'b0000000,(grnsegment & seg),(ledon & 7'b0100000)};
		13 : leds = {7'b0000000,(grnsegment & seg),(ledon & 7'b1000000)};	
		14 : leds = 21'b000000000000000000000;		
		15 : begin
				segment = segment + 1;
				if (segment == 3'b111)
					segment = 3'b000;
			 end	
		default : leds = 21'b000000000000000000000;
	endcase
end

always @(segment)begin 
	case(segment)
		0 : seg = 7'b0000001;
		1 : seg = 7'b0000010;
		2 : seg = 7'b0000100;
		3 : seg = 7'b0001000;
		4 : seg = 7'b0010000;
		5 : seg = 7'b0100000;
		6 : seg = 7'b1000000;
		default : seg = 7'b0000001;
	endcase	
end

always @(posedge clk)begin
	tmp = tmp << 1;
	tmp[0] = data;
end

always @(posedge latch)begin
		redsegment = tmp[22:16];
		grnsegment = tmp[14:8];
		ledon = tmp[6:0];
end

endmodule
