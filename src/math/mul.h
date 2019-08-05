#pragma once

#include <stdio.h>

#include "../math.h"
#include "../misc/logic.h"
#include "../misc/util.h"

/* Byte multiplier. */

#define _MATH_MUL_SINGLE_OP_STMT(rega,regb,c) \
    MATH_ADD(rega,rega); \
    if (c) { \
        MATH_ADD(rega,regb); \
    }

#define _MATH_MUL_UNIT_STMT(rega,regb,i,bit_stmt0,bit_stmt1) \
    if ((regb).bit##i) { \
        bit_stmt1; \
        _MATH_MUL_SINGLE_OP_STMT(rega,regb,1); \
    } else { \
        bit_stmt0; \
        _MATH_MUL_SINGLE_OP_STMT(rega,regb,0); \
    }

#define _MATH_MUL_UNIT2_STMT(rega,regb,i,j,bit_stmt0,bit_stmt1) \
    _MATH_MUL_UNIT_STMT(rega,regb,i, \
        _MATH_MUL_UNIT_STMT(rega,regb,j,bit_stmt0,bit_stmt1), \
        _MATH_MUL_UNIT_STMT(rega,regb,j,bit_stmt0,bit_stmt1))

#define _MATH_MUL_UNIT4_STMT(rega,regb,i,j,k,l,bit_stmt0,bit_stmt1) \
    _MATH_MUL_UNIT2_STMT(rega,regb,i,j, \
        _MATH_MUL_UNIT2_STMT(rega,regb,k,l,bit_stmt0,bit_stmt1), \
        _MATH_MUL_UNIT2_STMT(rega,regb,k,l,bit_stmt0,bit_stmt1))

#define MATH_MUL_STMT(rega,regb) \
    _MATH_MUL_UNIT4_STMT(rega,regb,1,2,3,4, \
        _MATH_MUL_UNIT4_STMT(rega,regb,5,6,7,8, \
            UTIL_CUT_STMT(rega,regb), \
            UTIL_CUT_STMT(rega,regb)), \
        _MATH_MUL_UNIT4_STMT(rega,regb,5,6,7,8, \
            UTIL_CUT_STMT(rega,regb), \
            UTIL_CUT_STMT(rega,regb)))
