---
title: 'Solution: Типизиран MAIN'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Параметърът има типа `Int`. Затова думата на командния ред трябва да прилича на цяло число. Стойността `5` отива в `$n`. После тялото отпечатва `10`.

1. Стойността `abc` не може да стане `Int`. Затова сигнатурата не съвпада. Raku не изпълнява тялото. Вместо това той отпечатва съобщението за употреба. Raku сам създава това съобщение. Така Raku проверява аргументите вместо вас. Вие сами не пишете никакви проверки.

{% include nav.html %}
