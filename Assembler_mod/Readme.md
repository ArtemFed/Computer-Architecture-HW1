# Для можификации было изменено вручную после применения "gcc -O0 -Wall -masm=intel -S -fno-asynchronous-unwind-tables -fcf-protection=none name.s -o name.o":
## main_mod.s
*     Бесполезные переприсваивания:
*     1) mov	rax, rsp & mov	rbx, rax => mov	rbx, rsp <br> 
*     2) mov	rax, QWORD PTR -128[rbp] & mov	rdi, rax => mov	rdi, QWORD PTR -128[rbp] <br> 
*     3) mov	ecx, DWORD PTR -184[rbp] & mov	esi, ecx => mov	esi, DWORD PTR -184[rbp] <br>
*     4) mov	rax, QWORD PTR -112[rbp] & mov	rdi, rax => rdi, QWORD PTR -112[rbp] <br>
*     5) mov	rax, QWORD PTR -88[rbp] & mov	rdi, rax => mov	rdi, QWORD PTR -88[rbp] <br>
*     6) mov	eax, DWORD PTR -184[rbp] & mov	esi, eax => mov	esi, DWORD PTR -184[rbp] <br>
*     7) mov	ecx, DWORD PTR -184[rbp] & mov	esi, ecx => mov	esi, DWORD PTR -184[rbp] <br>
*     8) mov	rax, QWORD PTR -152[rbp] & mov	rdi, rax => mov	rdi, QWORD PTR -152[rbp] <br>
*     9) mov	edx, DWORD PTR -184[rbp] & mov	esi, edx => mov	esi, DWORD PTR -184[rbp] <br>
*     10) mov	rax, QWORD PTR -136[rbp] & mov	rdi, rax => mov	rdi, QWORD PTR -136[rbp] <br>
*     11) mov	eax, DWORD PTR -176[rbp] & mov	esi, eax => mov	esi, DWORD PTR -176[rbp] <br>
*     12) mov	ecx, DWORD PTR -184[rbp] & mov	esi, ecx => mov	esi, DWORD PTR -184[rbp] <br>
*     13) mov	rax, QWORD PTR -152[rbp] & mov	rdi, rax => mov	rdi, QWORD PTR -152[rbp] <br>
*     14) mov	edx, DWORD PTR -184[rbp] & mov	esi, edx => mov	esi, DWORD PTR -184[rbp] <br>
*     15) mov	rax, QWORD PTR -136[rbp] & mov	rdi, rax => mov	rdi, QWORD PTR -136[rbp] <br>
*     16) Удалены cdqe
*     С массивами:
*     1) В каждом объявлении массива удалены по 5 переменных без дальнейшего использования
*     2) Удалены лишние movsx	rdx, eax
*     3) Удалены лишние sub	rdx, 1	
*     C 

## print_mod.s
*     1) Удалён cdqe
*     2) Много присваиваний в eax <br>
   >> mov	eax, DWORD PTR -4[rbp] <br>
   >> mov	eax, DWORD PTR [rax] <br>
   >> mov	esi, eax <br>
   >> mov	eax, 0
   >> > =>  mov	esi, DWORD PTR [rax]

## task_mod.s
*     1) Удалены cdqe 
