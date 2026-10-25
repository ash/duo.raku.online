---
title: 'Solution: Tellen en printen van commandoregelargumenten'
---

{% include menu.html %}

In dit programma is een `for` lus een goede keuze.

## Code

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Vind het programma in het bestand [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Uitvoer

Voer het programma uit en controleer of het de argumenten met regelnummers print:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Discussie

Dit programma gebruikt een paar handige trucjes. Ten eerste gaat de `for`-lus over het [bereik dat met `^` is gemaakt](/nl/essentials/ranges/excluding-endpoints). Het bereik begint dus bij 0. Het gaat tot de waarde van `@*ARGS`, maar die waarde hoort er niet bij. In deze context [geeft](/nl/essentials/positionals/arrays#size) `@*ARGS` de lengte van de array terug.

Het eerste element van een array heeft index `0`. Maar de taak wil dat we de regels vanaf `1` tellen. Deze kleine verschuiving wordt berekend [binnen een codeblok](/nl/essentials/strings/code-interpolation) in een string: `"{$n + 1} ..."`.

{% include nav.html %}
