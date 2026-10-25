---
title: 'Решение: Светофор'
---

{% include menu.html %}

Вот идея решения. Массив хранит четыре состояния светофора. Мы «зацикливаем индексацию» этого массива:

```raku
my @lights = <yellow red yellow green>;
```

Сначала считайте секунды от начала. Используйте это число прямо как индекс в массиве. Потом число становится больше 3. Тогда вы возвращаетесь к началу массива. Это делает оператор модуля `%`. Длина массива — это `@lights.elems`. Но здесь не нужно вызывать метод `elems`. Массив — это операнд `%`. Поэтому Raku преобразует имя массива в число. Это преобразование даёт количество элементов.

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

Запустите программу. Потом попробуйте в ней и другие значения.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
