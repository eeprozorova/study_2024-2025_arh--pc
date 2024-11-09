---
## Front matter
title: "Лабораторная работа №5"
subtitle: "Основы работы с Midnight Commander (mc). Структура программы на языке ассемблера NASM. Системные вызовы в ОС GNU Linux"
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

Приобретение практических навыков работы в Midnight Commander. Освоение инструкций
языка ассемблера mov и int.

# Выполнение лабораторной работы

1. С помощью команды mc  открыла Midnight Commande

![Midnight Commande](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 17-23-43.png){#fig:001 width=70%}

2. Пользуясь клавиатурой и функциональной клавишей F7 создала папку lab05 и перешла в созданный каталог.

![Создание папки lab05](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 17-49-56.png){#fig:002 width=70%}

3. Пользуясь строкой ввода и командой touch создала файл lab5-1.asm

![Команда touch](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 17-55-15.png){#fig:003 width=70%}

4. С помощью функциональной клавиши F4 я открыла файл ab5-1.asm в редакторе mcedit и ввела текст программы из листинга 5.1.

![Текст программы в файле ab5-1.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-10-24 18-09-50.png){#fig:004 width=70%}

5. С помощью функциональной клавиши F3 я проверила содержание текста в файле.

![Проверка файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 18-01-38.png){#fig:005 width=70%}

6. Затем я оттранслировала текст программы lab5-1.asm в объектный файл, выполните компоновку объектного файла и запустила получившийся исполняемый файл. На запрос строки ввела свое ФИО.

![Запуск программы, ввод моего ФИО](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 16-48-14.png){#fig:006 width=70%}

7. Я скачала файл in_out.asm со страницы курса в ТУИС и переместила его в каталог ~/work/arch-pc с файлом lab5-1.asm.

![Файл in_out.asm в одном каталоге с файлом lab5-1.asm.](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 18-16-12.png){#fig:007 width=70%}

8. С помощью функциональной клавиши F6 создала копию файла ab5-1.asm с именем lab5-2.asm.

![Создание файла lab5-2.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 16-51-31.png){#fig:008 width=70%}

9. Исправила текста программы в файле с использование подпрограмм из внешнего файла in_out.asm в соответствии с листингом 5.2.

![Текст измененной прогаммы в файле lab5-2.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-10-24 18-40-19.png){#fig:009 width=70%}

10. Проверка программы из файла lab5-2.asm

![Проверка работы программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 17-03-09.png){#fig:010 width=70%}

11. Теперь в файле lab5-2.asm заменила подпрограмму sprintLF на sprint. Проверила что изменилось.

![Проверка работы измененной программы](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 18-26-45.png){#fig:011 width=70%}

Теперь строка запрашивает ввод на одной строке со строчкой "Введите строку:".

# Выполнение самостоятельной работы

1. Создала копию файла lab5-1.asm с именем lab5-3.asm. Изменила текст программы так, работала по по следующему алгоритму:
• вывести приглашение типа “Введите строку:”;
• ввести строку с клавиатуры;
• вывести введённую строку на экран.

Для этого я добавила еще один системный вызов write после read, который выведет введенною строку на экран.

![Программа в файле lab5-3.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 17-23-43.png){#fig:012 width=70%}

2. Проверила исполняемый файл, ввела свою фамилию.

![Проверка работы программы lab5-3.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 17-25-01.png){#fig:013 width=70%}

3. Создала копию файла lab5-2.asm с именем lab5-4.asm. Исправила текст программы с использование подпрограмм из внешнего файла in_out.asm, так чтобы она работала по следующему алгоритму:
• вывести приглашение типа “Введите строку:”;
• ввести строку с клавиатуры;
• вывести введённую строку на экран

![Текст изменной программы lab5-4.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 18-40-01.png){#fig:014 width=70%}

4. Проверила исполняемый файл, ввела свою фамилию.

![Проверка работы программы lab5-4.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2024-11-08 17-38-22.png){#fig:015 width=70%}

# Выводы

В ходе выполнения лабораторной работы я приобрела практические навыки работы в Midnight Commander и изучила инструкций языка ассемблера mov и int.

