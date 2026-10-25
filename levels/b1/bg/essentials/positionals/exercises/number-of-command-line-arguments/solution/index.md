---
title: 'Решение: Броят на аргументите на командния ред'
translations_gpt:
---

{% include menu.html %}

Броят на аргументите пак идва от `@*ARGS.elems`. Но този път трябва да направим нещо с него, а не само да го отпечатаме. Запазете броя в променлива. После изберете правилната дума с тернарен оператор:

## Код

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Намерете програмата във файла [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Изход

Пробвайте трите интересни случая: без аргументи, точно един и много. Само вторият случай използва формата за единствено число.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
