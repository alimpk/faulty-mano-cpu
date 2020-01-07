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

#ifndef __CODEGEN_H
#define __CODEGEN_H

#define HEX_AND    0x0000
#define HEX_AND_I 0x8000

#define HEX_ADD    0x1000
#define HEX_ADD_I 0x9000

#define HEX_LDA    0x2000
#define HEX_LDA_I 0xA000

#define HEX_STA     0x3000
#define HEX_STA_I 0xB000

#define HEX_BUN    0x4000
#define HEX_BUN_I 0xC000

#define HEX_BSA    0x5000
#define HEX_BSA_I 0xD000

#define HEX_ISZ    0x6000
#define HEX_ISZ_I 0xE000

#define HEX_CLA   0x7800

#define HEX_CLE   0x7400

#define HEX_CMA   0x7200

#define HEX_CME   0x7100

#define HEX_CIR   0x7080

#define HEX_CIL   0x7040

#define HEX_INC   0x7020

#define HEX_SPA   0x7010

#define HEX_SNA   0x7008

#define HEX_SZA   0x7004

#define HEX_SZE   0x7004

#define HEX_HLT   0x7001

#define HEX_INP   0xF800

#define HEX_OUT   0xF400

#define HEX_SKI   0xF200

#define HEX_SKO   0xF100

#define HEX_ION   0xF080

#define HEX_IOF   0xF040

#endif
