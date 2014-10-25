/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/aloupas/task1/decoder.vhd";



static void work_a_2263464102_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    int t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t53;
    int t55;
    char *t56;
    int t58;
    char *t59;
    int t61;
    char *t62;
    int t64;
    char *t65;
    int t67;
    char *t68;
    int t70;
    char *t71;
    int t73;
    char *t74;
    int t76;
    char *t77;
    int t79;
    char *t80;
    int t82;
    char *t83;
    int t85;
    char *t86;
    int t88;
    char *t89;
    int t91;
    char *t92;
    int t94;
    char *t95;
    int t97;
    char *t98;
    int t100;
    char *t101;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 4606);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 4638);
    t10 = xsi_mem_cmp(t1, t3, 5U);
    if (t10 == 1)
        goto LAB6;

LAB39:    t5 = (t0 + 4643);
    t11 = xsi_mem_cmp(t5, t3, 5U);
    if (t11 == 1)
        goto LAB7;

LAB40:    t7 = (t0 + 4648);
    t13 = xsi_mem_cmp(t7, t3, 5U);
    if (t13 == 1)
        goto LAB8;

LAB41:    t14 = (t0 + 4653);
    t16 = xsi_mem_cmp(t14, t3, 5U);
    if (t16 == 1)
        goto LAB9;

LAB42:    t17 = (t0 + 4658);
    t19 = xsi_mem_cmp(t17, t3, 5U);
    if (t19 == 1)
        goto LAB10;

LAB43:    t20 = (t0 + 4663);
    t22 = xsi_mem_cmp(t20, t3, 5U);
    if (t22 == 1)
        goto LAB11;

LAB44:    t23 = (t0 + 4668);
    t25 = xsi_mem_cmp(t23, t3, 5U);
    if (t25 == 1)
        goto LAB12;

LAB45:    t26 = (t0 + 4673);
    t28 = xsi_mem_cmp(t26, t3, 5U);
    if (t28 == 1)
        goto LAB13;

LAB46:    t29 = (t0 + 4678);
    t31 = xsi_mem_cmp(t29, t3, 5U);
    if (t31 == 1)
        goto LAB14;

LAB47:    t32 = (t0 + 4683);
    t34 = xsi_mem_cmp(t32, t3, 5U);
    if (t34 == 1)
        goto LAB15;

LAB48:    t35 = (t0 + 4688);
    t37 = xsi_mem_cmp(t35, t3, 5U);
    if (t37 == 1)
        goto LAB16;

LAB49:    t38 = (t0 + 4693);
    t40 = xsi_mem_cmp(t38, t3, 5U);
    if (t40 == 1)
        goto LAB17;

LAB50:    t41 = (t0 + 4698);
    t43 = xsi_mem_cmp(t41, t3, 5U);
    if (t43 == 1)
        goto LAB18;

LAB51:    t44 = (t0 + 4703);
    t46 = xsi_mem_cmp(t44, t3, 5U);
    if (t46 == 1)
        goto LAB19;

LAB52:    t47 = (t0 + 4708);
    t49 = xsi_mem_cmp(t47, t3, 5U);
    if (t49 == 1)
        goto LAB20;

LAB53:    t50 = (t0 + 4713);
    t52 = xsi_mem_cmp(t50, t3, 5U);
    if (t52 == 1)
        goto LAB21;

LAB54:    t53 = (t0 + 4718);
    t55 = xsi_mem_cmp(t53, t3, 5U);
    if (t55 == 1)
        goto LAB22;

LAB55:    t56 = (t0 + 4723);
    t58 = xsi_mem_cmp(t56, t3, 5U);
    if (t58 == 1)
        goto LAB23;

LAB56:    t59 = (t0 + 4728);
    t61 = xsi_mem_cmp(t59, t3, 5U);
    if (t61 == 1)
        goto LAB24;

LAB57:    t62 = (t0 + 4733);
    t64 = xsi_mem_cmp(t62, t3, 5U);
    if (t64 == 1)
        goto LAB25;

LAB58:    t65 = (t0 + 4738);
    t67 = xsi_mem_cmp(t65, t3, 5U);
    if (t67 == 1)
        goto LAB26;

LAB59:    t68 = (t0 + 4743);
    t70 = xsi_mem_cmp(t68, t3, 5U);
    if (t70 == 1)
        goto LAB27;

LAB60:    t71 = (t0 + 4748);
    t73 = xsi_mem_cmp(t71, t3, 5U);
    if (t73 == 1)
        goto LAB28;

LAB61:    t74 = (t0 + 4753);
    t76 = xsi_mem_cmp(t74, t3, 5U);
    if (t76 == 1)
        goto LAB29;

LAB62:    t77 = (t0 + 4758);
    t79 = xsi_mem_cmp(t77, t3, 5U);
    if (t79 == 1)
        goto LAB30;

LAB63:    t80 = (t0 + 4763);
    t82 = xsi_mem_cmp(t80, t3, 5U);
    if (t82 == 1)
        goto LAB31;

LAB64:    t83 = (t0 + 4768);
    t85 = xsi_mem_cmp(t83, t3, 5U);
    if (t85 == 1)
        goto LAB32;

LAB65:    t86 = (t0 + 4773);
    t88 = xsi_mem_cmp(t86, t3, 5U);
    if (t88 == 1)
        goto LAB33;

LAB66:    t89 = (t0 + 4778);
    t91 = xsi_mem_cmp(t89, t3, 5U);
    if (t91 == 1)
        goto LAB34;

LAB67:    t92 = (t0 + 4783);
    t94 = xsi_mem_cmp(t92, t3, 5U);
    if (t94 == 1)
        goto LAB35;

LAB68:    t95 = (t0 + 4788);
    t97 = xsi_mem_cmp(t95, t3, 5U);
    if (t97 == 1)
        goto LAB36;

LAB69:    t98 = (t0 + 4793);
    t100 = xsi_mem_cmp(t98, t3, 5U);
    if (t100 == 1)
        goto LAB37;

LAB70:
LAB38:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 5822);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(40, ng0);
    t101 = (t0 + 4798);
    t103 = (t0 + 2912);
    t104 = (t103 + 56U);
    t105 = *((char **)t104);
    t106 = (t105 + 56U);
    t107 = *((char **)t106);
    memcpy(t107, t101, 32U);
    xsi_driver_first_trans_fast_port(t103);
    goto LAB5;

LAB7:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 4830);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB8:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 4862);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB9:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4894);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB10:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4926);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB11:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 4958);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB12:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 4990);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB13:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 5022);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB14:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 5054);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB15:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 5086);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB16:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5118);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB17:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5150);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB18:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5182);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB19:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5214);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB20:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5246);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB21:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5278);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB22:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5310);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB23:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5342);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB24:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5374);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB25:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5406);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB26:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5438);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB27:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5470);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB28:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5502);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB29:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5534);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB30:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5566);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB31:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5598);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB32:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5630);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB33:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5662);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB34:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5694);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB35:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5726);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB36:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 5758);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB37:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 5790);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB71:;
}


extern void work_a_2263464102_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2263464102_3212880686_p_0};
	xsi_register_didat("work_a_2263464102_3212880686", "isim/decoder_tb_isim_beh.exe.sim/work/a_2263464102_3212880686.didat");
	xsi_register_executes(pe);
}
