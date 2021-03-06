BITS 64

header:
	db 0x00, 0x00, 0x8a, 0x97 ; magic
	db 0x00, 0x00, 0x00, 0x0b ; text size (big endian)
	dd 0 ; data size
	dd 0 ; bss size
	db 0x00, 0x00, 0x00, 8 + 1 + 6 ; symbol table size
	db 0x00, 0x20, 0x00, 0x28 ; entry
	dd 0 ; debug info stuff
	dd 0 ; debug info stuff
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x28; fat header

text:
	mov rbp, 8
	push 0
	push 0
	syscall

symtab:
	; _main
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x28; symbol address
	db 'T' | 0x80 ; symbol type (global text in this case)
	db "_main", 0 ; symbol name
