---
title: 'Solution: Een symbool opzoeken'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

Het programma, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Je kunt beide bronbestanden vinden in de map [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Uitvoer

```console
$ raku -I. lookup.raku
3.14
```

## Opmerkingen

1. `Circle::` is de stash van de module. Je gebruikt een naam als sleutel: `Circle::{'$pi'}`. Dat geeft de waarde voor die naam. De sleutel moet de sigil hebben. De namen in de lijst hebben die ook.

1. Je krijgt dezelfde waarde als met de volledige naam `$Circle::pi`. Maar hier is de naam een gewone string. Het programma kan de naam dus maken terwijl het draait. Je hoeft hem niet in de broncode te schrijven.

{% include nav.html %}
