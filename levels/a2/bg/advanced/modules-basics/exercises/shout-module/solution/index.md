---
title: 'Solution: Модул за извикване'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата. Той използва два файла.

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

1. Характеристиката `is export` е на `shout`. Затова всяка програма, която използва модула, може да я вижда.

1. Методът `.uc` връща низа с главни букви, тоест с големи букви.

{% include nav.html %}
