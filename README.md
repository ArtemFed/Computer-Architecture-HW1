# Computer-Architecture-HW1
Arrays and integer arithmetic <br/>

----

# Отчёт 4 балла:
### 1. _Приведено решение задачи на Cи:_
__Написана программа на С, использующая 3 единицы компиляции (main.c task.c print.c):__
> * [__main.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/main.c)
> * [__task.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/task.c)
> * [__print.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/print.c)

### 2. _Немодифицированная ассемблерная программа с комментариями:_
__Программа проассемблирована и откомпилирована без оптимизирующих опций:__
> * [__main.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler/main.s)
> * [__task.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler/task.s)
> * [__print.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler/print.s)

__Добавлены комментарии и удобный список, поясняющий эквивалентное представление переменных на С в Ассемблере.__
> [__Список переменных__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler/variables.md)

### 3. _Модифицированная ассемблерная программа с комментариями:_
__Программа промодифицирована флагами компиляции, затем изменена вручную:__
> [__Список изменений__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/Readme.md)

__Для удобства предоставляю новый список переменных:__
> [__Список переменных__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/variables_mod.s)

__Модифицированная программа:__
> * [__main_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/main_mod.s)
> * [__task_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/task_mod.s)
> * [__print_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/print_mod.s)

### 4. _Тестирование:_
> [__Ссылка__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Tests.md) <br/>
> __По результатам трёх тестов сравнения программ на Ассемблере и Модифицированном Ассемблере можно легко заметить, что программы отработали идетично и без ошибок, поэтому делаем вывод, что модификация программы проведена успешно.__

---- 

# Отчёт 5 баллов:
### 1. _Решение на Cи с передачей данных в функции через параметры + локальные переменные:_
__В программе присутствуют две функции: task(*A[], length, *B[]) и print_arr(*B[], length) с соответствующими параметрами. Используются локальные переменные.__
> * [__main.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/main.c)
> * [__task.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/task.c)
> * [__print.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/print.c)

### 2. _Ассемблерная программа с комментариями_:
__Добавлены комментарии, описывающие передачу параметров и перенос возвращаемого результат__ <br/>
__Была прокоментированна связь между параметрами языка Си и регистрами по правилам:__ <br/>
> 1)  __eax/rax - для запоминания/аккумулирования данных__
> 2)  __rdi - первый аргумент в функции / edi - argc__
> 3)  __rsi/esi - второй аргумент в функции (esi - так как передаю "маленький" length, а не массив)__
> 4)  __rdx - третий аргумент в функции__
> 5)  __rcx - счётчик__

> * [__Список переменных в модифицированной программе__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/575d07832ba26218638b2f5db34342c96f6c4b02/Assembler_mod/variables_mod.s)
> * [__main_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/main_mod.s)
> * [__task_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/task_mod.s)
> * [__print_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/print_mod.s)

---- 

# Отчёт 6 баллов:
### 1. _Решение на ассемблере с рефакторингом программы за счет максимального использования регистров процессор:_ <br/>
__Добавлены комментарии на эквивалентное использование регистров вместо переменных:__ <br/>
__Изменения с регистрами:__
*   __Были реализованы все увиденные возможные замены локальных переменных на регистры процессора__
*   __Добавлены r12d вместо перемеенных итераторов i в for (во всех файлах)__
*   __Поток "input.txt" был сохранён в r11__
*   __Поток "output.txt" был сохранён в r14__
*   _замена length не удалась, привела к Segmentation fault_

> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/print_mod.s) <br/>

### 2. Тестирование:
> [__Ссылка__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Tests.md) <br/>
> По результатам нескольких тестов сравнения программ на ассемблере и модифицированном ассемблере с регистрами можно легко заметить, что программы отработали идетично и без ошибок, поэтому делаем вывод, что эквивалентная замена переменных на регистры в программе была проведена успешно.
### Отчёт:

---- 

# 7 баллов:
### 1. Решение на Cи с тремя единицами компиляции + использование аргументов коммандной строки для работы с файлами (ввод значения length для чтения элементов из input.txt): <br/>
> * [main.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/main.c) <br/>
> * [task.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/task.c) <br/>
> * [print.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/print.c) <br/>

### 2. Решение на ассемблере с тремя единицами компиляции + использование аргументов коммандной строки для работы с файлами (ввод значения length для чтения элементов из input.txt): <br/>
> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/print_mod.s) <br/>

### 3. Текстовые файлы:
> * [input.txt](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/input.txt)
> * [output.txt](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/output.txt)

### Отчёт:
> * Три единиицы компиляции: main.s, task.s, print.s
> * Использование аргументов командной строки: 
>   при вызове файла запуска с одним аргументов, он будет считаться длиной массива, который нужно прочитать из файла input.txt и вывести результат в output.txt, находящиеся в одной папке с файлом запуска (например: "./result.exe 5" => 5 = length и из input.txt будет прочитано 5 цифр в формате %d)

---- 

# 8 баллов:
### 1. Решение на Cи c генератором случайного набора данных + интерфейс для расширения анализа командной строки: <br/>
> * [main.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/main.c) <br/>
> * [task.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/task.c) <br/>
> * [print.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/print.c) <br/>

### 2. Решение на ассемблере c генератором случайного набора данных + интерфейс для расширения анализа командной строки: <br/>
> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/print_mod.s) <br/>

### 3. Решение на Си и на модифицированном ассемблере c внутренним циклом на 10млн проходов для автоматического замера времени: <br/>
> * [main_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/main_mod.s) <br/>
> * [task_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/task_mod.s) <br/>
> * [print_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/print_mod.s) <br/>

### 3. Тестирование:
> * [Ссылка](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Tests.md)

### Отчёт:
> 1) Си <br/>
> *  [main_timer.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files_timer/main_timer.c)
> *  [task_timer.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files_timer/task_timer.c)
> *  [print_timer.c](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files_timer/print_timer.c)
> 2) Ассемблер <br/>
> *  [main_timer_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_timer/main_timer_mod.s)
> *  [task_timer_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_timer/task_timer_mod.s)
> *  [print_timer_mod.s](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_timer/print_timer_mod.s)
