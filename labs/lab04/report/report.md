---
## Front matter
title: "Лабораторная работа №4"
subtitle: "Создание и процесс обработки программ на языке ассемблера NASM"
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

Освоить процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Выполнение лабораторной работы

1. Я создала каталог для работы с программами на языке ассемблера NASM. Затем я перешла в созданный каталог и создала текстовый файл с именем hello.asm, который открыла с помощью текстового редактора gedit.

![Создание каталога](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5244570121626836496.jpg){#fig:001 width=70%}

Затем я перешла в созданный каталог и создала текстовый файл с именем hello.asm.

![Создание hello.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5244570121626836498.jpg){#fig:002 width=70%}

Я открыла этот файл с помощью текстового редактора gedi

![Команда gedit](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5244570121626836499.jpg){#fig:003 width=70%}

Затем я ввела в него текст

![Текст](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-17 10-57-34.png){#fig:004 width=70%}

2. Я написала команду для компиляции приведённого выше текста программы «Hello World»

![Команда nasm и проверка результата](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-17 10-57-06.png){#fig:005 width=70%}

3.  Я выполнила команду,которая скомпилировала исходный файл hello.asm в obj.o, и проверяю результат.

![Компиляция и проверка исходного файла в obj.o](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-17 10-57-57.png){#fig:006 width=70%}

4. Передала объектный файл на обработку компоновщику, проверила, что исполняемый файл hello был создан

![Передача файла компоновщику](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5246890550722947233.jpg){#fig:007 width=70%}

Задала имя создаваемому исполняемого файла.

![Имя создаваемого файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5246890550722947236.jpg){#fig:008 width=70%}

4. Я запустила созданный исполняемый файл

![Запуск файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-17 10-59-41.png){#fig:009 width=70%}

# Выполнение самостоятельной работы

1. В каталоге ~/work/arch-pc/lab04 с помощью команды cp я создала копию файла
hello.asm с именем lab4.asm

![Копия файла hello.asm с именем lab4.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-17 11-06-02.png){#fig:010 width=70%}

2. С помощью текстового редактора gedit я внесла изменения в текст программы в файле lab4.asm так, чтобы вместо Hello world! на экран выводилась строка с моими фамилией и именем

![Открытие gedit](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-17 11-17-33.png){#fig:011 width=70%}

![Изменение файла lab4.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-24 17-06-29.png){#fig:013 width=70%}

3. Я перешла в каталог и начала компиляцию текста программы

![Компиляция программы, файла в obj.o](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-17 11-17-51.png){#fig:014 width=70%}

Затем я передала объектный файл на обработку компоновщику, задала имя создаваемому файлу

![Передача файла компоновщику](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5246890550722947288.jpg){#fig:015 width=70%}

Я запустила получившийся файл

![Запуск файла](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5246890550722947289.jpg){#fig:016 width=70%}

4. Я скопировала файлы hello.asm и lab4.asm в локальный репозиторий в ката-
лог ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04/ и загрузила файлы на Github.

![Загрузка файлов на Github](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-24 16-37-34.png){#fig:017 width=70%}

# Выводы

Я приобрела навык компиляции и сборки программ, написанных на ассемблере NASM.

