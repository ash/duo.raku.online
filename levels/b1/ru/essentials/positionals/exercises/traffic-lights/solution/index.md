---
title: 'Решение: Светофор'
---

{% include menu.html %}

Идея решения — «зациклить индексацию» массива. Массив хранит четыре состояния светофора:

```raku
my @lights = <yellow red yellow green>;
```

В первые секунды число секунд с начала используется прямо как индекс. Когда оно больше 3, вы возвращаетесь к началу массива. Это делает оператор модуля `%`. Длина массива — это `@lights.elems`. Но с `%` не нужно вызывать метод `elems`. Массив — это операнд `%`, поэтому его имя преобразуется в число. Это преобразование сделано так, чтобы давать количество элементов.

## Код

Вот решение:

```raku
my @lights = <yellow red yellow green>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Найдите программу в файле [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Вывод

Запустите программу. Попробуйте также другие значения в программе.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
