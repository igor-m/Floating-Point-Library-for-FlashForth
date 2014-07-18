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

Benchmarks of some fp words (do subtract the empty loop):

benche 35.0069E0 INSTRs empty loop ok<#,ram>
b+ 279.134E0 CPU INSTRs per f+ ok<#,ram>
b- 277.291E0 CPU INSTRs per f- ok<#,ram>
b* 171.349E0 CPU INSTRs per f* ok<#,ram>
b/ 435.743E0 CPU INSTRs per f/ ok<#,ram>
bsin 2.26716E3 CPU INSTRs per fsin ok<#,ram>
bcos 3.03178E3 CPU INSTRs per fcos ok<#,ram>
btan 2.90925E3 CPU INSTRs per ftan ok<#,ram>
blog 2.53247E3 CPU INSTRs per flog ok<#,ram>
bexp 3.04007E3 CPU INSTRs per fexp ok<#,ram>
bsqrt 525.103E0 CPU INSTRs per fsqrt ok<#,ram>


Leon's original fp library:

https://github.com/lnmaurer/amforth-float


All under the same Licence as the originals.


