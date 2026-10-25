---
title: 'Решение: Значение числа π'
---

{% include menu.html %}

Вывести значение числа π просто.

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

В Raku есть встроенная константа `π`. Поэтому программа очень простая. Но есть и другие способы сделать то же самое:

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
