Beta only as of 17-7-2014

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

Tested under FlashForth 5.0 and dspic33/pic24. 

Benchmarks of some fp words (assuming 1.5 cpu instr per clock in an average):


	b+ 152.576e0 CPU INSTRs per f+ ok<#,ram>
	b- 152.576e0 CPU INSTRs per f- ok<#,ram>
	b* 81.9200e0 CPU INSTRs per f* ok<#,ram>
	b/ 260.096e0 CPU INSTRs per f/ ok<#,ram>
	bsin 1.48070e3 CPU INSTRs per fsin ok<#,ram>
	bcos 1.98963e3 CPU INSTRs per fcos ok<#,ram>
	btan 1.90874e3 CPU INSTRs per ftan ok<#,ram>
	blog 1.65683e3 CPU INSTRs per flog ok<#,ram>
	bexp 2.03878e3 CPU INSTRs per fexp ok<#,ram>
	bsqrt 319.488e0 CPU INSTRs per fsqrt ok<#,ram>
	bpow 5.77741e3 CPU INSTRs per fpow ok<#,ram>
	batan2 2.15962e3 CPU INSTRs per fatan2 ok<#,ram>
	bsinh 2.59584e3 CPU INSTRs per fsinh ok<#,ram>
	bcosh 2.54362e3 CPU INSTRs per fcosh ok<#,ram>
	btanh 2.76992e3 CPU INSTRs per ftanh ok<#,ram>


Leon's original fp library written in forth:

https://github.com/lnmaurer/amforth-float


All under the GPL v3 licence.

IgorM c 2015

