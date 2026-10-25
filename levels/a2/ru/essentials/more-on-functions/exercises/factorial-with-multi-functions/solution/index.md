---
title: 'Решение: Факториал с мульти-функциями'
---

{% include menu.html %}

Это упражнение снова о факториалах. На этой задаче мы можем показать больше возможностей Raku.

Чтобы найти факториал, можно начать с данного числа. Потом мы идём вниз. Мы должны остановиться, когда число равно 1. Multi-функции умеют это делать. Поместите случай `$n == 1` в отдельную multi-функцию.

## Код

Вот решение:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Найдите программу в файле [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Вывод

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Комментарий

Обратите внимание: программа превращает входной аргумент в целое число. Она делает это с помощью `@*ARGS[0].Int`. Без этого при вводе `1` получается бесконечный цикл. Вот почему. Тогда функция `factorial` получает значение [`IntStr`](/ru/essentials/typed-variables/allomorphs). Поэтому Raku не может использовать первый вариант multi-функции. Рекурсивный вызов `factorial(2 - 1)` — другое дело. Там аргумент — целое число. Поэтому Raku может вызвать первый вариант.

{% include nav.html %}
