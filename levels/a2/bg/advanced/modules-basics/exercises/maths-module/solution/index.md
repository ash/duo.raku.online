---
title: 'Solution: Модул за математика'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата. Той използва два файла.

## Код

Модулът, `Maths.rakumod`:

```raku
unit module Maths;

sub square($n) is export {
    $n * $n
}
```

Програмата, `maths.raku`:

```raku
use Maths;

say square(6);
```

🦋 Можете да намерите двата файла с изходния код в директорията [exercises/advanced/modules-basics/maths-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/maths-module).

## Изход

```console
$ raku -I. maths.raku
36
```

## Коментари

1. Модулът маркира `square` с `is export`. Така програма, която използва модула, може да извика `square`.

1. Опцията `-I.` слага текущата директория в пътя за търсене на модули. Така Raku намира `Maths.rakumod` до програмата.

{% include nav.html %}
