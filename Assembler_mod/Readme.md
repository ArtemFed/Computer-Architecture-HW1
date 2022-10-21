# Для модификации была применена команда 
>     gcc -O0 -Wall -masm=intel -S -fno-asynchronous-unwind-tables -fcf-protection=none name.s -o name.o
После чего все файлы были отредактированны вручную:
# main_mod.s
###    Бесполезные переприсваивания:
*     mov rax, rsp   &   mov rbx, rax => mov	rbx, rsp
*     mov rax, QWORD PTR -128[rbp]  &  mov rdi, rax => mov rdi, QWORD PTR -128[rbp]
*     mov ecx, DWORD PTR -184[rbp]  &  mov esi, ecx => mov esi, DWORD PTR -184[rbp] 
*     mov rax, QWORD PTR -112[rbp]  &  mov rdi, rax => mov rdi, QWORD PTR -112[rbp]
*     mov rax, QWORD PTR -88[rbp]   &  mov rdi, rax => mov rdi, QWORD PTR -88[rbp]
*     mov eax, DWORD PTR -184[rbp]  &  mov esi, eax => mov esi, DWORD PTR -184[rbp]
*     mov ecx, DWORD PTR -184[rbp]  &  mov esi, ecx => mov esi, DWORD PTR -184[rbp]
*     mov rax, QWORD PTR -152[rbp]  &  mov rdi, rax => mov rdi, QWORD PTR -152[rbp]
*     mov edx, DWORD PTR -184[rbp]  &  mov esi, edx => mov esi, DWORD PTR -184[rbp]
*     mov rax, QWORD PTR -136[rbp]  &  mov rdi, rax => mov rdi, QWORD PTR -136[rbp]
*     mov eax, DWORD PTR -176[rbp]  &  mov esi, eax => mov esi, DWORD PTR -176[rbp]
*     mov ecx, DWORD PTR -184[rbp]  &  mov esi, ecx => mov esi, DWORD PTR -184[rbp]
*     mov rax, QWORD PTR -152[rbp]  &  mov rdi, rax => mov rdi, QWORD PTR -152[rbp]
*     mov edx, DWORD PTR -184[rbp]  &  mov esi, edx => mov esi, DWORD PTR -184[rbp]
*     mov rax, QWORD PTR -136[rbp]  &  mov rdi, rax => mov rdi, QWORD PTR -136[rbp]
*     Удалены cdqe

###     С массивами:
*     В каждом объявлении массива удалены по 5 переменных без дальнейшего использования
*     Удалены лишние movsx	rdx, eax
*     Удалены лишние sub	rdx, 1	

###     C регистрами
*     Были добавлены r12d вместо итераторов i

# print_mod.s
*     Удалён cdqe
*     Много присваиваний в eax <br>
   >> mov eax, DWORD PTR -4[rbp] <br>
   >> mov eax, DWORD PTR [rax] <br>
   >> mov esi, eax <br>
   >> mov	eax, 0
   >> > =>  mov	esi, DWORD PTR [rax]

###     C регистрами
*     Были добавлены r12d вместо перемеенных итераторов i

# task_mod.s
*     Удалены cdqe 
*     Были добавлены r12d вместо перемеенной итератора i
