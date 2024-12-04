---
## Front matter
title: "Лабораторная работа №8"
subtitle: "Программирование цикла. Обработка аргументов командной строки."
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

Приобретение навыков написания программ с использованием циклов и обработкой аргументов командной строки.

# Выполнение лабораторной работы

1.Сначала я создала каталог для программам лабораторной работы № 8, затем перешла в него и
создала файл lab8-1.asm

![Создание каталога и файла lab8-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-02-21.png){#fig:001 width=70%}

2. Я ввела в файл lab8-1.asm текст программы из листинга 8.1. 

![Текст программы lab8-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-03-58.png){#fig:002 width=70%}

Я создала исполняемый файл и запустила его. Для N я выбрала число 5.

![Создание и запуск lab8-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-07-11.png){#fig:003 width=70%}

Я изменила программу таким образом, добавив изменение значение регистра ecx в цикле.

![Изменения текста](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-20-23.png){#fig:004 width=70%}

Затем я создала и проверила измененный файл. Цикл закольцевался и стал беконечным.

![Создание и запуск lab8-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-13-10.png){#fig:005 width=70%}

Затем я нова изменила текст добавив команды push и pop для сохранения значения счетчика цикла loop

![Измененный текст программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-17-36.png){#fig:006 width=70%}

Затем я создала и проверила измененный файл. В этот раз число проходов соответствует N=5.

![Проверка программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-15-29.png){#fig:007 width=70%}

2. Я создала файл lab8-2.asm в каталоге ~/work/arch-pc/lab07 и ввела в него текст программы из листинга 8.2.

![Текст программы lab8-2.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-23-03.png){#fig:008 width=70%}

Затем я создала и проверила работу файла, указав аргументы так: аргумент1 аргумент 2 'аргумент 3'

![Проверка работы программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-24-26.png){#fig:009 width=70%}

Все 3 аргумента были обработаны по разному.

Я создала файл lab8-3.asm в каталоге ~/work/arch-pc/lab07 и ввела в него текст программы из листинга 8.3.

![Текст программы lab8-3.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 15-31-32.png){#fig:010 width=70%}

Затем я создала и проверила файл. Я указала приведенные в пример аргументы 12 13 7 01 5 и выбрала свои 47 9 23 11

![Проверка программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-28-28.png){#fig:011 width=70%}

Затем я изменила текст программы для вычисления произведения аргументов командной строки.

![Текст файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 15-30-21.png){#fig:012 width=70%}

Я создала и проверила измененный файл. Для проверки я выбрала следующие группы чисел: 1 2 3 4 и 8 10 11.

![Проверка программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 14-40-45.png){#fig:013 width=70%}

# Выполнение самостоятельной работы

Я создала файл var, в котором написала программу которая находит сумму значений функции f(x) для каких-то x. Мой вариант - 8, поэтому мой вид функции f(x)=7+2x.

![Текст моей программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 15-49-48.png){#fig:014 width=70%}

Теперь проверим как она работает. Для проверки я выбрала следующие значения: 1 2 и 3 7.

![Проверка работы программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/report/image/Снимок экрана от 2024-11-22 15-50-10.png){#fig:015 width=70%}

# Выводы

В ходе лабораторной работы мной были изучены навыков написания программ с использованием циклов и обработкой аргументов командной строки
