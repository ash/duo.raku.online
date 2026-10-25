---
title: 'Решение: Значение числа π'
---

{% include menu.html %}

Программа, которая выводит значение числа π, довольно простая.

## Код

```raku
say π;
```

🦋 Вы можете найти исходный код в файле [pi.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/pi.raku).

## Вывод

Запустите программу и посмотрите, что она выведет:

```console
$ raku exercises/numbers/pi.raku
3.141592653589793
```

## Комментарии

Raku даёт нам встроенную константу с именем `π`, поэтому программа очень простая. И всё же вот несколько других способов сделать то же самое:

```raku
π.say;
```

Или:

```raku
pi.say;
```

Или:

```raku
say pi;
```

{% assign human=1 %}
{% include nav.html %}
