; float add
CFADD_L:
        .byte   NFA|2
        .ascii  "f+"
        .align  2
CFADD_:
        mov     [W14--], W3
        mov     [W14--], W2
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfadd
        call    _Cfadd
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFADD_L)+PFLASH

; float sub
CFSUB_L:
        .byte   NFA|2
        .ascii  "f-"
        .align  2
CFSUB_:
        mov     [W14--], W3
        mov     [W14--], W2
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfsub
        call    _Cfsub
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFSUB_L)+PFLASH

; float mul
CFMUL_L:
        .byte   NFA|2
        .ascii  "f*"
        .align  2
CFMUL_:
        mov     [W14--], W3
        mov     [W14--], W2
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfmul
        call    _Cfmul
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFMUL_L)+PFLASH

; float div
CFDIV_L:
        .byte   NFA|2
        .ascii  "f/"
        .align  2
CFDIV_:
        mov     [W14--], W3
        mov     [W14--], W2
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfdiv
        call    _Cfdiv
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFDIV_L)+PFLASH
		
; float pow
CFPOW_L:
        .byte   NFA|4
        .ascii  "fpow"
        .align  2
CFPOW_:
        mov     [W14--], W3
        mov     [W14--], W2
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfpow
        call    _Cfpow
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFPOW_L)+PFLASH		

; float sin
CFSIN_L:
        .byte   NFA|4
        .ascii  "fsin"
        .align  2
CFSIN_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfsin
        call    _Cfsin
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFSIN_L)+PFLASH

; float cos
CFCOS_L:
        .byte   NFA|4
        .ascii  "fcos"
        .align  2
CFCOS_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfcos
        call    _Cfcos
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFCOS_L)+PFLASH

; float tan
CFTAN_L:
        .byte   NFA|4
        .ascii  "ftan"
        .align  2
CFTAN_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cftan
        call    _Cftan
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFTAN_L)+PFLASH
		
; float sqrt
CFSQRT_L:
        .byte   NFA|5
        .ascii  "fsqrt"
        .align  2
CFSQRT_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfsqrt
        call    _Cfsqrt
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFSQRT_L)+PFLASH	

; float exp
CFEXP_L:
        .byte   NFA|4
        .ascii  "fexp"
        .align  2
CFEXP_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfexp
        call    _Cfexp
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFEXP_L)+PFLASH	
		
; float log
CFLOG_L:
        .byte   NFA|4
        .ascii  "flog"
        .align  2
CFLOG_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cflog
        call    _Cflog
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFLOG_L)+PFLASH
		
; float log10
CFLOG10_L:
        .byte   NFA|6
        .ascii  "flog10"
        .align  2
CFLoG10_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cflog10
        call    _Cflog10
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFLOG10_L)+PFLASH	

; float atan
CFATAN_L:
        .byte   NFA|5
        .ascii  "fatan"
        .align  2
CFATAN_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfatan
        call    _Cfatan
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFATAN_L)+PFLASH	
		
; float asin
CFASIN_L:
        .byte   NFA|5
        .ascii  "fasin"
        .align  2
CFASIN_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfasin
        call    _Cfasin
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFASIN_L)+PFLASH

; float acos
CFACOS_L:
        .byte   NFA|5
        .ascii  "facos"
        .align  2
CFACOS_:
        mov     [W14--], W1
        mov     [W14], W0
        .extern Cfacos
        call    _Cfacos
        mov     W0, [W14++]
        mov     W1, [W14]
        return

        .pword  paddr(CFACOS_L)+PFLASH		

