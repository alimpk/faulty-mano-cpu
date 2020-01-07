/*
 Copyright (C) 2011 Cem Saldırım <bytesong@gmail.com>

 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to do
 so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
*/

#include <stdio.h>
#include "codegen.h"

/* Preprocessor abuse! */
#define CODEGEN_MEMREF(instr) \
    if(indirect) \
        return HEX_ ## instr ## _I + (0x0FFF & xtoi(opnd)); \
    else \
        return HEX_ ## instr + (0x0FFF & xtoi(opnd));
        
short
xtoi(char *str)
{
    short tmp;
    sscanf(str, "%x", (unsigned int *) &tmp);
    return tmp;
}

short
codegen_ORG(char *opnd, int indirect)
{
    /* Indicates how many bytes will be skipped */
    return atoi(opnd);
}

short
codegen_AND(char *opnd, int indirect)
{   
    CODEGEN_MEMREF(AND)
}

short
codegen_ADD(char *opnd, int indirect)
{
    CODEGEN_MEMREF(ADD)
}

short
codegen_LDA(char *opnd, int indirect)
{
    CODEGEN_MEMREF(LDA)
}

short
codegen_STA(char *opnd, int indirect)
{
    CODEGEN_MEMREF(STA)
}

short
codegen_BUN(char *opnd, int indirect)
{
    CODEGEN_MEMREF(BUN)
}

short
codegen_BSA(char *opnd, int indirect)
{
    CODEGEN_MEMREF(BSA)
}

short
codegen_ISZ(char *opnd, int indirect)
{
    CODEGEN_MEMREF(ISZ)
}

short
codegen_CLA(char *opnd, int indirect)
{
    return HEX_CLA;
}

short
codegen_CLE(char *opnd, int indirect)
{
    return HEX_CLE;
}

short
codegen_CMA(char *opnd, int indirect)
{
    return HEX_CMA;
}

short
codegen_CME(char *opnd, int indirect)
{
    return HEX_CME;
}

short
codegen_CIR(char *opnd, int indirect)
{
    return HEX_CIR;
}

short
codegen_CIL(char *opnd, int indirect)
{
    return HEX_CIL;
}

short
codegen_INC(char *opnd, int indirect)
{
    return HEX_INC;
}

short
codegen_SPA(char *opnd, int indirect)
{
    return HEX_SPA;
}

short
codegen_SNA(char *opnd, int indirect)
{
    return HEX_SNA;
}

short
codegen_SZA(char *opnd, int indirect)
{
    return HEX_SZA;
}

short
codegen_SZE(char *opnd, int indirect)
{
    return HEX_SZE;
}

short
codegen_HLT(char *opnd, int indirect)
{
    return HEX_HLT;
}

short
codegen_INP(char *opnd, int indirect)
{
    return HEX_INP;
}

short
codegen_OUT(char *opnd, int indirect)
{
    return HEX_OUT;
}

short
codegen_SKI(char *opnd, int indirect)
{
    return HEX_SKI;
}

short
codegen_SKO(char *opnd, int indirect)
{
    return HEX_SKO;
}

short
codegen_ION(char *opnd, int indirect)
{
    return HEX_ION;
}

short
codegen_IOF(char *opnd, int indirect)
{
    return HEX_IOF;
}

short
codegen_HEX(char *opnd, int indirect)
{
    return xtoi(opnd);
}

short
codegen_DEC(char *opnd, int indirect)
{
    return atoi(opnd);
}

short
codegen_CHR(char *opnd, int indirect)
{
    return opnd[0];
}


