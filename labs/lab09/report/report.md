---
## Front matter
title: "Лабораторная работа №9"
subtitle: "Понятие подпрограммы.Отладчик GDB."
author: "Прозорова Елизавета Евгеньевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ с использованием подпрограмм. Знакомство с методами отладки при помощи GDB и его основными возможностями

# Выполнение лабораторной работы

1.Сначала я создала каталог для программам лабораторной работы № 9, затем перешла в него и
создала файл lab9-1.asm

![Создание каталога и файла lab9-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 10-36-51.png){#fig:001 width=70%}

2. Я ввела в файл lab09-1.asm текст программы из листинга 9.1. 

![Текст программы lab09-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-05 11-04-19.png){#fig:002 width=70%}

Я создала исполняемый файл и запустила его. Для x я выбрала числа 2 и 9.

![Создание и запуск lab09-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 10-52-45.png){#fig:003 width=70%}

Я изменила текст программы, добавив подпрограмму _subcalcul в подпрограмму _calcul,для вычисления выражения f(g(x)).

![Изменения текста](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-05-35.png){#fig:004 width=70%}

Затем я создала и проверила измененный файл. 

![Создание и запуск lab09-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-19-42.png){#fig:005 width=70%}

2. Я создала файл lab09-2.asm в каталоге ~/work/arch-pc/lab09 и ввела в него текст программы из листинга 9.2.

![Текст программы lab09-2.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-11-25.png){#fig:006 width=70%}

Затем я создала измененный файл  ключом ‘-g’.

![Получение исполняемого файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/7.jpg){#fig:007 width=70%}

Я загрузила исполняемый файл в отладчик gdb:

![Отладчик gbd](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/8.jpg){#fig:008 width=70%}

Затем я проверила работу программы, запустив ее в оболочке GDB с помощью команды run

![Проверка работы программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/9.jpg){#fig:009 width=70%}

Для более подробного анализа программы установила брейкпоинт на метку _start, с которой начинается выполнение любой ассемблерной программы, и запустила её.

![Утановка брейкпоинта](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-15-12.png){#fig:010 width=70%}

Затем я посмотрела дисассимилированный код программы

![Команда disassemble](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-15-58.png){#fig:011 width=70%}

Затем я переключилась на отображение команд с Intel’овским синтаксисом

![Intel’овский синтаксис](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-17-45.png){#fig:012 width=70%}

Различия отображения синтаксиса машинных команд в режимах ATT и Intel: 

1) Порядок операндов
ATT: источник - назначение (напр. movl %ebx, %eax).
Intel: назначение - источник (напр. MOV EAX, EBX).

2) Регистры
ATT: С префиксом % (напр. %eax).
Intel: Без префикса (напр. EAX).

3) Размеры операндов
ATT: Указывается суффикс (b, w, l, q для 1, 2, 4, 8 байт).
Intel: Используются указатели (BYTE PTR, DWORD PTR и т.д.).

4) Память
ATT: Круглые скобки для указания адреса (напр. 4(%ebx)).
Intel: Квадратные скобки (напр. [EBX+4]).

Я включила режим псевдографики для более удобного анализа программы

![Команда layout asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-18-31.png){#fig:013 width=70%}

![Команда layout regs](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-19-05.png){#fig:014 width=70%}

3. Так как на предыдущих шагах была установлена точка останова по имени метки (_start), я проверю это с помощью команды info breakpoints.

![Команда info breakpoints.](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-20-00.png){#fig:015 width=70%}

Теперь установим точку остановк на адресе предпоследней  инструкции (mov ebx,0x0).

![Установка точки](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-22-51.png){#fig:016 width=70%}

Посмотрим информацию о всех установленных точках останова.

![Команда i b](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-22-51.png){#fig:017 width=70%}

4. Я посмотрела содержимое регистров также можно с помощью команды info registers

![Команда info registers](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-25-09.png){#fig:018 width=70%}

Затем я посмотрела значение переменной msg1 по имени.

![Значение переменной msg1 по имени](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-28-44.png){#fig:019 width=70%}

я посмотрела значение переменной msg2 по адресу.

![Значение переменной msg2 по адресу](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-25-09.png){#fig:020 width=70%}

Изменила первый символ переменной msg1. Теперь первая буква Hello стала маленькой.

![Команда изменения значение для регистра msg1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-40-46.png){#fig:021 width=70%}

Теперь заменю первый и второй символы переменной msg2 на P и a соответственно.

![Команда изменения значение для регистра msg2](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-45-32.png){#fig:022 width=70%}

С помощью команды print вывела в различный форматах значение регистра edx.

![регистр edx в различный форматах](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-50-08.png){#fig:023 width=70%}

С помощью команды set изменила значение регистра ebx

![Команда set](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-53-30.png){#fig:024 width=70%}

Разница выводов команд p/s $ebx: В первом случае регистор хранит ASCII-код символа и gdb пытается интерепретировать его как строку. Во втором случае $ebx хранит число и gdb пытается интерпретировать его как адрес, что выводит ошибку

Затем я завершила выволнение програмы и вышла из GDB.

![Завершение выволнения програмы и выход из GDB.](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-54-00.png){#fig:025 width=70%}

5. Я скопировала файл lab8-2.asm в файл с именем lab09-3.asm

![Копирование файла lab8-2.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 11-56-34.png){#fig:026 width=70%}

Я создала исполняемый файл.

![Создания исполняемого файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 13-46-58.png){#fig:027 width=70%}

Загрузила исполняемый файл в отладчик, указав аргументы ргумент1 аргумент 2 'аргумент 3

![загрузка в gdb программы с аргументами](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 13-47-24.png){#fig:028 width=70%}

Установила точку останова перед первой инструкцией в программе и запустила ее.

![Установка точки останова](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 13-47-45.png){#fig:029 width=70%}

Я вывела адрес вершины стека

![Вывод адрес вершины стека](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 13-46-58.png){#fig:030 width=70%}

Затем я посмотрела остальные позиции стека

![Позиции стека](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 13-48-24.png){#fig:031 width=70%}

Шаг изменения адреса равен 4, потому что в 32-битной архитектуре размер слова — 4 байта, стек выравнивается по 4 байта, и каждый параметр или локальная переменная занимает 4 байта.

# Выполнение самостоятельной работы

1. Я скопировала программу из лабораторной работы №8, и назвала lab09-4.asm

![Копирование программы из лабораторной работы №8](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 13-56-03.png){#fig:032 width=70%}

Затем я изменила эту программу, реализовав вычисление значения функции 𝑓(𝑥) как подпрограмму.

![Измененный текст программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-35-47.png){#fig:033 width=70%}

Затем я создала и проверила измененный файл. 

![Проверка программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-36-04.png){#fig:034 width=70%}

2. Я создала файл lab09-5.asm в который написала программу из листинга 9.3. с программа вычисления выражения (3+2)*4+5

![Текст программы из листинга 9.3.](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-38-22.png){#fig:035 width=70%}

Я создала и проверила файл. Ответ неверный.

![Проверка программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-39-36.png){#fig:036 width=70%}

Затем я открыла этот файл в GDB.

![Файл lab09-5 в GDB](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-40-30.png){#fig:037 width=70%}

Для более подробного анализа программы я установила брейкпоинт на метку _start.

![Установка брейкпоинта](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-42-08.png){#fig:038 width=70%}

Затем я посмортела дисассимилированный код программы, и переключилась на отображение команд с Intel’овским синтаксисом

![Дисассимилированный код программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-43-13.png){#fig:039 width=70%}

![Отображение команд с Intel’овским синтаксисом](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-43-21.png){#fig:040 width=70%}

Включила режим псевдографики для более удобного анализа программы

![Режим псевдографики](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-56-07.png){#fig:041 width=70%}

Затем я подробно изучила все строки программы, и нашла ошибку, в определенном месте значения не соответсветсвовали своим регистрам. Я исправила ошибку, поменяв их местами.

![Измененнй текст программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-58-23.png){#fig:042 width=70%}

Я создала и проверила измененный файл. Ответ теперь верный.

![Проверка программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/report/image/Снимок экрана от 2024-12-04 14-59-18.png){#fig:043 width=70%}

# Выводы

В ходе лабораторной работы мной были приобретены навыки написания программ с использованием подпрограмм. Я также изучила метод отладки при помощи GDB и его основными возможностями.
