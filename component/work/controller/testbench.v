//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Fri Dec 06 19:45:43 2013
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module testbench;

parameter SYSCLK_PERIOD = 100; // 10MHz

reg SYSCLK;
reg NSYSRESET;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// 10MHz Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  controller
//////////////////////////////////////////////////////////////////////
controller controller_0 (
    // Inputs
    .UART_0_RXD({1{1'b0}}),
    .sw({2{1'b0}}),
    .UART_1_RXD({1{1'b0}}),

    // Outputs
    .UART_0_TXD( ),
    .M2F_GPO_0( ),
    .M2F_GPO_1( ),
    .servo_left_out( ),
    .servo_right_out( ),
    .UART_1_TXD( ),

    // Inouts
    .data( ),
    .I2C_1_SCL( ),
    .I2C_1_SDA( )

);

endmodule

