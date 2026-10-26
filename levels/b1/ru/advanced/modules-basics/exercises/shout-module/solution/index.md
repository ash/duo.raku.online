---
title: 'Решение: Модуль для крика'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение. В нём используются два файла.

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

1. Благодаря трейту `is export` любая программа, которая использует модуль, видит `shout`.

1. Метод `.uc` возвращает строку в верхнем регистре.

{% include nav.html %}
