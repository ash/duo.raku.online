---
title: 'Розв''язання: Прапорець командного рядка'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Іменований параметр типу `Bool` стає прапорцем. Передача `--shout` встановлює `$shout` у `True`. Якщо його пропустити, лишається типове значення `False`.

1. Потім тернарний оператор виводить `HELLO` або `hello`, залежно від прапорця. Опція `--name=value` має значення, а прапорець не має. Важить лише те, чи є прапорець.

{% include nav.html %}
