Beta as of 17-7-2014 (and 3-June-2015)

Update: June 3rd 2015
Added: atan2 sinh cosh tanh

This is a floating point library for pic24/33 with Cfloats.c and Cfloat.s for floating point support.

It includes ready to run FlashForth example (under MplabX).

The /src/Clfoats.c includes the C math routines called from asm.
The /src/Cfloats.s includes the asm calls to the C code.

The library shall be compiled under MplabX. You have to add Cfloats.c to the Sources (in order to be compiled/linked in).

In this repository you may find included a stripped down and modified Leon's fp library.

After you compile the FF asm, you may see these new floating point words 

	fatan2	fsinh	fcosh	ftanh	facos	fasin	fatan	flog10
	flog	fexp	fsqrt	ftan	fcos	fsin	fpow
	f/	f*	f-	f+

within the basic wordset.

Then:

	1. you have to upload the do-loop word if not in basic wordset 
	2. you have to upload the FF_float_NOPRIM_5.fth	or FF_float_NOPRIM_6.txt  

Tested under FlashForth 5.0 and with dspic33/pic24. 

Benchmarks of some fp words (assuming 1.5 clock per cpu instr in an average):


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


Leon's original fp library written in forth for amforth:

https://github.com/lnmaurer/amforth-float


All under the GPL v3 licence. No warranties of any kind. Provided as-is.

IgorM copyright 2014-2015

