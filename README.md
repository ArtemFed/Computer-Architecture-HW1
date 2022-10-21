# Computer-Architecture-HW1
Arrays and integer arithmetic <br/>

----
# 4 балла:
### 1. Приведено решение задачи на Cи: <br/>
> * [main.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/main.c) <br/>
> * [task.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/task.c) <br/>
> * [print.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/print.c) <br/>

### 2. Немодифицированная ассемблерная программа с комментариями: <br/>
> * [Список переменных](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/4a77f269eec74541d826cf8e578a482e3172365c/Assembler/variables.md)
> * [main.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/Assembler/main.s) <br/>
> * [task.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/Assembler/task.s) <br/>
> * [print.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/Assembler/print.s) <br/>

### 3. Модифицированная ассемблерная программа с комментариями: <br/>
> * [Список переменных](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/575d07832ba26218638b2f5db34342c96f6c4b02/Assembler_mod/variables_mod.s)
> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/print_mod.s) <br/>

### 4. Тестирование:
> * [Ссылка](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/85764be93cbb70bdb0302ecd95a2dd665eb67fdc/Tests.md)

### Отчёт:
> * По результатам трёх тестов сравнения программ на ассемблере и модифицированном ассемблере можно легко заметить, что программы отработали идетично и без ошибок, поэтому делаем вывод, что модификация программы проведена успешно. <br/>
> * [Ссылка на отчёт о модификациях](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/55f2b857d00237ee41008801a3ed50b3f8488e47/Assembler_mod/Readme.md)
---- 
# 5 баллов:
### 1. Решение на Cи с передачей данных в функции через параметры + локальные переменные: <br/>
> * [main.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/main.c) <br/>
> * [task.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/task.c) <br/>
> * [print.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/print.c) <br/>

### 2. Ассемблерная программа с комментариями описывающие передачу параметров и перенос результата +  комментарии, описывающие связь между параметрами языка Си и регистрами (стеком): <br/>
> * [Список переменных](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/575d07832ba26218638b2f5db34342c96f6c4b02/Assembler_mod/variables_mod.s)
> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/print_mod.s) <br/>

### Отчёт:
> * Вызовы уже существующих функций task(A[], length, B[]) и print_arr(B[], length) были прокомментированны, переходы к регистрам rdx, esi, rdi были отмечены.
> * Была прокоментированна связь между параметрами языка Си и регистрами.
---- 
# 6 баллов:
### 1. Решение на ассемблере с рефакторингом программы за счет максимального использования регистров процессор: <br/>
> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/print_mod.s) <br/>

### 2. Тестирование:
> * [Ссылка](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/85764be93cbb70bdb0302ecd95a2dd665eb67fdc/Tests.md)

### Отчёт:
> * Были реализованы все увиденные возможные замены локальных переменных на регистры процессора.
> * Добавлены комментарии на эквивалентное использование регистров вместо переменных.
> * По результатам нескольких тестов сравнения программ на ассемблере и модифицированном ассемблере с регистрами можно легко заметить, что программы отработали идетично и без ошибок, поэтому делаем вывод, что эквивалентная замена переменных на регистры в программе была проведена успешно.

---- 
# 7 баллов:
### 1. Решение на Cи с тремя единицами компиляции + использование аргументов коммандной строки для работы с файлами (ввод значения length для чтения элементов из input.txt): <br/>
> * [main.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/main.c) <br/>
> * [task.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/task.c) <br/>
> * [print.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/print.c) <br/>

### 2. Решение на ассемблере с тремя единицами компиляции + использование аргументов коммандной строки для работы с файлами (ввод значения length для чтения элементов из input.txt): <br/>
> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/print_mod.s) <br/>

### 3. Тестовые файлы:
> * [input.txt](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/ecb520bb4c843236661b8e5bbb28120a8ceb83bb/Assembler_mod/input.txt)
> * [output.txt](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/ecb520bb4c843236661b8e5bbb28120a8ceb83bb/Assembler_mod/output.txt)

---- 
# 8 баллов:
### 1. Решение на Cи c генератором случайного набора данных + интерфейс для расширения анализа командной строки: <br/>
> * [main.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/main.c) <br/>
> * [task.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/task.c) <br/>
> * [print.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/print.c) <br/>

### 2. Решение на ассемблере c генератором случайного набора данных + интерфейс для расширения анализа командной строки: <br/>
> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/print_mod.s) <br/>
