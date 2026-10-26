---
title: 'Solution: Флаг от командния ред'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Именуван параметър от типа `Bool` става флаг. С `--shout` стойността на `$shout` е `True`. Без него `$shout` запазва стойността по подразбиране, `False`.

1. После тернарният оператор отпечатва `HELLO` или `hello`. Опцията `--name=value` има стойност. Флагът няма стойност. Важно е само едно: има ли флаг или не?

{% include nav.html %}
