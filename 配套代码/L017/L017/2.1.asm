; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?sum_result@@3HA				; sum_result
PUBLIC	?multi_result@@3HA				; multi_result
_BSS	SEGMENT
?sum_result@@3HA DD 01H DUP (?)				; sum_result
?multi_result@@3HA DD 01H DUP (?)			; multi_result
_BSS	ENDS
CONST	SEGMENT
$SG5099	DB	'Hello World!', 0aH, 00H
	ORG $+2
$SG5100	DB	'sum_result=%d,multi_result=%d', 0aH, 00H
CONST	ENDS
PUBLIC	__local_stdio_printf_options
PUBLIC	_vfprintf_l
PUBLIC	printf
PUBLIC	?f@@YAXHHPEAH0@Z				; f
PUBLIC	main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
EXTRN	__acrt_iob_func:PROC
EXTRN	__stdio_common_vfprintf:PROC
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vfprintf_l DD imagerel $LN4
	DD	imagerel $LN4+80
	DD	imagerel $unwind$_vfprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$printf DD imagerel $LN6
	DD	imagerel $LN6+83
	DD	imagerel $unwind$printf
pdata	ENDS
pdata	SEGMENT
$pdata$main DD	imagerel $LN6
	DD	imagerel $LN6+66
	DD	imagerel $unwind$main
pdata	ENDS
xdata	SEGMENT
$unwind$main DD	010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$printf DD 041b01H
	DD	07017521bH
	DD	030156016H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfprintf_l DD 081401H
	DD	0a6414H
	DD	095414H
	DD	083414H
	DD	070105214H
xdata	ENDS
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
main	PROC
; File C:\Users\libit\source\repos\L017\L017\L017.cpp
; Line 16
$LN6:
	sub	rsp, 40					; 00000028H
; Line 17
	lea	rcx, OFFSET FLAT:$SG5099
	call	printf
; Line 19
	mov	edx, 579				; 00000243H
; Line 8
	mov	DWORD PTR ?sum_result@@3HA, 579		; sum_result, 00000243H
; Line 19
	mov	r8d, 56088				; 0000db18H
; Line 9
	mov	DWORD PTR ?multi_result@@3HA, 56088	; multi_result, 0000db18H
; Line 19
	lea	rcx, OFFSET FLAT:$SG5100
	call	printf
; Line 20
	xor	eax, eax
	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
x$ = 8
y$ = 16
sum$ = 24
multi$ = 32
?f@@YAXHHPEAH0@Z PROC					; f
; File C:\Users\libit\source\repos\L017\L017\L017.cpp
; Line 8
	lea	eax, DWORD PTR [rcx+rdx]
; Line 9
	imul	ecx, edx
	mov	DWORD PTR [r8], eax
	mov	DWORD PTR [r9], ecx
; Line 10
	ret	0
?f@@YAXHHPEAH0@Z ENDP					; f
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT printf
_TEXT	SEGMENT
_Format$ = 80
printf	PROC						; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 954
$LN6:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	push	rbx
	push	rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rcx
; Line 957
	lea	rsi, QWORD PTR _Format$[rsp+8]
; Line 958
	mov	ecx, 1
	call	__acrt_iob_func
	mov	rbx, rax
; Line 643
	call	__local_stdio_printf_options
	xor	r9d, r9d
	mov	QWORD PTR [rsp+32], rsi
	mov	r8, rdi
	mov	rdx, rbx
	mov	rcx, QWORD PTR [rax]
	call	__stdio_common_vfprintf
; Line 961
	add	rsp, 48					; 00000030H
	pop	rdi
	pop	rsi
	pop	rbx
	ret	0
printf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _vfprintf_l
_TEXT	SEGMENT
_Stream$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vfprintf_l PROC					; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 642
$LN4:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, r9
	mov	rdi, r8
	mov	rsi, rdx
	mov	rbp, rcx
; Line 643
	call	__local_stdio_printf_options
	mov	r9, rdi
	mov	QWORD PTR [rsp+32], rbx
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, QWORD PTR [rax]
	call	__stdio_common_vfprintf
; Line 644
	mov	rbx, QWORD PTR [rsp+64]
	mov	rbp, QWORD PTR [rsp+72]
	mov	rsi, QWORD PTR [rsp+80]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT __local_stdio_printf_options
_TEXT	SEGMENT
__local_stdio_printf_options PROC			; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\corecrt_stdio_config.h
; Line 88
	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
; Line 89
	ret	0
__local_stdio_printf_options ENDP
_TEXT	ENDS
END
