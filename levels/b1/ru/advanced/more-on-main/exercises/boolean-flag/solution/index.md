---
title: 'Решение: Флаг командной строки'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Исходный код можно найти в файле [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Вывод

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Комментарии

1. Именованный параметр типа `Bool` становится флагом. Если передать `--shout`, `$shout` получает значение `True`. Если его не передавать, остаётся значение по умолчанию `False`.

1. Затем тернарный оператор выводит `HELLO` или `hello`, в зависимости от флага. У опции `--name=value` есть значение, а у флага его нет. Важно только то, есть ли флаг.

{% include nav.html %}
