// Overly Complicated Alarm Clock
// by : Justin Savala
// January 5,2015
// Updated March 16,2015

// 4 seven segments displays with each segment made of 6 bi-color leds (red & green). Microcontroller updates FPGA which then maintains clock display automatically.


module AutoShift(Digit1[20:0],Digit2[20:0],Digit3[20:0],Digit4[20:0], pwm, latch, clk, data, heartbeat);

output  Digit1;
output	Digit2;
output 	Digit3;
output	Digit4;
output  heartbeat;

input	pwm;
input 	latch;
input	clk;
input	data;

reg		oe;
reg		heartbeat;
reg		[20:0]	Digit1;	// Digit 1 output.
reg		[20:0]	Digit2;	// Digit 2 output.
reg		[20:0]	Digit3;	// Digit 3 output.
reg		[20:0]	Digit4;	// Digit 4 output.

reg		[6:0]	RedD1;	// Digit 1, RED.
reg		[6:0]	RedD2;	// Digit 2, RED.
reg		[6:0]	RedD3;	// Digit 3, RED.
reg		[6:0]	RedD4;	// Digit 4, RED.
reg		[6:0]	GrnD1;	// Digit 1, GREEN.
reg		[6:0]	GrnD2;	// Digit 2, GREEN.
reg		[6:0]	GrnD3;	// Digit 3, GREEN.
reg		[6:0]	GrnD4;	// Digit 4, GREEN.
reg		[6:0]	ledA1;	// Digit 1 LED anodes.
reg		[6:0]	ledA2;	// Digit 2 LED anodes.
reg		[6:0]	ledA3;	// Digit 3 LED anodes.
reg		[6:0]	ledA4;	// Digit 4 LED anodes.

// Working registers.
reg		[20:0]	LEDS1;	// Digit 1 output.
reg		[20:0]	LEDS2;	// Digit 2 output.
reg		[20:0]	LEDS3;	// Digit 3 output.
reg		[20:0]	LEDS4;	// Digit 4 output.
reg		[11:0] 	cnt ;	// Divider register for clock.
reg		[11:0]	bright;
reg		[95:0] 	tmp;	// 8(leds) + 8(green segment) + 8(red segment) * 4 digits.
reg		[6:0] 	Seg = 7'b0000001;
reg		[6:0]	Led = 7'b0000001;

// Internal Oscillator
defparam OSCH_inst.NOM_FREQ = "3.50";		//  Set internal oscillator frequency.

OSCH OSCH_inst( .STDBY(1'b0), 		// 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
                .OSC(osc_clk_c_c),
                .SEDSTDBY());		//  this signal is not required if not using SED - see TN1199 for more details. osc_clk_c_c

always @(posedge osc_clk_c_c)begin
	if (oe == 1)begin
		Digit1 <= LEDS1;
		Digit2 <= LEDS2;
		Digit3 <= LEDS3;
		Digit4 <= LEDS4;
	end else begin
		Digit1 <= 21'b000000000000000000000;
		Digit2 <= 21'b000000000000000000000;
		Digit3 <= 21'b000000000000000000000;
		Digit4 <= 21'b000000000000000000000;		
	end
end


always @(posedge osc_clk_c_c)begin
	if (cnt<= bright)begin
		oe <= 1;
		heartbeat <= 1;
	end else begin
		oe <= 0;
		heartbeat <= 0;
	end
end		

always @(Led)begin
	LEDS1 <= {(RedD1 & Seg),(GrnD1 & Seg),(ledA1 & Led)};
	LEDS2 <= {(RedD2 & Seg),(GrnD2 & Seg),(ledA2 & Led)};
	LEDS3 <= {(RedD3 & Seg),(GrnD3 & Seg),(ledA3 & Led)};
	LEDS4 <= {(RedD4 & Seg),(GrnD4 & Seg),(ledA4 & Led)};
end	

//always @(posedge cnt[0])begin
always @(posedge osc_clk_c_c)begin
	Led = Led << 1;
	if (Led == 0)begin
		Led = 7'b0000001;
		Seg = Seg << 1;
		if (Seg == 0)
			Seg = 7'b0000001;
	end
end

// Serial data register. tmp register stores the value presented on the data line.
always @(posedge clk)begin
	tmp = tmp << 1;
	tmp[0] = data;
end

// LED controller latch. Update the registers with the new values.
always @(posedge latch)begin
// Digit 4
		RedD4 <= tmp[94:88];
		GrnD4 <= tmp[86:80];
		ledA4 <= tmp[78:72];
// Digit 3	
		RedD3 <= tmp[70:64];
		GrnD3 <= tmp[62:56];
		ledA3 <= tmp[54:48];
// Digit 2	
		RedD2 <= tmp[46:40];
		GrnD2 <= tmp[38:32];
		ledA2 <= tmp[30:24];
// Digit 1		
		RedD1 <= tmp[22:16];
		GrnD1 <= tmp[14:8];
		ledA1 <= tmp[6:0];
end

// Fill PWN register.
always @(posedge pwm)begin
	bright = tmp[11:0];
end

// Counter for case selector.
always @(posedge osc_clk_c_c) begin
	cnt = cnt + 1;
end

endmodule
