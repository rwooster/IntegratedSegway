// disable.v

module disable_servos(
	input [1:0]sw,
	input clock,
	output reg int
);


reg sw0_pulse[2:0], sw1_pulse[2:0];
always@( posedge clock)
begin
	sw0_pulse[0] <= ~sw[0];
	sw0_pulse[1] <= sw0_pulse[0];
	sw0_pulse[2] <= sw0_pulse[1];

	sw1_pulse[0] <= ~sw[1];
	sw1_pulse[1] <= sw1_pulse[0];
	sw1_pulse[2] <= sw1_pulse[1];
end

//use shifted switch inputs to create a one clock cycle pulse//
wire sw0_int, sw1_int;
assign sw0_int = (sw0_pulse[1] == 1'b1) & (sw0_pulse[2] == 1'b0);
assign sw1_int = (sw1_pulse[1] == 1'b1) & (sw1_pulse[2] == 1'b0);

//create a FABINT pulse if either sw0 or sw1 is pressed//
always@(posedge clock)
begin
    if(sw0_int)
        int <= 1;
    else if (sw1_int)
        int <= 1;
    else
        int <= 0;
end

endmodule