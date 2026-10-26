---
title: 'Решение: Модуль для крика'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу. В решении два файла.

## Код

Модуль `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

Программа `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Оба исходных файла можно найти в каталоге [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module).

## Вывод

```console
$ raku -I. shout.raku
HI
```

## Комментарии

1. У `shout` есть трейт `is export`. Поэтому её видит каждая программа, которая использует модуль.

1. Метод `.uc` возвращает строку в верхнем регистре, большими буквами.

{% include nav.html %}
