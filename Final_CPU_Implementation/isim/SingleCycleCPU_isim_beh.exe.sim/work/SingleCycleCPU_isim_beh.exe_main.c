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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_0774719531;
char *VL_P_2533777724;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004134447467_2073120511_init();
    work_m_00000000000352777780_3674772129_init();
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    vl_p_2533777724_init();
    work_a_0658286079_0521664330_init();
    work_a_3430011751_3212880686_init();
    work_a_3270490360_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_1274177957_3212880686_init();
    work_a_1018141992_3212880686_init();
    work_a_0136541135_1181938964_init();
    work_a_2096391741_3212880686_init();
    work_a_0089524818_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_0909257147_3212880686_init();
    work_a_1459736149_2799730620_init();
    work_a_2263464102_3212880686_init();
    work_a_3449609834_3212880686_init();
    work_a_0224351237_1181938964_init();


    xsi_register_tops("work_a_0224351237_1181938964");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");

    return xsi_run_simulation(argc, argv);

}
