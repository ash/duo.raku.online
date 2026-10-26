---
title: 'Розв''язання: Модуль-крикун'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків. Він використовує два файли.

## Код

Модуль `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

Програма `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module).

## Вивід

```console
$ raku -I. shout.raku
HI
```

## Коментарі

1. Завдяки трейту `is export` будь-яка програма, яка використовує модуль, бачить `shout`.

1. Метод `.uc` повертає рядок у верхньому регістрі.

{% include nav.html %}
