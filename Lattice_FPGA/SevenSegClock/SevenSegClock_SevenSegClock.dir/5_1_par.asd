[ActiveSupport PAR]
; Global primary clocks
GLOBAL_PRIMARY_USED = 3;
; Global primary clock #0
GLOBAL_PRIMARY_0_SIGNALNAME = osc_clk_c_c;
GLOBAL_PRIMARY_0_DRIVERTYPE = OSC;
GLOBAL_PRIMARY_0_LOADNUM = 60;
; Global primary clock #1
GLOBAL_PRIMARY_1_SIGNALNAME = clk_c;
GLOBAL_PRIMARY_1_DRIVERTYPE = PIO;
GLOBAL_PRIMARY_1_LOADNUM = 48;
; Global primary clock #2
GLOBAL_PRIMARY_2_SIGNALNAME = latch_c;
GLOBAL_PRIMARY_2_DRIVERTYPE = PIO;
GLOBAL_PRIMARY_2_LOADNUM = 42;
; # of global secondary clocks
GLOBAL_SECONDARY_USED = 2;
; Global secondary clock #0
GLOBAL_SECONDARY_0_SIGNALNAME = heartbeat_c;
GLOBAL_SECONDARY_0_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_0_LOADNUM = 45;
GLOBAL_SECONDARY_0_SIGTYPE = RST;
; Global secondary clock #1
GLOBAL_SECONDARY_1_SIGNALNAME = pwm_c;
GLOBAL_SECONDARY_1_DRIVERTYPE = PIO;
GLOBAL_SECONDARY_1_LOADNUM = 6;
GLOBAL_SECONDARY_1_SIGTYPE = CLK;
; I/O Bank 0 Usage
BANK_0_USED = 24;
BANK_0_AVAIL = 28;
BANK_0_VCCIO = 3.3V;
BANK_0_VREF1 = NA;
; I/O Bank 1 Usage
BANK_1_USED = 20;
BANK_1_AVAIL = 26;
BANK_1_VCCIO = 3.3V;
BANK_1_VREF1 = NA;
; I/O Bank 2 Usage
BANK_2_USED = 26;
BANK_2_AVAIL = 28;
BANK_2_VCCIO = 3.3V;
BANK_2_VREF1 = NA;
; I/O Bank 3 Usage
BANK_3_USED = 19;
BANK_3_AVAIL = 26;
BANK_3_VCCIO = 3.3V;
BANK_3_VREF1 = NA;
