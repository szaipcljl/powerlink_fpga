// soc_system_pcp_0_mm_interconnect_1.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 14.0 200 at 2017.06.23.23:57:07

`timescale 1 ps / 1 ps
module soc_system_pcp_0_mm_interconnect_1 (
		input  wire        clk100_clk_clk,                                           //                                 clk100_clk.clk
		input  wire        cpu_0_reset_n_reset_bridge_in_reset_reset,                //        cpu_0_reset_n_reset_bridge_in_reset.reset
		input  wire [27:0] cpu_0_tightly_coupled_instruction_master_0_address,       // cpu_0_tightly_coupled_instruction_master_0.address
		output wire        cpu_0_tightly_coupled_instruction_master_0_waitrequest,   //                                           .waitrequest
		input  wire        cpu_0_tightly_coupled_instruction_master_0_read,          //                                           .read
		output wire [31:0] cpu_0_tightly_coupled_instruction_master_0_readdata,      //                                           .readdata
		output wire        cpu_0_tightly_coupled_instruction_master_0_readdatavalid, //                                           .readdatavalid
		input  wire        cpu_0_tightly_coupled_instruction_master_0_clken,         //                                           .clken
		output wire [12:0] tc_mem_s1_address,                                        //                                  tc_mem_s1.address
		output wire        tc_mem_s1_write,                                          //                                           .write
		input  wire [31:0] tc_mem_s1_readdata,                                       //                                           .readdata
		output wire [31:0] tc_mem_s1_writedata,                                      //                                           .writedata
		output wire [3:0]  tc_mem_s1_byteenable,                                     //                                           .byteenable
		output wire        tc_mem_s1_chipselect,                                     //                                           .chipselect
		output wire        tc_mem_s1_clken                                           //                                           .clken
	);

	wire         cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_waitrequest;   // tc_mem_s1_translator:uav_waitrequest -> cpu_0_tightly_coupled_instruction_master_0_translator:uav_waitrequest
	wire   [2:0] cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_burstcount;    // cpu_0_tightly_coupled_instruction_master_0_translator:uav_burstcount -> tc_mem_s1_translator:uav_burstcount
	wire  [31:0] cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_writedata;     // cpu_0_tightly_coupled_instruction_master_0_translator:uav_writedata -> tc_mem_s1_translator:uav_writedata
	wire  [27:0] cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_address;       // cpu_0_tightly_coupled_instruction_master_0_translator:uav_address -> tc_mem_s1_translator:uav_address
	wire         cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_clken;         // cpu_0_tightly_coupled_instruction_master_0_translator:uav_clken -> tc_mem_s1_translator:uav_clken
	wire         cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_lock;          // cpu_0_tightly_coupled_instruction_master_0_translator:uav_lock -> tc_mem_s1_translator:uav_lock
	wire         cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_write;         // cpu_0_tightly_coupled_instruction_master_0_translator:uav_write -> tc_mem_s1_translator:uav_write
	wire         cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_read;          // cpu_0_tightly_coupled_instruction_master_0_translator:uav_read -> tc_mem_s1_translator:uav_read
	wire  [31:0] cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_readdata;      // tc_mem_s1_translator:uav_readdata -> cpu_0_tightly_coupled_instruction_master_0_translator:uav_readdata
	wire         cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_debugaccess;   // cpu_0_tightly_coupled_instruction_master_0_translator:uav_debugaccess -> tc_mem_s1_translator:uav_debugaccess
	wire   [3:0] cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_byteenable;    // cpu_0_tightly_coupled_instruction_master_0_translator:uav_byteenable -> tc_mem_s1_translator:uav_byteenable
	wire         cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_readdatavalid; // tc_mem_s1_translator:uav_readdatavalid -> cpu_0_tightly_coupled_instruction_master_0_translator:uav_readdatavalid

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (28),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (28),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (0),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) cpu_0_tightly_coupled_instruction_master_0_translator (
		.clk                      (clk100_clk_clk),                                                                                //                       clk.clk
		.reset                    (cpu_0_reset_n_reset_bridge_in_reset_reset),                                                     //                     reset.reset
		.uav_address              (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount           (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read                 (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write                (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest          (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid        (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable           (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata             (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata            (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock                 (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess          (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.uav_clken                (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_clken),         //                          .clken
		.av_address               (cpu_0_tightly_coupled_instruction_master_0_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest           (cpu_0_tightly_coupled_instruction_master_0_waitrequest),                                        //                          .waitrequest
		.av_read                  (cpu_0_tightly_coupled_instruction_master_0_read),                                               //                          .read
		.av_readdata              (cpu_0_tightly_coupled_instruction_master_0_readdata),                                           //                          .readdata
		.av_readdatavalid         (cpu_0_tightly_coupled_instruction_master_0_readdatavalid),                                      //                          .readdatavalid
		.av_clken                 (cpu_0_tightly_coupled_instruction_master_0_clken),                                              //                          .clken
		.av_burstcount            (1'b1),                                                                                          //               (terminated)
		.av_byteenable            (4'b1111),                                                                                       //               (terminated)
		.av_beginbursttransfer    (1'b0),                                                                                          //               (terminated)
		.av_begintransfer         (1'b0),                                                                                          //               (terminated)
		.av_chipselect            (1'b0),                                                                                          //               (terminated)
		.av_write                 (1'b0),                                                                                          //               (terminated)
		.av_writedata             (32'b00000000000000000000000000000000),                                                          //               (terminated)
		.av_lock                  (1'b0),                                                                                          //               (terminated)
		.av_debugaccess           (1'b0),                                                                                          //               (terminated)
		.uav_response             (2'b00),                                                                                         //               (terminated)
		.av_response              (),                                                                                              //               (terminated)
		.uav_writeresponserequest (),                                                                                              //               (terminated)
		.uav_writeresponsevalid   (1'b0),                                                                                          //               (terminated)
		.av_writeresponserequest  (1'b0),                                                                                          //               (terminated)
		.av_writeresponsevalid    ()                                                                                               //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (13),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (28),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (1),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (0),
		.USE_UAV_CLKEN                  (1),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (0),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) tc_mem_s1_translator (
		.clk                      (clk100_clk_clk),                                                                                //                      clk.clk
		.reset                    (cpu_0_reset_n_reset_bridge_in_reset_reset),                                                     //                    reset.reset
		.uav_address              (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount           (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read                 (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write                (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest          (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid        (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable           (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata             (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata            (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock                 (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess          (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.uav_clken                (cpu_0_tightly_coupled_instruction_master_0_translator_avalon_universal_master_0_clken),         //                         .clken
		.av_address               (tc_mem_s1_address),                                                                             //      avalon_anti_slave_0.address
		.av_write                 (tc_mem_s1_write),                                                                               //                         .write
		.av_readdata              (tc_mem_s1_readdata),                                                                            //                         .readdata
		.av_writedata             (tc_mem_s1_writedata),                                                                           //                         .writedata
		.av_byteenable            (tc_mem_s1_byteenable),                                                                          //                         .byteenable
		.av_chipselect            (tc_mem_s1_chipselect),                                                                          //                         .chipselect
		.av_clken                 (tc_mem_s1_clken),                                                                               //                         .clken
		.av_read                  (),                                                                                              //              (terminated)
		.av_begintransfer         (),                                                                                              //              (terminated)
		.av_beginbursttransfer    (),                                                                                              //              (terminated)
		.av_burstcount            (),                                                                                              //              (terminated)
		.av_readdatavalid         (1'b0),                                                                                          //              (terminated)
		.av_waitrequest           (1'b0),                                                                                          //              (terminated)
		.av_writebyteenable       (),                                                                                              //              (terminated)
		.av_lock                  (),                                                                                              //              (terminated)
		.av_debugaccess           (),                                                                                              //              (terminated)
		.av_outputenable          (),                                                                                              //              (terminated)
		.uav_response             (),                                                                                              //              (terminated)
		.av_response              (2'b00),                                                                                         //              (terminated)
		.uav_writeresponserequest (1'b0),                                                                                          //              (terminated)
		.uav_writeresponsevalid   (),                                                                                              //              (terminated)
		.av_writeresponserequest  (),                                                                                              //              (terminated)
		.av_writeresponsevalid    (1'b0)                                                                                           //              (terminated)
	);

endmodule
