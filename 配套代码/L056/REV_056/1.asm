; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

	TITLE	C:\Users\libit\source\repos\REV_056\REV_056\REV_056.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?RNG_state@@3IA					; RNG_state
_BSS	SEGMENT
?RNG_state@@3IA DD 01H DUP (?)				; RNG_state
_BSS	ENDS
CONST	SEGMENT
$SG6117	DB	'Hello World!', 0aH, 00H
	ORG $+2
$SG6118	DB	'%f', 0aH, 00H
CONST	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	?my_srand@@YAXI@Z				; my_srand
PUBLIC	?my_rand@@YAIXZ					; my_rand
PUBLIC	?float_rand@@YAMXZ				; float_rand
PUBLIC	_main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
PUBLIC	__real@3f800000
EXTRN	___acrt_iob_func:PROC
EXTRN	___stdio_common_vfprintf:PROC
EXTRN	__time64:PROC
EXTRN	__fltused:DWORD
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
;	COMDAT __real@3f800000
CONST	SEGMENT
__real@3f800000 DD 03f800000r			; 1
CONST	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_f$1 = -8						; size = 4
_i$2 = -4						; size = 4
_main	PROC
; File C:\Users\libit\source\repos\REV_056\REV_056\REV_056.cpp
; Line 49
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 50
	push	OFFSET $SG6117
	call	_printf
	add	esp, 4
; Line 51
	push	0
	call	_time
	add	esp, 4
	push	eax
	call	?my_srand@@YAXI@Z			; my_srand
	add	esp, 4
; Line 52
	mov	DWORD PTR _i$2[ebp], 0
	jmp	SHORT $LN4@main
$LN2@main:
	mov	eax, DWORD PTR _i$2[ebp]
	add	eax, 1
	mov	DWORD PTR _i$2[ebp], eax
$LN4@main:
	cmp	DWORD PTR _i$2[ebp], 10			; 0000000aH
	jae	SHORT $LN3@main
; Line 54
	call	?float_rand@@YAMXZ			; float_rand
	fstp	DWORD PTR _f$1[ebp]
; Line 55
	cvtss2sd xmm0, DWORD PTR _f$1[ebp]
	sub	esp, 8
	movsd	QWORD PTR [esp], xmm0
	push	OFFSET $SG6118
	call	_printf
	add	esp, 12					; 0000000cH
; Line 56
	jmp	SHORT $LN2@main
$LN3@main:
; Line 57
	xor	eax, eax
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
tv81 = -12						; size = 4
tv68 = -8						; size = 4
_tmp$ = -4						; size = 4
?float_rand@@YAMXZ PROC					; float_rand
; File C:\Users\libit\source\repos\REV_056\REV_056\REV_056.cpp
; Line 38
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
; Line 41
	mov	eax, DWORD PTR _tmp$[ebp]
	and	eax, 2147483647				; 7fffffffH
	mov	DWORD PTR _tmp$[ebp], eax
; Line 42
	mov	ecx, DWORD PTR _tmp$[ebp]
	and	ecx, -2139095041			; 807fffffH
	or	ecx, 1065353216				; 3f800000H
	mov	DWORD PTR _tmp$[ebp], ecx
; Line 43
	call	?my_rand@@YAIXZ				; my_rand
	mov	DWORD PTR tv68[ebp], eax
	mov	edx, DWORD PTR tv68[ebp]
	and	edx, 8388607				; 007fffffH
	mov	eax, DWORD PTR _tmp$[ebp]
	and	eax, -8388608				; ff800000H
	or	eax, edx
	mov	DWORD PTR _tmp$[ebp], eax
; Line 45
	movss	xmm0, DWORD PTR _tmp$[ebp]
	subss	xmm0, DWORD PTR __real@3f800000
	movss	DWORD PTR tv81[ebp], xmm0
	fld	DWORD PTR tv81[ebp]
; Line 46
	mov	esp, ebp
	pop	ebp
	ret	0
?float_rand@@YAMXZ ENDP					; float_rand
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
?my_rand@@YAIXZ PROC					; my_rand
; File C:\Users\libit\source\repos\REV_056\REV_056\REV_056.cpp
; Line 18
	push	ebp
	mov	ebp, esp
; Line 19
	imul	eax, DWORD PTR ?RNG_state@@3IA, 1664525	; RNG_state
	add	eax, 1013904223				; 3c6ef35fH
	mov	DWORD PTR ?RNG_state@@3IA, eax		; RNG_state
; Line 20
	mov	eax, DWORD PTR ?RNG_state@@3IA		; RNG_state
; Line 21
	pop	ebp
	ret	0
?my_rand@@YAIXZ ENDP					; my_rand
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_i$ = 8							; size = 4
?my_srand@@YAXI@Z PROC					; my_srand
; File C:\Users\libit\source\repos\REV_056\REV_056\REV_056.cpp
; Line 13
	push	ebp
	mov	ebp, esp
; Line 14
	mov	eax, DWORD PTR _i$[ebp]
	mov	DWORD PTR ?RNG_state@@3IA, eax		; RNG_state
; Line 15
	pop	ebp
	ret	0
?my_srand@@YAXI@Z ENDP					; my_srand
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
__Time$ = 8						; size = 4
_time	PROC
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\time.h
; Line 535
	push	ebp
	mov	ebp, esp
; Line 536
	mov	eax, DWORD PTR __Time$[ebp]
	push	eax
	call	__time64
	add	esp, 4
; Line 537
	pop	ebp
	ret	0
_time	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT _printf
_TEXT	SEGMENT
__Result$ = -8						; size = 4
__ArgList$ = -4						; size = 4
__Format$ = 8						; size = 4
_printf	PROC						; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 954
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 957
	lea	eax, DWORD PTR __Format$[ebp+4]
	mov	DWORD PTR __ArgList$[ebp], eax
; Line 958
	mov	ecx, DWORD PTR __ArgList$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR __Format$[ebp]
	push	edx
	push	1
	call	___acrt_iob_func
	add	esp, 4
	push	eax
	call	__vfprintf_l
	add	esp, 16					; 00000010H
	mov	DWORD PTR __Result$[ebp], eax
; Line 959
	mov	DWORD PTR __ArgList$[ebp], 0
; Line 960
	mov	eax, DWORD PTR __Result$[ebp]
; Line 961
	mov	esp, ebp
	pop	ebp
	ret	0
_printf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT __vfprintf_l
_TEXT	SEGMENT
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
__Locale$ = 16						; size = 4
__ArgList$ = 20						; size = 4
__vfprintf_l PROC					; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 642
	push	ebp
	mov	ebp, esp
; Line 643
	mov	eax, DWORD PTR __ArgList$[ebp]
	push	eax
	mov	ecx, DWORD PTR __Locale$[ebp]
	push	ecx
	mov	edx, DWORD PTR __Format$[ebp]
	push	edx
	mov	eax, DWORD PTR __Stream$[ebp]
	push	eax
	call	___local_stdio_printf_options
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	mov	edx, DWORD PTR [eax]
	push	edx
	call	___stdio_common_vfprintf
	add	esp, 24					; 00000018H
; Line 644
	pop	ebp
	ret	0
__vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ___local_stdio_printf_options
_TEXT	SEGMENT
___local_stdio_printf_options PROC			; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\corecrt_stdio_config.h
; Line 86
	push	ebp
	mov	ebp, esp
; Line 88
	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
; Line 89
	pop	ebp
	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
END
