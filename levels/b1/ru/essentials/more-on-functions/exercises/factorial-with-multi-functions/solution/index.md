---
title: 'Решение: Факториал с мульти-функциями'
---

{% include menu.html %}

Это упражнение снова о факториалах. На самом деле эта задача позволяет нам показать больше возможностей Raku.

Факториал можно вычислить, если начать с данного числа и идти вниз. В этом случае нужно остановиться, когда число дойдёт до 1. Multi-функции позволяют это сделать. Перенесите случай `$n == 1` в отдельную multi-функцию.

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

Обратите внимание, что программа преобразует входной аргумент в целое число: `@*ARGS[0].Int`. Это защищает от бесконечного цикла, когда входное число равно `1`. Без преобразования функция `factorial` получает значение типа [`IntStr`](/ru/essentials/typed-variables/allomorphs). Первый вариант multi-функции не может поймать такой вызов. Но в рекурсивном вызове `factorial(2 - 1)` аргумент — целое число. Поэтому Raku может вызвать первый вариант.

{% include nav.html %}
