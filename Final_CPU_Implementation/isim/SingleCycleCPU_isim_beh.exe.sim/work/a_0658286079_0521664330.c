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
static const char *ng0 = "C:/Users/Administrator/Desktop/Final CPU Architecture/Final_CPU_Implementation/Sp_Ram_asyncRead.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0658286079_0521664330_p_0(char *t0)
{
    char t12[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2372);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1052U);
    t7 = *((char **)t3);
    t3 = (t0 + 868U);
    t8 = *((char **)t3);
    t9 = (31 - 31);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t3 = (t8 + t11);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 31;
    t14 = (t13 + 4U);
    *((int *)t14) = 2;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t15 = (2 - 31);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t17 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t12);
    t18 = (t17 - 255);
    t16 = (t18 * -1);
    t19 = (32U * t16);
    t20 = (0U + t19);
    t14 = (t0 + 2424);
    t21 = (t14 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t7, 32U);
    xsi_driver_first_trans_delta(t14, t20, 32U, 0LL);
    goto LAB6;

}

static void work_a_0658286079_0521664330_p_1(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB2:    t24 = (t0 + 2380);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1144U);
    t5 = *((char **)t1);
    t1 = (t0 + 868U);
    t6 = *((char **)t1);
    t7 = (31 - 31);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t6 + t9);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 31;
    t12 = (t11 + 4U);
    *((int *)t12) = 2;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (2 - 31);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t1, t10);
    t16 = (t15 - 255);
    t14 = (t16 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t15);
    t17 = (32U * t14);
    t18 = (0 + t17);
    t12 = (t5 + t18);
    t19 = (t0 + 2460);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 32U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB2;

}


extern void work_a_0658286079_0521664330_init()
{
	static char *pe[] = {(void *)work_a_0658286079_0521664330_p_0,(void *)work_a_0658286079_0521664330_p_1};
	xsi_register_didat("work_a_0658286079_0521664330", "isim/SingleCycleCPU_isim_beh.exe.sim/work/a_0658286079_0521664330.didat");
	xsi_register_executes(pe);
}
