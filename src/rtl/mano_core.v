/* Mano Computer RTL Design
** Fault Tolerance System Design Project 
** Tehran Polytechnic University
** Developed by Ali Mohammadpour
** Jan 2020, fall-2019-semester
*/

`include "basic_params.v"

module mano_core (
		mrst,
       	mclk);

	input mclk;
	input mrst;

	wire cs_ar_clr, cs_ir_clr, cs_pc_clr, cs_dr_clr, cs_ac_clr, cs_tr_clr, cs_inpr_clr, cs_outr_clr;
	wire cs_ar_inc, cs_ir_inc, cs_pc_inc, cs_dr_inc, cs_ac_inc, cs_tr_inc, cs_inpr_inc, cs_outr_inc;
	wire cs_ar_ld,  cs_ir_ld,  cs_pc_ld,  cs_dr_ld,  cs_ac_ld,  cs_tr_ld,  cs_inpr_ld,  cs_outr_ld;
	wire cs_e_ld,   cs_e_clr,  cs_i_ld,   cs_i_clr,  cs_fgi_ld, cs_fgi_clr,cs_fgo_ld, cs_fgo_clr,cs_s_ld, cs_s_clr;
	wire s_flag_input;
	wire cs_mem_rd, cs_mem_wr;
	wire [`buswidth-1:0] cs_bus_sel;
	wire [`funcwidth-1:0] cs_alu_func;
	wire cs_alub_sel;
	wire [`datawidth-1:0] ir;
	wire [`datawidth-1:0] ac;
	wire [`datawidth-1:0] dr;
	wire e_flag, i_flag, fgi_flag, fgo_flag, s_flag, ready;
	wire b_signal;

	ctrlpath CP (
		.mrst(mrst), 							
		.mclk(mclk), 
		.cs_ar_clr(cs_ar_clr), 
		.cs_ir_clr(cs_ir_clr), 
		.cs_pc_clr(cs_pc_clr), 
		.cs_dr_clr(cs_dr_clr), 
		.cs_ac_clr(cs_ac_clr), 
		.cs_tr_clr(cs_tr_clr), 
		.cs_inpr_clr(cs_inpr_clr), 
		.cs_outr_clr(cs_outr_clr),
		.cs_ar_inc(cs_ar_inc), 
		.cs_ir_inc(cs_ir_inc), 
		.cs_pc_inc(cs_pc_inc), 
		.cs_dr_inc(cs_dr_inc), 
		.cs_ac_inc(cs_ac_inc), 
		.cs_tr_inc(cs_tr_inc), 
		.cs_inpr_inc(cs_inpr_inc), 
		.cs_outr_inc(cs_outr_inc),
		.cs_ar_ld(cs_ar_ld), 
		.cs_ir_ld(cs_ir_ld), 
		.cs_pc_ld(cs_pc_ld), 
		.cs_dr_ld(cs_dr_ld), 
		.cs_ac_ld(cs_ac_ld), 
		.cs_tr_ld(cs_tr_ld), 
		.cs_inpr_ld(cs_inpr_ld), 
		.cs_outr_ld(cs_outr_ld),
		.cs_e_ld(cs_e_ld), 
		.cs_e_clr(cs_e_clr), 
		.cs_i_ld(cs_i_ld), 
		.cs_i_clr(cs_i_clr), 
		.cs_fgi_ld(cs_fgi_ld), 
		.cs_fgi_clr(cs_fgi_clr), 
		.cs_fgo_ld(cs_fgo_ld), 
		.cs_fgo_clr(cs_fgo_clr),					
		.cs_s_ld(cs_s_ld), 
		.cs_s_clr(cs_s_clr),					
		.cs_r_ld(cs_s_ld), 
		.cs_r_clr(cs_s_clr),					
		.cs_ien_ld(cs_ien_ld), 
		.cs_ien_clr(cs_ien_clr),					
		.cs_mem_rd(cs_mem_rd), 
		.cs_mem_wr(cs_mem_wr),
		.cs_bus_sel(cs_bus_sel), 
		.cs_alu_func(cs_alu_func), 
		.cs_alub_sel(cs_alub_sel),
		.s_in(s_flag_input),
		.r_in(r_flag_input),
		.ien_in(ien_flag_input),
		.fgi_in(fgi_flag_input),
		.fgo_in(fgo_flag_input),
		//.cache_hit(cache_hit),
		.IR(ir),
		.AC(ac),
		.DR(dr),
		.E(e_flag),
		.I(i_flag),
		.FGI(fgi_flag),
		.FGO(fgo_flag),
		.S(s_flag),
		.R(r_flag),
		.IEN(ien_flag)
		//.b_signal(b_signal)
		);
					
	datapath    DP (.mrst(mrst), 
		.mclk(mclk), 
		.cs_ar_clr(cs_ar_clr), 
		.cs_ir_clr(cs_ir_clr), 
		.cs_pc_clr(cs_pc_clr), 
		.cs_dr_clr(cs_dr_clrv), 
		.cs_ac_clr(cs_ac_clr), 
		.cs_tr_clr(cs_tr_clr), 
		.cs_inpr_clr(cs_inpr_clr), 
		.cs_outr_clr(cs_outr_clr),
		.cs_ar_inc(cs_ar_inc), 
		.cs_ir_inc(cs_ir_inc), 
		.cs_pc_inc(cs_pc_inc), 
		.cs_dr_inc(cs_dr_inc), 
		.cs_ac_inc(cs_ac_inc), 
		.cs_tr_inc(cs_tr_inc), 
		.cs_inpr_inc(cs_inpr_inc), 
		.cs_outr_inc(cs_outr_inc),
		.cs_ar_ld(cs_ar_ld), 
		.cs_ir_ld(cs_ir_ld), 
		.cs_pc_ld(cs_pc_ld), 
		.cs_dr_ld(cs_dr_ld), 
		.cs_ac_ld(cs_ac_ld), 
		.cs_tr_ld(cs_tr_ld), 
		.cs_inpr_ld(cs_inpr_ld), 
		.cs_outr_ld(cs_outr_ld),
		.cs_e_ld(cs_e_ld), 
		.cs_e_clr(cs_e_clr), 			
		.cs_i_ld(cs_i_ld), 
		.cs_i_clr(cs_i_clr), 
		.cs_fgi_ld(cs_fgi_ld), 
		.cs_fgi_clr(cs_fgi_clr), 
		.cs_fgo_ld(cs_fgo_ld), 
		.cs_fgo_clr(cs_fgo_clr),
		.cs_s_ld(cs_s_ld), 
		.cs_s_clr(cs_s_clr),								
		.cs_r_ld(cs_s_ld), 
		.cs_r_clr(cs_s_clr),								
		.cs_ien_ld(cs_ien_ld), 
		.cs_ien_clr(cs_ien_clr),									
		.cs_mem_rd(cs_mem_rd), 
		.cs_mem_wr(cs_mem_wr),
		.cs_bus_sel(cs_bus_sel), 
		.cs_alu_func(cs_alu_func), 
		.cs_alub_sel(cs_alub_sel),
		.s_in(s_flag_input),
		.r_in(r_flag_input),
		.ien_in(ien_flag_input),
		.fgi_in(fgi_flag_input),
		.fgo_in(fgo_flag_input),					
		//.cache_hit(cache_hit),
		.IR(ir),
		.AC(ac),
		.DR(dr),
		.E(e_flag),
		.I(i_flag),
		.FGI(fgi_flag),
		.FGO(fgo_flag),
		.S(s_flag),
		.R(r_flag),
		.IEN(ien_flag)
		//.b_signal(b_signal)				
		);
endmodule
