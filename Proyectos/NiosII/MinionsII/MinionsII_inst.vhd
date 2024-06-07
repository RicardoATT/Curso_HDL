	component MinionsII is
		port (
			clk_clk         : in  std_logic                    := 'X'; -- clk
			leds_out_export : out std_logic_vector(7 downto 0);        -- export
			reset_reset_n   : in  std_logic                    := 'X'  -- reset_n
		);
	end component MinionsII;

	u0 : component MinionsII
		port map (
			clk_clk         => CONNECTED_TO_clk_clk,         --      clk.clk
			leds_out_export => CONNECTED_TO_leds_out_export, -- leds_out.export
			reset_reset_n   => CONNECTED_TO_reset_reset_n    --    reset.reset_n
		);

