---
title: De `@*ARGS` array
---

{% include menu.html %}

Nu je arrays kent, laten we een van de ingebouwde arrays leren kennen: `@*ARGS`. De `*` in de naam is een tweede sigil, of _twigil_. Later zullen we er meer van zien. Maar laten we nu eerst kijken waarom deze speciale array handig is. De array bevat de argumenten die het programma van de commandoregel krijgt.

Kijk naar de volgende uitvoering van een programma:

```console
$ raku run.raku alpha beta
```

Het programma `run.raku` krijgt twee parameters, `alpha` en `beta`. In het programma kun je ze lezen uit `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Dit programma print hoeveel argumenten het kreeg, en daarna de argumenten zelf:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Let op dat het programma niet hoeft te veranderen als je het als uitvoerbaar bestand start:

```console
$ ./run.raku alpha beta
```

In dit geval moet het programma [een shebang hebben](/nl/essentials/running-programs/from-command-line). Maar het belangrijkste is dat de indices van `@*ARGS` nog steeds met `0` beginnen:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
