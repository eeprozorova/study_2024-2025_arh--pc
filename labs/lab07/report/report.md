---
## Front matter
title: "Лабораторная работа №7"
subtitle: "Команды безусловного и условного переходов в Nasm. Программирование ветвлений"
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

Изучение команд условного и безусловного переходов. Приобретение навыков написания программ с использованием переходов. Знакомство с назначением и структурой файла листинга.

# Выполнение лабораторной работы

1.Сначала я создала каталог для программам лабораторной работы № 7, затем перешла в него и
создала файл lab7-1.asm

![Создание каталога и файла lab7-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 10-46-27.png){#fig:001 width=70%}

2. Я ввела в файл lab7-1.asm текст программы из листинга 7.1. 

![Текст программы lab7-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 10-48-30.png){#fig:002 width=70%}

Я создала исполняемый файл и запустила его

![Создание и запуск lab7-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 10-51-42.png){#fig:003 width=70%}

Я изменила программу таким образом, чтобы она выводила сначала ‘Сообщение № 2’, потом ‘Сообщение
№ 1’ и завершала работу в соответствии с листингом 7.2.

![Изменения текста](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 10-53-21.png){#fig:004 width=70%}

Затем я создала и проверила измененный файл.

![Создание и запуск lab7-1](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 10-54-15.png){#fig:005 width=70%}

Теперь изменим текст программы изменив инструкции jmp, чтобы при выводе программы была такая последовательность сообщений: №3, №2, №1ю

![Измененный текст программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-00-29.png){#fig:006 width=70%}

Затем я создала и проверила измененный файл.

![Проверка программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-00-44.png){#fig:007 width=70%}

3. Я создала файл lab7-2.asm в каталоге ~/work/arch-pc/lab07 и ввела в него текст программы из листинга 7.3.

![Создание lab7-2](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-02-11.png){#fig:008 width=70%}

![Текст программы lab7-2.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-06-09.png){#fig:009 width=70%}

Затем я создала и проверила работу файла для 1, 100, 49.

![Проверка работы файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-08-17.png){#fig:010 width=70%}

4. Создала файл листинга для программы из файла lab7-2.as

![Создание файла листинга](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-09-04.png){#fig:011 width=70%}

Затем я открыла файл с помощью mcedit.

![Текст файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-09-19.png){#fig:012 width=70%}

Я подробно изучила содержимое файла и выбрала следующие строки для обьяснения.

1) ![14 строка](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-21 12-44-10.png){#fig:013 width=70%}

Эта строка находится на 14 месте, 000000E8 - ее адрес, B8[00000000] - машинный код. mov eax,msg1 - это исходный текст программы, означающий что в регистор eax вносится значение msg1, в нашем случае это строка со словами "Введите B:" 

2) ![29 строка](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-21 12-44-27.png){#fig:014 width=70%}

Эта строка находится на 29 месте, 00000122 - ее адрес, 7F0C - машинный код. jg check_B  - это исходный текст программы, означающий что нужно сделать переход на строку check-B если первое число больше второго. Сравнение и определение этих чисел происходят в предыдущих командах.

3)![39 строка](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-21 12-44-35.png){#fig:015 width=70%}

Эта строка находится на 39 месте, 00000145 - ее адрес, 3B0D[0A000000] - машинный код. cmp ecx,[B]  - это исходный текст программы, означающий что происходит сравнение регистра ecx с значением В.



Затем я снова открыла с программой lab7-2.asm и удалила один операнд в инструкции с двумя операндами.

![Строка в которой я удалила операнд](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-18-36.png){#fig:016 width=70%}

Затем я выплнила трасляцию с получением файла листинга. В файле произошли изменения, которые указывали что на строке с удаленным операндом присутсвует ошибка.

![Строка в которой я удалила операнд](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-20-04.png){#fig:017 width=70%}

# Выполнение самостоятельной работы

1. Я создала файл var-1, в котором написала программу нахождения наименьшей из 3 целочисленных переменных 𝑎,𝑏 и _c_. В моей программе значения переменных вводятся вручную с клавиатуры. Мой вариант - 8.

![Текст программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-49-39.png){#fig:018 width=70%}

Затем я проверила работу команды. Мой вариант - 8, поэтому я ввела значения 52,33,40.

![Проверка работы программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 11-49-51.png){#fig:019 width=70%}

2. Я создала файл var8-2, в который написала программу, которая для введенных с клавиатуры значений 𝑥 и 𝑎 вычисляет значение заданной функции 𝑓(𝑥) и выводит результат вычислений.

![Функция для моего варианта](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-21 16-37-55.png){#fig:021 width=70%}

![Текст программы для моей функции](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 16-25-57.png){#fig:022 width=70%}

Затем я создала и проверила работу файла. Ввела такие значения (𝑥1,𝑎1 )=(1;4), (𝑥2,𝑎2)=(1;2)

![Проверка работы файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/report/image/Снимок экрана от 2024-11-20 16-25-31.png){#fig:023 width=70%}

# Выводы

В ходе лабораторной работы мной были изучены команды условного и безусловного переходов, навыки написания программ с их использованием. А также я познакомилась с назначением и структурой файла
листинга.

