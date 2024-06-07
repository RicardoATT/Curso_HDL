module NiosII(
	input					CLK_50, RST_N,
	output	[7:0]		LEDS
);

MinionsII xXxNiosxXx(
		.clk_clk(CLK_50),
		.leds_out_export(LEDS),
		.reset_reset_n(RST_N)
);

endmodule 