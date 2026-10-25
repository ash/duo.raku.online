---
title: 'Solution: Vierkant en kubus'
---

{% include menu.html %}

## Code 1

Een eenvoudige oplossing gebruikt de `**`-operator.

```raku
my $n = @*ARGS[0];
say $n ** 2;
say $n ** 3;
```

🦋 Vind het programma in het bestand [square-and-cube.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube.raku).

## Code 2

Een andere oplossing ziet er iets mooier uit. Die gebruikt Unicode-superscripts. Dat zijn kleine cijfers bovenaan de regel.

```raku
my $n = @*ARGS[0];
say $n²;
say $n³;
```

🦋 Vind het programma in het bestand [square-and-cube-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube-2.raku).

## Output

Voer het programma een paar keer uit. Test het met verschillende getallen.

```console
$ raku exercises/positionals/square-and-cube.raku 5
25
125
```

{% include nav.html %}
