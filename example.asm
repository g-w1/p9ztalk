BITS 64
	org 0x200000

header:
	dw 0x00008a97 ; magic
	dw textsize
	dw 0 ; data size
	dw 0 ; bss size
	dw entry
	0 ; debug info stuff
	0 ; debug info stuff
	dq entry ; fat header

text:
entry:
	mov rbp, 8
	push 0
	push 0
	syscall
	textsize equ $ - text
