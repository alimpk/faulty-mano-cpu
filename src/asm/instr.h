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

#ifndef __INSTR_H
#define __INSTR_H

#define FOREACH_INSTR(F) \
    F(ADD) F(AND) F(LDA) F(STA) F(BUN) F(BSA) F(ISZ) F(CLA) \
    F(CLE) F(CMA) F(CME) F(CIR) F(CIL) F(INC) F(SPA) F(SNA) \
    F(SZA) F(SZE) F(HLT) F(INP) F(OUT) F(SKI) F(SKO) F(ION) \
    F(IOF) F(ORG) F(HEX) F(DEC) F(CHR)
    
#define __GEN_ENUM(instr) instr,

enum { 
    FOREACH_INSTR(__GEN_ENUM)
};

int get_instr_id(char *);

#endif
