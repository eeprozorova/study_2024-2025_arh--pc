---
## Front matter
title: "Лабораторная работа №3"
subtitle: "Язык разметки Markdown"
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
fontsize: 13pt
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

Освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown

# Выполнение лабораторной работы

1. Я обновила локальный репозиторий, скачав изменения из удаленного репозитория 

![Обновление репозитория](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Без имени.jpg){#fig:001 width=70%}

2. Провела компиляцию шаблона с использованием Makefile

[Компиляция, в результате которой сгегерировались report.pdf и report.docx](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/5211120525483564877.jpg){#fig:002 width=70%}

3. Затем я удалила полученный файлы.

![Удаление report.pdf и report.docx и проверка выполненной команды](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Снимок экрана от 2024-10-11 17-01-22.png){#fig:003 width=70%}

4. С помощью gedit открыла файл report.md и изучила его структуру

![Команда gedit](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Снимок экрана от 2024-10-12 10-35-29.png){#fig:001 width=70%}
![Report.md в gedit](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/gedit.jpg){#fig:004 width=70%}

5. Заполнила отчет с использованием Makefile.

![Отчет №3](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Снимок экрана от 2024-10-12 11-35-12.png){#fig:005 width=70%}

![Скриншоты выполнения лабораторной работы №3 в каталоге image](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Снимок экрана от 2024-10-12 11-40-31.png){#fig:006 width=70%}

6. Я перенесла файлы на github.

![Перенос файлов на github](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Снимок экрана от 2024-10-12 12-52-37.png){#fig:007 width=70%}

# Выполнение самостоятельной работы

1. В соответствующем каталоге  я сделала отчёт по лабораторной работе № 2 в формате Markdown.

![Скриншоты выполнения лабораторной работы №2 в каталоге image](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Снимок экрана от 2024-10-12 12-29-16.png){#fig:008 width=70%}

![Выполнение работы в report.md](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Снимок экрана от 2024-10-12 12-30-58.png){#fig:009 width=70%}

2. Создала отчеты в форматах pdf и docx

![Компиляция report.pdf и report.docx.](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Снимок экрана от 2024-10-12 11-48-26.png){#fig:010 width=70%}

3. Загрузила файлы на github

![Загрузка файлов на github](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/Снимок экрана от 2024-10-12 12-52-37.png){#fig:011 width=70%}

# Выводы

В результате выполненной лабораторной работы я освоила процедуру оформления отчетов с помощью легковесного языка разметки Markdown.

