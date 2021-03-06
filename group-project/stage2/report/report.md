---
# Front matter
lang: ru-RU
title: "Колебания цепочек"

author:  
- Гебриал Ибрам Есам Зекри НПИ-01-18

- Каримов Зуфар Исматович НПИ-01-18

- Волков Тимофей Евгеньевич НПИ-01-18

- Гаджиев Нурсултан Тофик оглы НПИ-01-18





# Formatting
toc-title: "Содержание"
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---


# Цель работы

Рассмотрение алгоритма задачи математического маятника.

# Введение

Гармонический осциллятор, к изучению которого мы сейчас перейдем, будет встречаться нам почти всюду; хотя мы начнем с чисто механических примеров грузика на пружинке, малых отклонений маятника или каких-то других механических устройств, на самом деле мы будем изучать некое дифференциальное уравнение. Это уравнение непрестанно встречается в физике и в других науках и фактически описывает столь многие явления, что стоит того, чтобы изучить его получше. Такое уравнение описывает колебания грузика на пружинке, колебания заряда, текущего взад и вперед по электрической цепи, колебания камертона, порождающие звуковые волны, аналогичные колебания электронов в атоме, порождающие световые волны. Мы привели неполный список явлений, которые описы¬ваются почти теми же уравнениями, что и механический осциллятор. Эти уравнения называются линейными дифференциальными уравнениями с постоянными коэффициентами. 


# Математический маятник

Рассмотрим математический маятник: небольшой1 грузик массы m на нерастяжимой невесомой нити длины l. Пусть этот маятник совершает малые колебания вблизи положения равновесия и в некоторый момент времени нить маятника составляет угол $\alpha$ с вертикалью (рис. -@fig:001). Трение, включая сопротивление среды, в системе отсутствует. Учитывая, что сила натяжения нити всегда перпендикулярна скорости движения маятника и поэтому не совершает работу, запишем для данной колебательной системы закон сохранения энергии:

![Рисунок 1. Математический маятник. ](image/1.png){ #fig:001 width=30% }

$\frac{mv^2}{2}$ + mgl(1-cos$\alpha$)=$E_{0}, (1)$

где ноль потенциальной энергии принят в положении равновесия. Воспользовавшись условием, что колебания происходят с малой амплитудой (т. е. угол $\alpha$ мал), используем приближение cos $\alpha$ = 1 - $\frac{\alpha^2}{2}$ . 
Скорость движения грузика v = $\omega$ l = $\alpha$l, где  $\omega$ — мгновенная угловая скорость вращения. Тогда уравнение (1) принимает вид

$\frac{ml^2 \alpha'}{2}$ +  $\frac{mgl \alpha}{2}$ =$E_{0}$, или $\alpha'^2$ + $\frac{g}{l}$ * $\alpha^2$ = $\frac{2 E_{0}}{ml^2}$

После дифференцирования имеем

$\alpha''$ +  $\frac{g}{l}$ * $\alpha$ = 0

или, вводя обозначение $\omega_{0}^2$ = $\frac{g}{l}$, получаем 

$\alpha''$ +  $\omega_{0}^2$ * $\alpha$ = 0 (2)

аналогичное уравнению 

x'' +  $\omega_{0}^2$x = 0

Период колебаний такого маятника:          

T=$\frac{2 \pi}{\omega_{0}}$= 2 $\pi$ $\sqrt{\frac{1}{g}}$

Рассмотрим математический маятник длины l и массы m, совершающий малые колебания вблизи положения равновесия и испытывающий со стороны окружающей среды воздействие силы трения, величина которой пропорциональна скорости грузика маятника (коэффициент пропорциональности $\beta$ ). Запишем для грузика маятника второй закон Ньютона в проекции на ось x (рис. -@fig:002):

![Рисунок 2. Математический маятник. ](image/2.png){ #fig:002 width=30% }

m*v'' = - $\beta$ v - mg sin $\alpha$

учитывая, что v=l$\alpha'$ , а колебания малые, получаем 

$\alpha$'' + $\frac{\beta}{m}$ * $\alpha$' + g * l * $\alpha$ = 0

или вводя обозначения $\delta$ = $\frac{\beta}{2m}$ и $\omega_{0}^2$ = $\frac{g}{l}$, находим $\alpha$'' + 2$\delta$ $\alpha''$ + $\omega_{0}^2$ = 0 (3)

В обоих приведенных примерах мы пришли к уравнению свободных затухающих гармонических колебаний: 

X'' + 2 $\delta$ x' + $\omega_{0}$ x =0. (4)

В зависимости от соотношения между $\delta$  и $\omega_{0}$ уравнение (4) будет иметь различные решения:

a) При $\omega_{0}$ > $\delta^2$ решение уравнения (4) имеет вид 

x(t) = $x_{0}$ $e^{-\delta t}$ cos($\omega$ t +$\varphi$), $\omega$ = $\sqrt{\omega_{0}^2-\delta^2}$ (5)

где величины $x_{0}$ — амплитуда колебаний и  $\varphi$ — начальная фаза колебаний определяются из начальных условий. График таких затухающих колебаний, а также изображение на фазовой плоскости приведены (рис. -@fig:003):
Для характеристики того, насколько быстро происходит затухание колебаний, вводят характерное время затухания T= $\frac{1}{\delta}$ , представляющее собой время, за которое амплитуда колебаний уменьшится в e раз.

![Рис 3 и 4. Зависимость координаты x от времени t и фазовая диаграмма затухающих колебаний ](image/3.png){ #fig:003 width=70% }

б) При $\omega_{0}^2$ < $\delta^2$ решение уравнения (4) имеет вид 

x(t) = $x_{01}$ $e^{-\delta t}$ $e^{\sqrt{(\delta^2-\omega_{0}^2)} t}$ + $x_{02}$ $e^{-\delta t}$ $e^{\sqrt{(\delta^2-\omega_{0}^2)} t}$ (6)

в) При $\omega_{0}^2$ = $\delta^2$ решение уравнения (4) имеет вид

Величины $x_{01}$ и $x_{02}$ также определяются из начальных условий

x(t) = $x_{01}$ $e^{-\delta t}$ + $x_{02}$t $e^{-\delta t}$ (7)
Зависимости (6) и (7) носят апериодический характер и не являются колебаниями. Графики этих зависимостей приведены (рис. -@fig:004). Дальше мы будем рассматривать только случай $\omega_{0}^2$ > $\delta^2$

![Рис 5 и 6. Пример осциллограмм в случае большого трения ](image/4.png){ #fig:004 width=70% }




# Выводы

Рассмотрели алгоритм задачи математического маятника.
