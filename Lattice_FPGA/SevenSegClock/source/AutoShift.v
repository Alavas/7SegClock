module AutoShift(leds[11:0], latch, clk, data, osc_clk );

output  leds;
output	osc_clk;

input 	latch;
input	clk;
input	data;

reg		[11:0] leds;  // 7 segments + 4 digits + 1 colon = 12 wires.
reg		[10:0] cnt ;
reg		[31:0] tmp;
reg		[31:0] digit;

// Internal Oscillator
defparam OSCH_inst.NOM_FREQ = "2.08";		//  This is the default frequency

OSCH OSCH_inst( .STDBY(1'b0), 		// 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
                .OSC(osc_clk),
                .SEDSTDBY());		//  this signal is not required if not using SED - see TN1199 for more details. osc_clk_c_c

always @(posedge osc_clk) begin
	cnt <= cnt + 1;
end

always @(cnt[10:6]) begin
	case(cnt[10:6])
		0 : leds = {(digit[30:24] & 7'b0000001),4'b0001,1'b0};
		1 : leds = {(digit[30:24] & 7'b0000010),4'b0001,1'b0};
		2 : leds = {(digit[30:24] & 7'b0000100),4'b0001,1'b0};
		3 : leds = {(digit[30:24] & 7'b0001000),4'b0001,1'b0};
		4 : leds = {(digit[30:24] & 7'b0010000),4'b0001,1'b0};
		5 : leds = {(digit[30:24] & 7'b0100000),4'b0001,1'b0};
		6 : leds = {(digit[30:24] & 7'b1000000),4'b0001,1'b0};					
		7 : leds = {(digit[22:16] & 7'b0000001),4'b0010,1'b0};
		8 : leds = {(digit[22:16] & 7'b0000010),4'b0010,1'b0};
		9 : leds = {(digit[22:16] & 7'b0000100),4'b0010,1'b0};
		10 : leds = {(digit[22:16] & 7'b0001000),4'b0010,1'b0};
		11 : leds = {(digit[22:16] & 7'b0010000),4'b0010,1'b0};
		12 : leds = {(digit[22:16] & 7'b0100000),4'b0010,1'b0};
		13 : leds = {(digit[22:16] & 7'b1000000),4'b0010,1'b0};
		14 : leds = {(digit[14:8] & 7'b0000001),4'b0100,1'b0};
		15 : leds = {(digit[14:8] & 7'b0000010),4'b0100,1'b0};
		16 : leds = {(digit[14:8] & 7'b0000100),4'b0100,1'b0};
		17 : leds = {(digit[14:8] & 7'b0001000),4'b0100,1'b0};
		18 : leds = {(digit[14:8] & 7'b0010000),4'b0100,1'b0};
		19 : leds = {(digit[14:8] & 7'b0100000),4'b0100,1'b0};
		20 : leds = {(digit[14:8] & 7'b1000000),4'b0100,1'b0};		
		21 : leds = {(digit[6:0] & 7'b0000001),4'b1000,1'b0};
		22 : leds = {(digit[6:0] & 7'b0000010),4'b1000,1'b0};
		23 : leds = {(digit[6:0] & 7'b0000100),4'b1000,1'b0};
		24 : leds = {(digit[6:0] & 7'b0001000),4'b1000,1'b0};
		25 : leds = {(digit[6:0] & 7'b0010000),4'b1000,1'b0};
		26 : leds = {(digit[6:0] & 7'b0100000),4'b1000,1'b0};
		27 : leds = {(digit[6:0] & 7'b1000000),4'b1000,1'b0};
		28 : leds = 12'b000000000001;
		29 : leds = 12'b000000000000;
		30 : leds = 12'b000000000000;
		31 : leds = 12'b000000000000;
		default : leds = 12'b000000000000;
	endcase
end

always @(posedge clk)begin
	tmp = tmp << 1;
	tmp[0] = data;
end

always @(posedge latch)begin
		digit = tmp;
end

endmodule
