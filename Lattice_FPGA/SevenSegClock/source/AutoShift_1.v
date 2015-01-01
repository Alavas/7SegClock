module AutoShift(leds[13:0], latch, clk, data);

output  leds;

input 	latch;
input	clk;
input	data;

reg		[20:0] leds;  // 7 green segments + 7 red segments + 7 leds.
reg		[10:0] cnt ;
reg		[23:0] tmp;
reg		[6:0] redsegment; // 8(leds) + 8(green segment) + 8(red segment).
reg		[6:0] greensegment;
reg		[6:0] ledon;

// Internal Oscillator
defparam OSCH_inst.NOM_FREQ = "2.08";		//  This is the default frequency

OSCH OSCH_inst( .STDBY(1'b0), 		// 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
                .OSC(osc_clk_c_c),
                .SEDSTDBY());		//  this signal is not required if not using SED - see TN1199 for more details. osc_clk_c_c

always @(posedge osc_clk_c_c) begin
	cnt <= cnt + 1;
end

always @(cnt[10:6]) begin
	case(cnt[10:6])		0 : leds = {(redsegment & 7'b0000001),7'b000000,(ledon & 7'b0000001)};
		1 : leds = {(redsegment & 7'b0000001),7'b000000,(ledon & 7'b0000010)};
		2 : leds = {(redsegment & 7'b0000001),7'b000000,(ledon & 7'b0000100)};
		3 : leds = {(redsegment & 7'b0000001),7'b000000,(ledon & 7'b0001000)};
		4 : leds = {(redsegment & 7'b0000001),7'b000000,(ledon & 7'b0010000)};
		5 : leds = {(redsegment & 7'b0000001),7'b000000,(ledon & 7'b0100000)};
		6 : leds = {(redsegment & 7'b0000001),7'b000000,(ledon & 7'b1000000)};		
		default : leds = 13'b0000000000000;
	endcase
end

always @(posedge clk)begin
	tmp = tmp << 1;
	tmp[0] = data;
end

always @(posedge latch)begin
		redsegment = tmp[22:16];
		greensegment = tmp[14:8];
		ledon = tmp[6:0];
end

endmodule
