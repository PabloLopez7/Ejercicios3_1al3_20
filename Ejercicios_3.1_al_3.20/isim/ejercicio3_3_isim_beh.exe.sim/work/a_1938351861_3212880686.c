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
static const char *ng0 = "C:/Xilinx/Ejercicios_3.1_al_3.20/ejercicio3_3.vhd";



static void work_a_1938351861_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3472);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 5450);
    t1 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t1 = 0;

LAB15:    if (t1 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 5452);
    t1 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t1 = 0;

LAB23:    if (t1 != 0)
        goto LAB19;

LAB20:    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 5454);
    t1 = 1;
    if (2U == 2U)
        goto LAB29;

LAB30:    t1 = 0;

LAB31:    if (t1 != 0)
        goto LAB27;

LAB28:    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 5456);
    t1 = 1;
    if (2U == 2U)
        goto LAB37;

LAB38:    t1 = 0;

LAB39:    if (t1 != 0)
        goto LAB35;

LAB36:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 5446);
    t12 = (t0 + 3552);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(41, ng0);
    t12 = (t0 + 1992U);
    t13 = *((char **)t12);
    t12 = (t0 + 3552);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t13, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB9;

LAB13:    t17 = 0;

LAB16:    if (t17 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t8 = (t4 + t17);
    t11 = (t2 + t17);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB14;

LAB18:    t17 = (t17 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(43, ng0);
    t12 = (t0 + 1992U);
    t13 = *((char **)t12);
    t19 = (2 - 0);
    t20 = (t19 * 1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t12 = (t13 + t22);
    t3 = *((unsigned char *)t12);
    t14 = (t0 + 3552);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t23 = *((char **)t18);
    *((unsigned char *)t23) = t3;
    xsi_driver_first_trans_delta(t14, 3U, 1, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t19 = (1 - 0);
    t17 = (t19 * 1);
    t20 = (1U * t17);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 3552);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 2U, 1, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t19 = (0 - 0);
    t17 = (t19 * 1);
    t20 = (1U * t17);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 3552);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 3552);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    goto LAB9;

LAB21:    t17 = 0;

LAB24:    if (t17 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t8 = (t4 + t17);
    t11 = (t2 + t17);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB22;

LAB26:    t17 = (t17 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(48, ng0);
    t12 = (t0 + 1992U);
    t13 = *((char **)t12);
    t19 = (1 - 0);
    t20 = (t19 * 1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t12 = (t13 + t22);
    t3 = *((unsigned char *)t12);
    t14 = (t0 + 3552);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t23 = *((char **)t18);
    *((unsigned char *)t23) = t3;
    xsi_driver_first_trans_delta(t14, 0U, 1, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t19 = (2 - 0);
    t17 = (t19 * 1);
    t20 = (1U * t17);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 3552);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t19 = (3 - 0);
    t17 = (t19 * 1);
    t20 = (1U * t17);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 3552);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 2U, 1, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 3552);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_delta(t2, 3U, 1, 0LL);
    goto LAB9;

LAB29:    t17 = 0;

LAB32:    if (t17 < 2U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t8 = (t4 + t17);
    t11 = (t2 + t17);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB30;

LAB34:    t17 = (t17 + 1);
    goto LAB32;

LAB35:    xsi_set_current_line(53, ng0);
    t12 = (t0 + 1672U);
    t13 = *((char **)t12);
    t12 = (t0 + 3552);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t13, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB9;

LAB37:    t17 = 0;

LAB40:    if (t17 < 2U)
        goto LAB41;
    else
        goto LAB39;

LAB41:    t8 = (t4 + t17);
    t11 = (t2 + t17);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB38;

LAB42:    t17 = (t17 + 1);
    goto LAB40;

}


extern void work_a_1938351861_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1938351861_3212880686_p_0};
	xsi_register_didat("work_a_1938351861_3212880686", "isim/ejercicio3_3_isim_beh.exe.sim/work/a_1938351861_3212880686.didat");
	xsi_register_executes(pe);
}
