	.file	"HW1.c"
	.intel_syntax noprefix
	.text
	.globl	Task
	.type	Task, @function
Task:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -28[rbp], 0
	je	.L6
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
.L4:
	mov	eax, DWORD PTR -28[rbp]
	sub	eax, 1
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	jmp	.L1
.L6:
	nop
.L1:
	pop	rbp
	ret
	.size	Task, .-Task
	.section	.rodata
	.align 8
.LC0: 	// Текст для вывода запроса о длине массива
	.string	"Input length (0 < length <= %d): "
.LC1: 	// Аргумент для получения и записи длины массива
	.string	"%d"
.LC2: 	// Текст для вывода при неверном введённом значении длины массива
	.string	"Incorrect length = %d\n"
.LC3: 	// Текст для вывода запроса i-ого элемента массива А
	.string	"A[%d] = "
.LC4: 	// Текст для вывода результирующего массива B
	.string	"Result B: "
.LC5:
	.string	"%d "
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
	sub	rsp, 88
	mov	rax, QWORD PTR fs:40	// QWORD указатель на 
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	mov	rax, rsp
	mov	rbx, rax
	mov	esi, 20
	lea	rdi, .LC0[rip]	// Аргумент для printf
	mov	eax, 0
	call	printf@PLT	// Вызов printf
	lea	rax, -96[rbp]	// -96 - это переменная length
	mov	rsi, rax
	lea	rdi, .LC1[rip]	// Аргумент для scanf
	mov	eax, 0	 
	call	__isoc99_scanf@PLT	// Вызов scanf и запись значения в length	
	mov	eax, DWORD PTR -96[rbp] // Считывание длины от length и запись
	test	eax, eax // Срабатывает if (length < 1)
	jle	.L8 // Если if дал true
	mov	eax, DWORD PTR -96[rbp]
	cmp	eax, 20 // Срабатывает if (length > max_size)
	jle	.L9 // Если if дал false, сработал else
.L8: 	// Сработал true; Выброс ошибки
	mov	eax, DWORD PTR -96[rbp]
	mov	esi, eax
	lea	rdi, .LC2[rip] // Передача аргумента в printf
	mov	eax, 0
	call	printf@PLT // Вывод ошибки при некорректном length
	mov	eax, 1
	jmp	.L10
.L9:	// Сработал else; Начало создания массивов А и В
	mov	eax, DWORD PTR -96[rbp]
	movsx	rdx, eax
	sub	rdx, 1 // Вычетание 1 из значения length
	mov	QWORD PTR -88[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -112[rbp], rdx // Создание массива А
	mov	QWORD PTR -104[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -128[rbp], rdx // Создание массива В
	mov	QWORD PTR -120[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*4]	// !!! ЧТО ЭТО??? !!!
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi		// !!! ЧТО ЭТО??? !!!
	imul	rax, rax, 16	// !!! ЧТО ЭТО??? !!!
	mov	rdx, rax
	and	rdx, -4096	// !!! ЧТО ЭТО??? !!!
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L11:
	cmp	rsp, rdx
	je	.L12
	sub	rsp, 4096	// !!! ЧТО ЭТО??? !!!
	or	QWORD PTR 4088[rsp], 0	// !!! ЧТО ЭТО??? !!!
	jmp	.L11
.L12:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L13
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L13:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -80[rbp], rax
	mov	eax, DWORD PTR -96[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ecx, 16
	mov	edx, 0
	div	rcx
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L14:
	cmp	rsp, rdx
	je	.L15
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L14
.L15:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L16
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L16:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -92[rbp], 0
	jmp	.L17
.L18:	// Цикл for для считывания элементов А
	mov	eax, DWORD PTR -92[rbp]
	mov	esi, eax
	lea	rdi, .LC3[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -92[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -92[rbp], 1
.L17:
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -92[rbp], eax
	jl	.L18 	// Запуск for для считывания элементов А
	mov	ecx, DWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	Task	// ВЫЗОВ ФУНКЦИИ Task !
	lea	rdi, .LC4[rip] // Вывод 
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -92[rbp], 0
	jmp	.L19
.L20:	// Цикл for для вывода элементов B
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -92[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	esi, eax
	lea	rdi, .LC5[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -92[rbp], 1
.L19:
	mov	eax, DWORD PTR -96[rbp]
	cmp	DWORD PTR -92[rbp], eax
	jl	.L20 // Вызов Цикла for для считывания элементов А
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
.L10:	// return 1;
	mov	rsp, rbx
	mov	rbx, QWORD PTR -56[rbp]
	xor	rbx, QWORD PTR fs:40
	je	.L22
	call	__stack_chk_fail@PLT
.L22:	// Очистка памяти
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
