; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

	TITLE	C:\Users\libit\source\repos\L009\L009\L009.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG30740 DB	'%d,%d,%d', 00H
	ORG $+3
$SG30743 DB	'Hello World!', 0aH, 00H
CONST	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	?f1@@YAXXZ					; f1
PUBLIC	?f2@@YAXXZ					; f2
PUBLIC	_main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
EXTRN	___acrt_iob_func:PROC
EXTRN	___stdio_common_vfprintf:PROC
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_main	PROC
; File C:\Users\libit\source\repos\L009\L009\L009.cpp
; Line 22
	push	ebp
	mov	ebp, esp
; Line 23
	call	?f1@@YAXXZ				; f1
; Line 24
	call	?f2@@YAXXZ				; f2
; Line 25
	push	OFFSET $SG30743
	call	_printf
	add	esp, 4
; Line 26
	xor	eax, eax
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_a$ = -12						; size = 4
_b$ = -8						; size = 4
_c$ = -4						; size = 4
?f2@@YAXXZ PROC						; f2
; File C:\Users\libit\source\repos\L009\L009\L009.cpp
; Line 13
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
; Line 17
	mov	eax, DWORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	mov	edx, DWORD PTR _a$[ebp]
	push	edx
	push	OFFSET $SG30740
	call	_printf
	add	esp, 16					; 00000010H
; Line 18
	mov	esp, ebp
	pop	ebp
	ret	0
?f2@@YAXXZ ENDP						; f2
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_c$ = -12						; size = 4
_b$ = -8						; size = 4
_a$ = -4						; size = 4
?f1@@YAXXZ PROC						; f1
; File C:\Users\libit\source\repos\L009\L009\L009.cpp
; Line 7
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
; Line 8
	mov	DWORD PTR _a$[ebp], 1
; Line 9
	mov	DWORD PTR _b$[ebp], 2
; Line 10
	mov	DWORD PTR _c$[ebp], 3
; Line 11
	mov	esp, ebp
	pop	ebp
	ret	0
?f1@@YAXXZ ENDP						; f1
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
