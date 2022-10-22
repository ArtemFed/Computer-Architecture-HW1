# Computer-Architecture-HW1
Arrays and integer arithmetic <br/>


---- 
<br/>


# Отчёт 4 балла:
### 1. _Приведено решение задачи на Cи:_
__Написана программа на С, использующая 3 единицы компиляции (main.c task.c print.c):__
> * [__main.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/main.c)
> * [__task.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/task.c)
> * [__print.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/print.c)

<br/>

### 2. _Немодифицированная ассемблерная программа с комментариями:_
__Программа проассемблирована и откомпилирована без оптимизирующих опций:__
> * [__main.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler/main.s)
> * [__task.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler/task.s)
> * [__print.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler/print.s)

__Добавлены комментарии и удобный список, поясняющий эквивалентное представление переменных на С в Ассемблере.__
> [__Список переменных__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler/variables.md)

<br/>

### 3. _Модифицированная ассемблерная программа с комментариями:_
__Программа промодифицирована флагами компиляции, затем изменена вручную:__
> [__Список изменений__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/Readme.md)

__Для удобства предоставляю новый список переменных:__
> [__Список переменных в модифицированной программе__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/variables_mod.s)

__Модифицированная программа:__
> * [__main_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/main_mod.s)
> * [__task_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/task_mod.s)
> * [__print_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/print_mod.s)

### 4. _Тестирование:_
> [__Ссылка__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Tests.md) <br/>
> __По результатам трёх тестов сравнения программ на Ассемблере и Модифицированном Ассемблере можно легко заметить, что программы отработали идетично и без ошибок, поэтому делаем вывод, что модификация программы проведена успешно.__


---- 
<br/>


# Отчёт 5 баллов:
### 1. _Решение на Cи с передачей данных в функции через параметры + локальные переменные:_
__В программе присутствуют две функции: task(*A[], length, *B[]) и print_arr(*B[], length) с соответствующими параметрами. Используются локальные переменные.__
> * [__main.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/main.c)
> * [__task.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/task.c)
> * [__print.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/print.c)

<br/>

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
<br/>

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

<br/>

### 2. Тестирование:
> [__Ссылка__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Tests.md) <br/>
> По результатам нескольких тестов сравнения программ на ассемблере и модифицированном ассемблере с регистрами можно легко заметить, что программы отработали идетично и без ошибок, поэтому делаем вывод, что эквивалентная замена переменных на регистры в программе была проведена успешно.

---- 
<br/>


# 7 баллов:
### 1. _Решение на Cи с тремя единицами компиляции + использование аргументов коммандной строки для работы с файлами (ввод значения length для чтения элементов из input.txt):_ <br/>
Три единиицы компиляции: main.c, task.c, print.c:
> * [__main.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/main.c) <br/>
> * [__task.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/task.c) <br/>
> * [__print.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/print.c) <br/>

<br/>

### 2. _Решение на ассемблере с тремя единицами компиляции + использование аргументов коммандной строки для работы с файлами (ввод значения length для чтения элементов из input.txt):_ <br/>
__Использование аргументов командной строки:__
>   __При вызове файла запуска с одним аргументов, он будет считаться длиной массива. Именно столько чисел будет прочитано в формате %d из файла input.txt и будет выведен результат в output.txt. Подразумевается, что файлы находятся в одной папке с файлом запуска. Пример работы: "./result.exe 5" => 5 = length и из input.txt будет прочитано 5 цифр в формате %d.__

Три единиицы компиляции: main_mod.s, task_mod.s, print_mod.s:
> * [__main_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/main_mod.s) <br/>
> * [__task_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/task_mod.s) <br/>
> * [__print_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/print_mod.s) <br/>

<br/>

### 3. _Текстовые файлы:_
> * [__input.txt__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/input.txt)
> * [__output.txt__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/output.txt)

---- 
<br/>

# Отчёт 8 баллов:
### 1. _Решение на Cи c генератором случайного набора данных + интерфейс для расширения анализа командной строки:_
> * [__main.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/main.c) <br/>
> * [__task.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/task.c) <br/>
> * [__print.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files/print.c) <br/>

<br/>

### 2. _Модифицированное решение на ассемблере c генератором случайного набора данных + интерфейс для расширения анализа командной строки:_
> * [__main_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/main_mod.s) <br/>
> * [__task_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/task_mod.s) <br/>
> * [__print_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_mod/print_mod.s) <br/>

<br/>

### 3. _Решение на Cи c таймером и циклом на 10млн итераций:_
> * [__main_timer.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files_timer/main_timer.c)
> * [__task_timer.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files_timer/task_timer.c)
> * [__print_timer.c__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/C%20Files_timer/print_timer.c)

<br/>

### 4. _Модифицированное решение на ассемблере c таймером и циклом на 10млн итераций:_
> * [__main_timer_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_timer/main_timer_mod.s)
> * [__task_timer_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_timer/task_timer_mod.s)
> * [__print_timer_mod.s__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Assembler_timer/print_timer_mod.s)

<br/>

### 5. _Тестирование:_
> * [__Ссылка__](https://github.com/ArtemFed/Computer-Architecture-HW1/blob/main/Tests.md)

---- 
<br/>

# 9 баллов
> Первый тест: размер 100, 10млн итераций function. <br/>
> Второй тест: размер 100, 10млн итераций function. <br/>
> Третий тест: размер  50, 10млн итераций function. <br/>

| Тип программы  | Время работы первого теста  | Время работы второго теста  | Время работы третьего теста  | Размер исполняемого файла | Суммарное количество строк | 
| :---: | :---: | :---: | :---: | :---: | :---: | 
| [Программа на C с замером времени]()  | 4774мс  | 4415мс  | 2094мс  | 17KiB  | 96 строк  | 
| [Программа на ассемблере без модификаций с замером времени]()  | 3776мс  | 3833мс  | 1735мс  | 16,9KiB  | 623 строк  | 
| [Программа на ассемблере с модификациями с замером времени]()  | 1752мс  | 1766мс  | 1005мс  | 16,8KiB  | 580 строк  | 
