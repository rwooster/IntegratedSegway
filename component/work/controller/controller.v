//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Dec 06 19:45:43 2013
// Version: v11.0 11.0.0.23
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// controller
module controller(
    // Inputs
    UART_0_RXD,
    UART_1_RXD,
    sw,
    // Outputs
    M2F_GPO_0,
    M2F_GPO_1,
    UART_0_TXD,
    UART_1_TXD,
    servo_left_out,
    servo_right_out,
    // Inouts
    I2C_1_SCL,
    I2C_1_SDA,
    data
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        UART_0_RXD;
input        UART_1_RXD;
input  [1:0] sw;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       M2F_GPO_0;
output       M2F_GPO_1;
output       UART_0_TXD;
output       UART_1_TXD;
output       servo_left_out;
output       servo_right_out;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout        I2C_1_SCL;
inout        I2C_1_SDA;
inout        data;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          controller_MSS_0_FAB_CLK;
wire          controller_MSS_0_M2F_RESET_N_0;
wire          controller_MSS_0_MSS_MASTER_APB_0_PENABLE;
wire   [31:0] controller_MSS_0_MSS_MASTER_APB_0_PRDATA;
wire          controller_MSS_0_MSS_MASTER_APB_0_PREADY;
wire          controller_MSS_0_MSS_MASTER_APB_0_PSELx;
wire          controller_MSS_0_MSS_MASTER_APB_0_PSLVERR;
wire   [31:0] controller_MSS_0_MSS_MASTER_APB_0_PWDATA;
wire          controller_MSS_0_MSS_MASTER_APB_0_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA;
wire          CoreAPB3_0_APBmslave0_PREADY;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire          data;
wire          disable_servos_0_int;
wire          I2C_1_SCL;
wire          I2C_1_SDA;
wire          M2F_GPO_0_net_0;
wire          M2F_GPO_1_net_0;
wire          ready;
wire          servo_left_out_net_0;
wire          servo_right_out_net_0;
wire   [1:0]  sw;
wire          UART_0_RXD;
wire          UART_0_TXD_1;
wire          UART_1_RXD;
wire          UART_1_TXD_0;
wire          UART_0_TXD_1_net_0;
wire          M2F_GPO_0_net_1;
wire          M2F_GPO_1_net_1;
wire          servo_left_out_net_1;
wire          servo_right_out_net_1;
wire          UART_1_TXD_0_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] PRDATAS3_const_net_0;
wire   [31:0] PRDATAS4_const_net_0;
wire   [31:0] PRDATAS5_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:20]controller_MSS_0_MSS_MASTER_APB_0_PADDR_0_31to20;
wire   [19:0] controller_MSS_0_MSS_MASTER_APB_0_PADDR_0_19to0;
wire   [31:0] controller_MSS_0_MSS_MASTER_APB_0_PADDR_0;
wire   [19:0] controller_MSS_0_MSS_MASTER_APB_0_PADDR;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign IADDR_const_net_0     = 32'h00000000;
assign PRDATAS3_const_net_0  = 32'h00000000;
assign PRDATAS4_const_net_0  = 32'h00000000;
assign PRDATAS5_const_net_0  = 32'h00000000;
assign PRDATAS6_const_net_0  = 32'h00000000;
assign PRDATAS7_const_net_0  = 32'h00000000;
assign PRDATAS8_const_net_0  = 32'h00000000;
assign PRDATAS9_const_net_0  = 32'h00000000;
assign PRDATAS10_const_net_0 = 32'h00000000;
assign PRDATAS11_const_net_0 = 32'h00000000;
assign PRDATAS12_const_net_0 = 32'h00000000;
assign PRDATAS13_const_net_0 = 32'h00000000;
assign PRDATAS14_const_net_0 = 32'h00000000;
assign PRDATAS15_const_net_0 = 32'h00000000;
assign PRDATAS16_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign UART_0_TXD_1_net_0    = UART_0_TXD_1;
assign UART_0_TXD            = UART_0_TXD_1_net_0;
assign M2F_GPO_0_net_1       = M2F_GPO_0_net_0;
assign M2F_GPO_0             = M2F_GPO_0_net_1;
assign M2F_GPO_1_net_1       = M2F_GPO_1_net_0;
assign M2F_GPO_1             = M2F_GPO_1_net_1;
assign servo_left_out_net_1  = servo_left_out_net_0;
assign servo_left_out        = servo_left_out_net_1;
assign servo_right_out_net_1 = servo_right_out_net_0;
assign servo_right_out       = servo_right_out_net_1;
assign UART_1_TXD_0_net_0    = UART_1_TXD_0;
assign UART_1_TXD            = UART_1_TXD_0_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign controller_MSS_0_MSS_MASTER_APB_0_PADDR_0_31to20 = 12'h0;
assign controller_MSS_0_MSS_MASTER_APB_0_PADDR_0_19to0 = controller_MSS_0_MSS_MASTER_APB_0_PADDR[19:0];
assign controller_MSS_0_MSS_MASTER_APB_0_PADDR_0 = { controller_MSS_0_MSS_MASTER_APB_0_PADDR_0_31to20, controller_MSS_0_MSS_MASTER_APB_0_PADDR_0_19to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------controller_MSS
controller_MSS controller_MSS_0(
        // Inputs
        .MSSPREADY   ( controller_MSS_0_MSS_MASTER_APB_0_PREADY ),
        .MSSPSLVERR  ( controller_MSS_0_MSS_MASTER_APB_0_PSLVERR ),
        .UART_0_RXD  ( UART_0_RXD ),
        .FABINT      ( disable_servos_0_int ),
        .MSSPRDATA   ( controller_MSS_0_MSS_MASTER_APB_0_PRDATA ),
        .UART_1_RXD  ( UART_1_RXD ),
        // Outputs
        .FAB_CLK     ( controller_MSS_0_FAB_CLK ),
        .MSSPSEL     ( controller_MSS_0_MSS_MASTER_APB_0_PSELx ),
        .MSSPENABLE  ( controller_MSS_0_MSS_MASTER_APB_0_PENABLE ),
        .MSSPWRITE   ( controller_MSS_0_MSS_MASTER_APB_0_PWRITE ),
        .M2F_RESET_N ( controller_MSS_0_M2F_RESET_N_0 ),
        .UART_0_TXD  ( UART_0_TXD_1 ),
        .M2F_GPO_1   ( M2F_GPO_1_net_0 ),
        .M2F_GPO_0   ( M2F_GPO_0_net_0 ),
        .MSSPADDR    ( controller_MSS_0_MSS_MASTER_APB_0_PADDR ),
        .MSSPWDATA   ( controller_MSS_0_MSS_MASTER_APB_0_PWDATA ),
        .UART_1_TXD  ( UART_1_TXD_0 ),
        // Inouts
        .I2C_1_SCL   ( I2C_1_SCL ),
        .I2C_1_SDA   ( I2C_1_SDA ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.0.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 0 ),
        .APBSLOT4ENABLE  ( 0 ),
        .APBSLOT5ENABLE  ( 0 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 12 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 2 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( controller_MSS_0_MSS_MASTER_APB_0_PWRITE ),
        .PENABLE    ( controller_MSS_0_MSS_MASTER_APB_0_PENABLE ),
        .PSEL       ( controller_MSS_0_MSS_MASTER_APB_0_PSELx ),
        .PREADYS0   ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERRS0  ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PREADYS1   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PREADYS2   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS5  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( controller_MSS_0_MSS_MASTER_APB_0_PADDR_0 ),
        .PWDATA     ( controller_MSS_0_MSS_MASTER_APB_0_PWDATA ),
        .PRDATAS0   ( CoreAPB3_0_APBmslave0_PRDATA ),
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA ),
        .PRDATAS2   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .PRDATAS3   ( PRDATAS3_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS4   ( PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS5   ( PRDATAS5_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( controller_MSS_0_MSS_MASTER_APB_0_PREADY ),
        .PSLVERR    ( controller_MSS_0_MSS_MASTER_APB_0_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     (  ),
        .PSELS4     (  ),
        .PSELS5     (  ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( controller_MSS_0_MSS_MASTER_APB_0_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ) 
        );

//--------disable_servos
disable_servos disable_servos_0(
        // Inputs
        .clock ( controller_MSS_0_FAB_CLK ),
        .sw    ( sw ),
        // Outputs
        .int   ( disable_servos_0_int ) 
        );

//--------pollSignal
pollSignal pollSignal_0(
        // Inputs
        .PCLK ( controller_MSS_0_FAB_CLK ),
        // Outputs
        .read ( ready ),
        // Inouts
        .poll ( data ) 
        );

//--------read
read read_0(
        // Inputs
        .PCLK    ( controller_MSS_0_FAB_CLK ),
        .PRESERN ( controller_MSS_0_M2F_RESET_N_0 ),
        .PSEL    ( CoreAPB3_0_APBmslave0_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .ready   ( ready ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PRDATA  ( CoreAPB3_0_APBmslave0_PRDATA ),
        // Inouts
        .data    ( data ) 
        );

//--------servo_left
servo_left servo_left_0(
        // Inputs
        .PCLK    ( controller_MSS_0_FAB_CLK ),
        .PRESERN ( controller_MSS_0_M2F_RESET_N_0 ),
        .PSEL    ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .pwm     ( servo_left_out_net_0 ),
        .PRDATA  ( CoreAPB3_0_APBmslave1_PRDATA ) 
        );

//--------servo_right
servo_right servo_right_0(
        // Inputs
        .PCLK    ( controller_MSS_0_FAB_CLK ),
        .PRESERN ( controller_MSS_0_M2F_RESET_N_0 ),
        .PSEL    ( CoreAPB3_0_APBmslave2_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .pwm     ( servo_right_out_net_0 ),
        .PRDATA  ( CoreAPB3_0_APBmslave2_PRDATA ) 
        );


endmodule
