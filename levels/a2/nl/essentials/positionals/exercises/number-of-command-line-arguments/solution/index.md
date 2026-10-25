---
title: 'Oplossing: Het aantal argumenten op de opdrachtregel'
translations_gpt:
---

{% include menu.html %}

We krijgen het aantal argumenten weer uit `@*ARGS.elems`. Maar deze keer drukken we het niet alleen af. We moeten er meer mee doen. Bewaar het aantal in een variabele. Kies dan het juiste woord met een ternaire operator:

## Code

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Je vindt de broncode in het bestand [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Uitvoer

Test drie interessante gevallen: geen argumenten, één argument en veel argumenten. Alleen het tweede geval gebruikt het enkelvoud, `argument`.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
