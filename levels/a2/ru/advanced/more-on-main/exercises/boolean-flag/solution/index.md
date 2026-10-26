---
title: 'Решение: Флаг командной строки'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Именованный параметр типа `Bool` становится флагом. С `--shout` значение `$shout` равно `True`. Без него `$shout` сохраняет значение по умолчанию, `False`.

1. Потом тернарный оператор печатает `HELLO` или `hello`. У опции `--name=value` есть значение. У флага значения нет. Важно только одно: есть флаг или нет?

{% include nav.html %}
