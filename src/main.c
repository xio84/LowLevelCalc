#include <stdio.h>
#include <stdlib.h>

#include "main.h"
#include "misc/util.h"
#include "parser/expr.h"
#include "main.h"
#include "math/add.h"
#include "math/sub.h"
#include "math/mul.h"
#include "math/div.h"
#include "math/pow.h"
#include "math/sqrt.h"

#include "math.h"

/* Create definitions for Additions. */

MATH_NEW_PROCEDURE(MATH_ADD,reg1,reg1);
MATH_NEW_PROCEDURE(MATH_ADD,reg1,reg2);
MATH_NEW_PROCEDURE(MATH_ADD,reg1,reg3);
MATH_NEW_PROCEDURE(MATH_ADD,reg2,reg2);
MATH_NEW_PROCEDURE(MATH_ADD,reg2,reg3);
MATH_NEW_PROCEDURE(MATH_ADD,reg3,reg3);
MATH_NEW_PROCEDURE(MATH_ADD,reg3,reg4);

/* Create definitions for Substractions. */

MATH_NEW_PROCEDURE(MATH_SUB,reg1,reg2,reg3);

/* Multiply. */

MATH_NEW_PROCEDURE(MATH_MUL,reg1,reg2);
MATH_NEW_PROCEDURE(MATH_MUL,reg1,reg3);
MATH_NEW_PROCEDURE(MATH_MUL,reg2,reg3);
MATH_NEW_PROCEDURE(MATH_MUL,reg3,reg4);

/* Divide. */

MATH_NEW_PROCEDURE(MATH_DIV,reg1,reg2,reg3,reg4);

/* Power. */

MATH_NEW_PROCEDURE(MATH_POW,reg1,reg3,reg4);
MATH_NEW_PROCEDURE(MATH_POW,reg2,reg3,reg4);

/* Square root. */

MATH_NEW_PROCEDURE(MATH_SQRT,reg1);
MATH_NEW_PROCEDURE(MATH_SQRT,reg2);
MATH_NEW_PROCEDURE(MATH_SQRT,reg3);

reg reg1;
reg reg2;
reg reg3;
reg reg4;

int main (int argc, char* argv[]) {
    
    FILE *file = fopen ("math.txt", "r");
    char c;

    //File tidak ditemukan
    if (file == NULL) {
        printf ("File not found!\n");
        exit (1);
    }

    //Mulai membaca file
    EXPR_EVAL_STMT(file,c,reg1,reg2,reg3,reg4);
    printf("%u\n", UTIL_CAST_UINT(reg1));
    
    return 0;
}
