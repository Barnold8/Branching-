section .data

	compareMe db 12

	notEQ db "This number is less than 12", 10 ;28
	EQ db "This number is more than 12", 10 ;28

section .text


	global _start


_start:

	mov rcx, compareMe

	cmp rcx, 12

	ja _EQtotwelve
	jl _noEQ
	


_exit:

	mov rax, 60
	mov rdi, 0
	syscall 

_noEQ:


	mov rax, 1
	mov rdi, 1
	mov rsi, notEQ
	mov rdx, 28
	syscall

	call _exit
	ret


_EQtotwelve:


	mov rax, 1
	mov rdi, 1
	mov rsi, EQ
	mov rdx, 28
	syscall
	call _exit
	ret