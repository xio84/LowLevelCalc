#pragma once

#include <stdio.h>

#include "../math.h"
#include "../misc/logic.h"
#include "../misc/util.h"
#include "add.h"

//Substract method
#define MATH_SUB_STMT(rega,regb,regt1) \
    LOGIC_NOT_STMT(regb); \
    UTIL_LOAD_BIN_STMT(regt1,0,0,0,0,0,0,0,1); \
    MATH_ADD(regb,regt1); \
    MATH_ADD_STMT_FULL(rega,regb,printf ("Warning: Underflow!\n"),)
