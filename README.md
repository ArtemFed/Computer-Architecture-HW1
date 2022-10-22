# Computer-Architecture-HW1
Arrays and integer arithmetic <br/>

----

# Отчёт 4 балла:
### 1. _Приведено решение задачи на Cи:_
__Написана программа на С, использующая 3 единицы компиляции (main.c task.c print.c):__
> * [__main.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/main.c)
> * [__task.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/task.c)
> * [__print.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/C%20Files/print.c)

### 2. _Немодифицированная ассемблерная программа с комментариями:_
__Программа проассемблирована и откомпилирована без оптимизирующих опций:__
> * [__main.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/Assembler/main.s)
> * [__task.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/Assembler/task.s)
> * [__print.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/1b666c6c6c8fda0c04d10f0160e4615a3ae3f59c/Assembler/print.s)

__Добавлены комментарии и удобный список, поясняющий эквивалентное представление переменных на С в Ассемблере.__
> [__Список переменных__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/4a77f269eec74541d826cf8e578a482e3172365c/Assembler/variables.md)

### 3. _Модифицированная ассемблерная программа с комментариями:_
__Программа промодифицирована флагами компиляции, затем изменена вручную:__
> [__Список изменений__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/6c17edda1c5871b19e937e6682bb9f70a2a38ca7/Assembler_mod/Readme.md)

__Для удобства предоставляю новый список переменных:__
> [__Список переменных__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/575d07832ba26218638b2f5db34342c96f6c4b02/Assembler_mod/variables_mod.s)

__Модифицированная программа:__
> * [__main_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/main_mod.s)
> * [__task_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/task_mod.s)
> * [__print_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/print_mod.s)

### 4. _Тестирование:_
> [__Ссылка__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/85764be93cbb70bdb0302ecd95a2dd665eb67fdc/Tests.md) <br/>
> __По результатам трёх тестов сравнения программ на Ассемблере и Модифицированном Ассемблере можно легко заметить, что программы отработали идетично и без ошибок, поэтому делаем вывод, что модификация программы проведена успешно.__

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
> * Была прокоментированна связь между параметрами языка Си и регистрами по правилам: <br/>
    1)  eax/rax - для запоминания/аккумулирования данных  <br/>
    2)  rdi - первый аргумент в функции / edi - argc <br/>
    3)  rsi/esi - второй аргумент в функции (esi - так как передаю "маленький" length, а не массив) <br/>
    4)  rdx - третий аргумент в функции <br/>
    5)  rcx - счётчик <br/>
> * [Ссылка на отчёт о модификациях](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/55f2b857d00237ee41008801a3ed50b3f8488e47/Assembler_mod/Readme.md)

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
    ! замена length не удалась, привела к Segmentation fault

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

### 3. Текстовые файлы:
> * [input.txt](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/ecb520bb4c843236661b8e5bbb28120a8ceb83bb/Assembler_mod/input.txt)
> * [output.txt](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/ecb520bb4c843236661b8e5bbb28120a8ceb83bb/Assembler_mod/output.txt)

### Отчёт:
> * Три единиицы компиляции: main.s, task.s, print.s
> * Использование аргументов командной строки: 
>   при вызове файла запуска с одним аргументов, он будет считаться длиной массива, который нужно прочитать из файла input.txt и вывести результат в output.txt, находящиеся в одной папке с файлом запуска (например: "./result.exe 5" => 5 = length и из input.txt будет прочитано 5 цифр в формате %d)

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

### 3. Решение на Си и на модифицированном ассемблере c внутренним циклом на 10млн проходов для автоматического замера времени: <br/>
> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/007c41d432d38f47f7290f8a19263a648a7b1b5b/Assembler_mod/print_mod.s) <br/>

### 3. Тестирование:
> * [Ссылка](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/85764be93cbb70bdb0302ecd95a2dd665eb67fdc/Tests.md)

### Отчёт:
> 1) Си <br/>
> *  [main_timer.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/a4284b2c0403014bc348586de4a4cc1220adbc69/C%20Files_timer/main_timer.c)
> *  [task_timer.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/a4284b2c0403014bc348586de4a4cc1220adbc69/C%20Files_timer/task_timer.c)
> *  [print_timer.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/a4284b2c0403014bc348586de4a4cc1220adbc69/C%20Files_timer/print_timer.c)
> 2) Ассемблер <br/>
> *  [main_timer_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/bc4390dae62c42cecbaa919392cf45773e6fd85e/Assembler_timer/main_timer_mod.s)
> *  [task_timer_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/bc4390dae62c42cecbaa919392cf45773e6fd85e/Assembler_timer/task_timer_mod.s)
> *  [print_timer_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/bc4390dae62c42cecbaa919392cf45773e6fd85e/Assembler_timer/print_timer_mod.s)
