---
title: 'Розв''язання: Прапорець командного рядка'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Вихідний код можна знайти у файлі [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Вивід

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Коментарі

1. Іменований параметр типу `Bool` стає прапорцем. З `--shout` змінна `$shout` дорівнює `True`. Без нього `$shout` зберігає типове значення, `False`.

1. Потім тернарний оператор виводить `HELLO` або `hello`. В опції `--name=value` є значення. У прапорця значення немає. Важить лише одне: є прапорець чи немає?

{% include nav.html %}
