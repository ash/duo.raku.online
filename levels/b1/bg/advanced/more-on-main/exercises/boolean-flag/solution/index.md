---
title: 'Solution: Флаг от командния ред'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Можете да намерите изходния код във файла [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Изход

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Коментари

1. Именуван параметър от тип `Bool` става флаг. Подаването на `--shout` задава на `$shout` стойност `True`. Ако го пропуснете, той запазва стойността по подразбиране `False`.

1. След това тернарният оператор отпечатва `HELLO` или `hello` според флага. Опцията `--name=value` има стойност, а флагът няма. Важно е само дали флагът е там.

{% include nav.html %}
