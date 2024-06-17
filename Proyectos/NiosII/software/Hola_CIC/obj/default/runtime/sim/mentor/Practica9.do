restart
add wave -position insertpoint  \
sim:/MinionsII/clk_clk \
sim:/MinionsII/leds_out_export \
sim:/MinionsII/reset_reset_n
force reset_reset_n 0
force reset_reset_n 1 100ns
force clk_clk 1 0ns, 0 10ns -r 20ns
run 200us