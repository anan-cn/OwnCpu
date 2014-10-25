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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Administrator/Desktop/Final CPU Architecture/Final_CPU_Implementation/ALU.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 2928);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 2852);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 2964);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 32U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t16 = (t0 + 2860);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 684U);
    t5 = *((char **)t1);
    t1 = (t0 + 2964);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_2(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t1 = (t0 + 5608U);
    t3 = (t0 + 5828);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 31;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (31 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 3000);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 2868);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 3000);
    t11 = (t7 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_3(char *t0)
{
    char t5[16];
    char t15[16];
    char t17[16];
    char t21[16];
    char t30[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t12;
    char *t14;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    char *t22;
    int t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 5576U);
    t3 = (t0 + 5860);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 2;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (2 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB7:    t40 = (t0 + 1420U);
    t41 = *((char **)t40);
    t40 = (t0 + 3036);
    t42 = (t40 + 32U);
    t43 = *((char **)t42);
    t44 = (t43 + 40U);
    t45 = *((char **)t44);
    memcpy(t45, t41, 32U);
    xsi_driver_first_trans_fast_port(t40);

LAB2:    t46 = (t0 + 2876);
    *((int *)t46) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 5863);
    t12 = (t0 + 5891);
    t16 = ((IEEE_P_2592010699) + 2332);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 27;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (27 - 0);
    t9 = (t20 * 1);
    t9 = (t9 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t9;
    t19 = (t21 + 0U);
    t22 = (t19 + 0U);
    *((int *)t22) = 0;
    t22 = (t19 + 4U);
    *((int *)t22) = 2;
    t22 = (t19 + 8U);
    *((int *)t22) = 1;
    t23 = (2 - 0);
    t9 = (t23 * 1);
    t9 = (t9 + 1);
    t22 = (t19 + 12U);
    *((unsigned int *)t22) = t9;
    t14 = xsi_base_array_concat(t14, t15, t16, (char)97, t7, t17, (char)97, t12, t21, (char)101);
    t22 = (t0 + 1420U);
    t24 = *((char **)t22);
    t25 = (31 - 31);
    t9 = (t25 * -1);
    t26 = (1U * t9);
    t27 = (0 + t26);
    t22 = (t24 + t27);
    t28 = *((unsigned char *)t22);
    t31 = ((IEEE_P_2592010699) + 2332);
    t29 = xsi_base_array_concat(t29, t30, t31, (char)97, t14, t15, (char)99, t28, (char)101);
    t32 = (28U + 3U);
    t33 = (t32 + 1U);
    t34 = (32U != t33);
    if (t34 == 1)
        goto LAB5;

LAB6:    t35 = (t0 + 3036);
    t36 = (t35 + 32U);
    t37 = *((char **)t36);
    t38 = (t37 + 40U);
    t39 = *((char **)t38);
    memcpy(t39, t29, 32U);
    xsi_driver_first_trans_fast_port(t35);
    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t33, 0);
    goto LAB6;

LAB8:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_4(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 5894);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB9:    t5 = (t0 + 5897);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB10:    t8 = (t0 + 5900);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB11:    t11 = (t0 + 5903);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB12:    t14 = (t0 + 5906);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5909);
    t3 = (t0 + 3072);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 2884);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(62, ng0);
    t18 = (t0 + 1236U);
    t19 = *((char **)t18);
    t18 = (t0 + 5592U);
    t20 = (t0 + 1328U);
    t21 = *((char **)t20);
    t20 = (t0 + 5592U);
    t22 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t17, t19, t18, t21, t20);
    t23 = (t17 + 12U);
    t24 = *((unsigned int *)t23);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB15;

LAB16:    t27 = (t0 + 3072);
    t28 = (t27 + 32U);
    t29 = *((char **)t28);
    t30 = (t29 + 40U);
    t31 = *((char **)t30);
    memcpy(t31, t22, 32U);
    xsi_driver_first_trans_fast(t27);
    goto LAB2;

LAB4:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 5592U);
    t3 = (t0 + 1328U);
    t5 = *((char **)t3);
    t3 = (t0 + 5592U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t17, t2, t1, t5, t3);
    t8 = (t17 + 12U);
    t24 = *((unsigned int *)t8);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB17;

LAB18:    t9 = (t0 + 3072);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 5592U);
    t3 = (t0 + 1328U);
    t5 = *((char **)t3);
    t3 = (t0 + 5592U);
    t6 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t17, t2, t1, t5, t3);
    t8 = (t17 + 12U);
    t24 = *((unsigned int *)t8);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB19;

LAB20:    t9 = (t0 + 3072);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB6:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 5592U);
    t3 = (t0 + 1328U);
    t5 = *((char **)t3);
    t3 = (t0 + 5592U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t17, t2, t1, t5, t3);
    t8 = (t17 + 12U);
    t24 = *((unsigned int *)t8);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB21;

LAB22:    t9 = (t0 + 3072);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB7:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 5592U);
    t3 = (t0 + 1328U);
    t5 = *((char **)t3);
    t3 = (t0 + 5592U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t17, t2, t1, t5, t3);
    t8 = (t17 + 12U);
    t24 = *((unsigned int *)t8);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 3072);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB14:;
LAB15:    xsi_size_not_matching(32U, t25, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t25, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(32U, t25, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(32U, t25, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(32U, t25, 0);
    goto LAB24;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1,(void *)work_a_0832606739_3212880686_p_2,(void *)work_a_0832606739_3212880686_p_3,(void *)work_a_0832606739_3212880686_p_4};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/SingleCycleCPU_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
