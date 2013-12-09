//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Fri Dec 06 19:45:35 2013
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
// Instantiate Unit Under Test:  controller_MSS
//////////////////////////////////////////////////////////////////////
controller_MSS controller_MSS_0 (
    // Inputs
    .MSSPREADY({1{1'b0}}),
    .MSSPSLVERR({1{1'b0}}),
    .FABINT({1{1'b0}}),
    .MSSPRDATA({32{1'b0}}),
    .UART_0_RXD({1{1'b0}}),
    .UART_1_RXD({1{1'b0}}),

    // Outputs
    .FAB_CLK( ),
    .MSSPSEL( ),
    .MSSPENABLE( ),
    .MSSPWRITE( ),
    .M2F_RESET_N( ),
    .M2F_GPO_1( ),
    .M2F_GPO_0( ),
    .MSSPADDR( ),
    .MSSPWDATA( ),
    .UART_0_TXD( ),
    .UART_1_TXD( ),

    // Inouts
    .I2C_1_SDA( ),
    .I2C_1_SCL( )

);

endmodule

