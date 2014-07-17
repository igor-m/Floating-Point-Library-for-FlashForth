Beta only as of 17-5-2014

This is a part of the FlashForth 5.0 for pic24/33 with added Cfloats.c and Cfloat.s 
for floating point support.

The /src/Clfoats.c includes the C math routines called from FF asm.
The /src/Cfloats.s includes the asm calls to the C code.

The FF asm shall be compiled under MplabX. You have to add Cfloats.c to the Sources (to be compiled).

In this repo you may find included the stripped down and modified Leon's fp library for FF 5.0.

After you compile the FF asm, you may see these new floating point words 

      facos   fasin   fatan   flog10  flog    fexp
      fsqrt   ftan    fcos    fsin    fpow    f/      f*      f-
      f+

within the basic wordset of FF.

Then:
1. you have to upload the do-loop
2. you have to upload the FF_float_NOPRIM_5.fth	(the stripped down and modded Leon's lib)  

Tested under FlashForth 5.0 and dspic33fj128gp802. 


Leon's original fp library:

https://github.com/lnmaurer/amforth-float


All under the same Licence as the originals.


