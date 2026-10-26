---
title: 'Розв''язання: Математичний модуль'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу. Він використовує два файли.

## Код

Модуль `Maths.rakumod`:

```raku
unit module Maths;

sub square($n) is export {
    $n * $n
}
```

Програма `maths.raku`:

```raku
use Maths;

say square(6);
```

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/modules-basics/maths-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/maths-module).

## Вивід

```console
$ raku -I. maths.raku
36
```

## Коментарі

1. Модуль позначає `square` трейтом `is export`. Тож програма, яка використовує модуль, може викликати `square`.

1. Опція `-I.` додає поточний каталог до шляху пошуку модулів. Тож Raku знаходить `Maths.rakumod` поруч із програмою.

{% include nav.html %}
