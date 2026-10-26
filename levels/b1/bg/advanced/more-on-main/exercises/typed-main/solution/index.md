---
title: 'Solution: Типизиран MAIN'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Можете да намерите изходния код във файла [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Изход

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Коментари

1. Типът `Int` означава, че думата от командния ред трябва да изглежда като цяло число. При `5` стойността отива в `$n` и тялото отпечатва `10`.

1. При `abc` стойността не може да стане `Int`, затова сигнатурата не съвпада. Raku не изпълнява тялото. Вместо това той отпечатва генерираното съобщение за употреба. Така Raku проверява аргументите вместо вас. Не е нужно сами да пишете никакви проверки.

{% include nav.html %}
