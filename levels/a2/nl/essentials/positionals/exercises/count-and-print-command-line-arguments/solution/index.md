---
title: 'Solution: Tellen en printen van commandoregelargumenten'
---

{% include menu.html %}

Een `for`-lus is goed voor dit programma.

## Code

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Vind het programma in het bestand [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Uitvoer

Voer het programma uit. Kijk of het de argumenten en de regelnummers print:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Discussie

Dit programma gebruikt een paar handige trucjes. Ten eerste gaat de `for`-lus over een [bereik gemaakt met `^`](/nl/essentials/ranges/excluding-endpoints). Het bereik begint bij 0. Het gaat tot de waarde van `@*ARGS`. Maar die laatste waarde zit niet in het bereik. Hier [geeft](/nl/essentials/positionals/arrays#size) `@*ARGS` de lengte van de array.

Het eerste element van een array heeft de index `0`. Maar de taak wil regelnummers vanaf `1`. Dus tellen we 1 op bij de index. Het programma doet dit [in een codeblok](/nl/essentials/strings/code-interpolation) in een string: `"{$n + 1} ..."`.

{% include nav.html %}
