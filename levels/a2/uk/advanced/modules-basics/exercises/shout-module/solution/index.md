---
title: 'Розв''язання: Модуль-крикун'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу. Він використовує два файли.

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

1. Трейт `is export` стоїть на `shout`. Тож її бачить кожна програма, яка використовує модуль.

1. Метод `.uc` повертає рядок у верхньому регістрі, тобто великими літерами.

{% include nav.html %}
