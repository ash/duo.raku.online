---
title: De `@*ARGS` array
---

{% include menu.html %}

Nu ken je arrays. Dus laten we een ingebouwde array leren kennen: `@*ARGS`. Kijk naar de `*` in de naam. Dat is een tweede sigil, of _twigil_. Later zien we meer twigils. Maar laten we nu eerst zien hoe deze speciale array helpt. Deze array bevat de argumenten van het programma. Het programma krijgt ze van de commandoregel.

Kijk naar deze uitvoering van een programma:

```console
$ raku run.raku alpha beta
```

Het programma `run.raku` krijgt twee parameters: `alpha` en `beta`. Je kunt ze lezen uit `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Dit programma print het aantal argumenten. Daarna print het de argumenten:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Je kunt het programma ook als uitvoerbaar bestand starten. Je hoeft het programma daarvoor niet te veranderen:

```console
$ ./run.raku alpha beta
```

In dit geval [heeft het programma een shebang nodig](/nl/essentials/running-programs/from-command-line). Maar het belangrijkste is dit. De indices van `@*ARGS` beginnen nog steeds met `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
