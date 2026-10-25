---
title: 'Solution: Hallo, Wereld!'
---

{% include menu.html %}

We zijn nu al ver in de cursus. Maar we moeten terug naar dit programma. Waarom? We hebben net een nieuwe manier geleerd om Raku-programma's te schrijven.

## Code 1

```raku
sub MAIN() {
    say 'Hallo, Wereld!';
}
```

🦋 Vind het programma in het bestand [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Code 2

```raku
unit sub MAIN;
say 'Hallo, Wereld!';
```

🦋 Vind het programma in het bestand [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Voorbeeld

Voer een van de twee programma's uit:

```console
$ raku exercises/the-main-function/hello-world.raku
Hallo, Wereld!

$ raku exercises/the-main-function/hello-world-unit.raku
Hallo, Wereld!
```

{% include nav.html %}
