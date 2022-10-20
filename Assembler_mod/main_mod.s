	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"input.txt"
.LC2:
	.string	"%d"
.LC3:
	.string	"w"
.LC4:
	.string	"output.txt"
.LC5:
	.string	"%d "
	.align 8
.LC6:
	.string	"Input length (0 < length <= %d):"
.LC7:
	.string	"Incorrect length = %d\n"
	.align 8
.LC8:
	.string	"Random input or Direct (ans: 1, !=1):"
.LC9:
	.string	"Result A: "
.LC10:
	.string	"A[%d] = %d\n"
.LC11:
	.string	"A[%d] ="
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 264
	mov	DWORD PTR -196[rbp], edi 	# -196 = argc
	mov	QWORD PTR -208[rbp], rsi 	# -208 = argv
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -180[rbp], 0		# запись answer => (-180 = answer)
	cmp	DWORD PTR -196[rbp], 2		# сравниваем argc c 2
	jne	.L2
	mov	rbx, rsp
	mov	rax, QWORD PTR -208[rbp]	# сохраняем значение argv[0]
	add	rax, 8
	mov 	rax, QWORD PTR [rax]
	mov 	rdi, rax
	call 	atoi@PLT
	mov	DWORD PTR -184[rbp], eax	# запись input => (-184 = input)
	lea	rsi, .LC0[rip]
	lea	rdi, .LC1[rip]
	call	fopen@PLT
	mov	QWORD PTR -128[rbp], rax 	# -128 = поток "input.txt"
	mov 	r11, QWORD PTR -128[rbp] 	# r11 - copy stream "input.txt"
	mov	eax, DWORD PTR -184[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -120[rbp], rdx	# массив A[] с аргументов cmd
	movsx	rdx, eax
	mov	QWORD PTR -224[rbp], rdx
	mov	QWORD PTR -216[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -240[rbp], rdx
	mov	QWORD PTR -232[rbp], 0
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L3:
	cmp	rsp, rdx
	je	.L4
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L3
.L4:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L5
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L5:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -112[rbp], rax 	# конец создания массива А[] с аргументов cmd (-112 = A[])
	mov	eax, DWORD PTR -184[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -104[rbp], rdx	# массив B[] с аргументов cmd
	movsx	rdx, eax
	mov	QWORD PTR -256[rbp], rdx
	mov	QWORD PTR -248[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -272[rbp], rdx
	mov	QWORD PTR -264[rbp], 0
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L6:
	cmp	rsp, rdx
	je	.L7
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L6
.L7:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L8
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L8:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -96[rbp], rax 	# конец создания массива B[] с аргументов cmd (-96 = B[])
	mov r12d, 0
	jmp	.L9
.L10:						# for для fscanf()
	mov	eax, r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -112[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -128[rbp]
	lea	rsi, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	add	r12d, 1
.L9:
	mov	eax, DWORD PTR -184[rbp]
	cmp	r12d, eax
	jl	.L10
	mov	rdi, QWORD PTR -128[rbp]
	call	fclose@PLT
	mov	rdx, QWORD PTR -96[rbp]
	mov	esi, DWORD PTR -184[rbp]
	mov	rdi, QWORD PTR -112[rbp]
	call	task@PLT # task(A, length, B);
	lea	rsi, .LC3[rip]
	lea	rdi, .LC4[rip]
	call	fopen@PLT
	mov	QWORD PTR -88[rbp], rax 	# -88 = поток "output.txt"
	mov 	r14, QWORD PTR -88[rbp] 	# r14 - copy stream "output.txt"
	mov	r12d, 0	
	jmp	.L11
.L12:						# for для fprintf()
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, r12d
	movsx	rdx, edx
	mov	edx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -88[rbp]
	lea	rsi, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	fprintf@PLT
	add	r12d, 1
.L11:
	mov	eax, DWORD PTR -184[rbp]
	cmp	r12d, eax
	jl	.L12
	mov	rdi, QWORD PTR -88[rbp]
	call	fclose@PLT
	mov	eax, 0
	mov	rsp, rbx
	jmp	.L28
.L2:
	mov	esi, 20
	lea	rdi, .LC6[rip]
	mov	eax, 0
	call	printf@PLT
	lea	rax, -184[rbp]
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -184[rbp]
	test	eax, eax
	jle	.L14
	mov	eax, DWORD PTR -184[rbp]
	cmp	eax, 20
	jle	.L15
.L14:
	mov	esi, DWORD PTR -184[rbp]
	lea	rdi, .LC7[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L28
.L15:
	mov	eax, DWORD PTR -184[rbp]
	mov	rdx, rsp
	mov	rbx, rdx
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -160[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -288[rbp], rdx
	mov	QWORD PTR -280[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -304[rbp], rdx
	mov	QWORD PTR -296[rbp], 0
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rsi, rsp
	sub	rsi, rdx
	mov	rdx, rsi
.L16:
	cmp	rsp, rdx
	je	.L17
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L16
.L17:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L18
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L18:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -152[rbp], rax	# конец создания массива A[] (-80 = A[])
	mov	eax, DWORD PTR -184[rbp]
	movsx	rdx, eax			# Создание массива B[]
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L19:
	cmp	rsp, rdx
	je	.L20
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L19
.L20:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L21
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L21:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -136[rbp], rax	# -136 = указаткль на массив B[]
	lea	rdi, .LC8[rip]
	mov	eax, 0
	call	printf@PLT
	lea	rax, -180[rbp]
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -180[rbp]
	cmp	eax, 1
	jne	.L22
	lea	rax, -80[rbp] 			# struct timespec sec;
	mov	rsi, rax
	mov	edi, 0
	call	clock_gettime@PLT
	mov	rax, QWORD PTR -72[rbp]		# srand(sec.tv_nsec);
	mov	edi, eax
	call	srand@PLT
	lea	rdi, .LC9[rip]
	call	puts@PLT
	mov	DWORD PTR -172[rbp], 0
	jmp	.L23
.L24:
	call	rand@PLT
	mov	ecx, eax
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	mov	edx, eax
	sar	edx, 2
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	rax, QWORD PTR -152[rbp]
	mov	ecx, DWORD PTR -172[rbp]
	movsx	rcx, ecx
	mov	DWORD PTR [rax+rcx*4], edx
	mov	eax, DWORD PTR -172[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -152[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -172[rbp]
	mov	esi, eax
	lea	rdi, .LC10[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -172[rbp], 1
.L23:
	mov	eax, DWORD PTR -184[rbp]
	cmp	DWORD PTR -172[rbp], eax
	jl	.L24
	mov	rdx, QWORD PTR -136[rbp]
	mov	esi, DWORD PTR -184[rbp]
	mov	rdi, QWORD PTR -152[rbp]
	call	task@PLT
	mov	esi, DWORD PTR -184[rbp]
	mov	rdi, QWORD PTR -136[rbp]
	call	print_arr@PLT
	mov	eax, 0
	jmp	.L25
.L22:
	mov	edi, 10
	call	putchar@PLT
	mov	DWORD PTR -176[rbp], 0
	jmp	.L26
.L27:
	mov	esi, DWORD PTR -176[rbp]
	lea	rdi, .LC11[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -176[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -152[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -176[rbp], 1
.L26:
	mov	eax, DWORD PTR -184[rbp]
	cmp	DWORD PTR -176[rbp], eax
	jl	.L27
	mov	rdx, QWORD PTR -136[rbp]
	mov	esi, DWORD PTR -184[rbp]
	mov	rdi, QWORD PTR -152[rbp]
	call	task@PLT
	mov	esi, DWORD PTR -184[rbp]
	mov	rdi, QWORD PTR -136[rbp]
	call	print_arr@PLT
	mov	eax, 0
.L25:
	mov	rsp, rbx
.L28:
	mov	rbx, QWORD PTR -56[rbp]
	xor	rbx, QWORD PTR fs:40
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
