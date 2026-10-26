---
title: 'Solution: Модул за математика'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение. То използва два файла.

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

1. Модулът маркира `square` с `is export`. Точно това я прави достъпна за програмата, която използва модула.

1. Опцията `-I.` добавя текущата директория към пътя за търсене на модули. По този начин Raku намира `Maths.rakumod` до програмата.

{% include nav.html %}
