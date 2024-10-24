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

![Создание hello.asm](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5244570121626836498.jpg){#fig:001 width=70%}

Я открыла этот файл с помощью текстового редактора gedi

![Команда gedit](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5244570121626836499.jpg){#fig:001 width=70%}

Затем я ввела в него текст

![Текст](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/5244570121626836499.jpg){#fig:001 width=70%}

2. Я написала команду для компиляции приведённого выше текста программы «Hello World»

![Команда nasm и проверка результата](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2024-10-17 10-57-06.png){#fig:001 width=70%}

3. 


# Выводы

Здесь кратко описываются итоги проделанной работы.

# Список литературы{.unnumbered}

::: {#refs}
:::
