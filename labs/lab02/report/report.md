---
## Front matter
title: "ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №2"
subtitle: "Система контроля версий Git"
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

Изучить	идеологию	и	применение	средств	контроля	версий.	Приобрести практические навыки по работе с системой git.

# Выполнение лабораторной работы

1. Я создала учетную запись на github

![Моя учетная запись на Github](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/11.jpg){#fig:001 width=70%}

2. Сделала предварительную конфигурацию git. Для этого ввожу команды git config, указав свое имя и email.

![Ввод команды с моим именем](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/12.png){#fig:002 width=70%}

![Ввод команды с моей личной почтой, с которой я регистрировалась на Github](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/13.png){#fig:003 width=70%}

![Настройки utf-8 в выводе сообщений git](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/14.png){#fig:004 width=70%}

Теперь я задала имя начальной ветке и ввела параметры autocrlf и safecrlf

![Называем начальную ветку master](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/15.jpg){#fig:005 width=70%}

![Вводим параметр autocrlf](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/16.png){#fig:006 width=70%}

![Вводим параметр safecrlf](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/17.png){#fig:007 width=70%}

3. Для	последующей	идентификации	пользователя	на	сервере	репозиториев генерируем пару ключей (приватный и открытый)

![Готовый приватный SHH ключ](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/18.jpg){#fig:008 width=70%}

Теперь создадим и загрузим открытый ключ на сайт Github c помощью следующей команды cat

![Команда для копирования из локальной консоли ключа в буфер обмена](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/19.jpg){#fig:009 width=70%}

![Готовый открытый ключ на Github](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/20.jpg){#fig:010 width=70%}

4. Cоздала каталог для предмета«Архитектура компьютера»

![Каталог предмета «Архитектура компьютера»](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/21.jpg){#fig:011 width=70%}

5. На основе шаблона курса создала репозиторий и назвала его study_2024–2025_arh-pc

![Вид нашего созданного репозитория](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/22.jpg){#fig:012 width=70%}

Затем перешла в каталог курса, куда клоннировала созданный репозиторий

![Процесс клонирования репозитория](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/23.jpg){#fig:013 width=70%}

6. Теперь перейдем в каталог курса ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc и удалим лишние файлы

![Удаление package.json из каталога курса](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/24.jpg){#fig:014 width=70%}

Создаем необходимые каталоги и отправляем файлы на серверов.

![Создание неоходимых каталогов и дальнейшая отправка файлов на серверов](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/25.jpg){#fig:015 width=70%}

Теперь проверим правильность выполненных действий в локальном репозитории и на странице github.

![Иерархия рабочего пространства в локальном репозитории.](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/26.jpg){#fig:016 width=70%}

# Выполнение самостоятельной работы

1. Перешла в каталог labs>lab02>report и открыла текстовый редактор mcedit. В нем я и писала отчет по выполненной лабораторной работе

![Открытие текстового редактора mcedit в соответсвующем каталоге](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/27.jpg){#fig:017 width=70%}

![Текстовый редактор mcedit, в котором пишется отчет.](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/28.png){#fig:018 width=70%}

2. Скопировала отчет по выполнению предыдущей лабораторной работы №1 в соответствующий каталог lab01

![Копирование лабораторной работы №1 в соответсвующий каталог](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/29.png){#fig:019 width=70%}

3. Загрузила файлы на github.

![Загрузка файлов на github.](/afs/.dk.sci.pfu.edu.ru/home/e/e/eeprozorova/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab02/report/image/30.png){#fig:020 width=70%}

# Выводы

В результате выполнения лабораторной работы мы освоили и применили средства контроля версий, зарегистрировались на github и приобрели основные навыки работы с ним.


