---
## Front matter
title: "Лабораторная работа №6"
subtitle: "Арифметические операции в NASM"
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

Освоение арифметических инструкций языка ассемблера NASM

# Выполнение лабораторной работы

1.Сначала я создала каталог для программам лабораторной работы № 6, затем перешла в него и
создала файл lab6-1.asm

![Создание каталога и файла lab6-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-09-28.png){#fig:001 width=70%}

2. Я ввела в файл lab6-1.asm текст программы из листинга 6.1. 

![Текст программы lab6-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-10-37.png){#fig:002 width=70%}

Я создала исполняемый файл и запустила его

![Создание и запуск lab6-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-13-14.png){#fig:003 width=70%}

3. Я изменила текст программы и вместо символов, запишем в регистры числа

![Изменения текста в файле](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-15-22.png){#fig:004 width=70%}

Затем я создала и проверила измененный файл.

![Создание и запуск lab6-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-16-27.png){#fig:005 width=70%}

Коду 10 в таблице соответствует символ LF, при выводе на экран этот сивол не отображается.

4. Я создала файл lab6-2.asm в каталоге ~/work/arch-pc/lab06 и ввела в него текст программы из листинга 6.2.

![Текст файла lab6-2](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-17-59.png){#fig:006 width=70%}

Затем я создала и проверила измененный файл.

![Создание и запуск lab6-2](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-18-50.png){#fig:007 width=70%}

5. Аналогично предыдущему пункту изменила символы на числа.

![Изменения в тексте программы lab6-2](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-19-22.png){#fig:008 width=70%}

Затем я создала и проверила измененный файл.

![Создание и запуск lab6-2](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-19-46.png){#fig:009 width=70%}

В результате было получено число 10.

Затем я заменила функцию iprintLF на iprint. Создала исполняемый файл и запустила его

![Замена функции iprintLF на iprint](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-20-06.png){#fig:010 width=70%}

![Создание и запуск lab6-2](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-20-29.png){#fig:011 width=70%}

Вывод функций iprintLF и iprint отличается тем что, inprint не добавляет перенос курсора на новую строку

6. Я создала файл lab6-3.asm в каталоге ~/work/arch-pc/lab06. Ввела текст программы из листинга 6.3 в lab6-3.asm

![Текст программы lab6-3](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-23-27.png){#fig:012 width=70%}

Затем я создала и проверила измененный файл.

![Создание и запуск lab6-3](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-23-27.png){#fig:013 width=70%}

Я изменила текст программы для вычисления выражения 𝑓(𝑥)=(4∗6+2)/5

![Изменения текста lab6-3](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-27-17.png){#fig:014 width=70%}

Создала и проверила измененный файл.

![Создание и запуск lab6-3](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-28-09.png){#fig:015 width=70%}

7. Я создайте файл variant.asm в каталоге ~/work/arch-pc/lab06, в который ввела текст программы из листинга 6.4.

![Текст программы variant.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-30-04.png){#fig:016 width=70%}

![Создание и запуск variant.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-13 11-32-44.png){#fig:017 width=70%}

Мой вариант - 8.

# Ответы на вопросы 

1) mov eax, msg
call sprintLF

2) mov ecx, x - устанавливает значение x в регистр eax
mov edx, 80 - команда устанавливает значение 80, длину вводимой строки

3) call atoi преобразует строку символов в целое число.

4) xor edx,edx
mov ebx,20
div ebx
inc edx

5) ebx

6) inc - прибавление 1 к операнду

7) mov eax,rem
call sprint
mov eax,edx
call iprintLF

# Выполнение самостоятельной работы

Я написала программу вычисления выражения 𝑦=𝑓(𝑥), в моем варианте 𝑓(𝑥)=(11+𝑥)⋅2−6. Файл с текстом программы я назвала var8.asm

![Готовая программа для варинта 8](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-14 11-22-44.png){#fig:018 width=70%}

Затем я несколько раз проверила исправность работы программы и исправила ошибки.

![Создание и запуск var8](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/report/image/Снимок экрана от 2024-11-14 11-22-58.png){#fig:019 width=70%}

# Выводы

В ходе лабораторной работы были изучены арифметические инструкций языка ассемблера NASM.

