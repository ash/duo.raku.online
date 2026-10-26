---
title: 'Solution: Две функции в един модул'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение. То използва два файла.

## Код

Модулът, `Calc.rakumod`:

```raku
unit module Calc;

sub add($a, $b) is export {
    $a + $b
}

sub mul($a, $b) is export {
    $a * $b
}
```

Програмата, `calc.raku`:

```raku
use Calc;

say add(3, 4);
say mul(3, 4);
```

🦋 Можете да намерите двата файла с изходния код в директорията [exercises/advanced/modules-basics/two-functions](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/two-functions).

## Изход

```console
$ raku -I. calc.raku
7
12
```

## Коментари

1. Модулът може да експортира колкото подпрограми искате. Всяка от тях има собствена характеристика `is export`.

1. След само един `use Calc` и `add`, и `mul` са достъпни в програмата.

{% include nav.html %}
