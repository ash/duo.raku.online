---
title: 'Solution: Модул за извикване'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение. То използва два файла.

## Код

Модулът, `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

Програмата, `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Можете да намерите двата файла с изходния код в директорията [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module).

## Изход

```console
$ raku -I. shout.raku
HI
```

## Коментари

1. Благодарение на характеристиката `is export` всяка програма, която използва модула, може да вижда `shout`.

1. Методът `.uc` връща низа с главни букви.

{% include nav.html %}
