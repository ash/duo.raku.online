---
title: 'Solution: Een symbool opzoeken'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `Circle::` is de stash van de module. Als je een naam als sleutel gebruikt, zoals `Circle::{'$pi'}`, krijg je de waarde die eronder is opgeslagen. De sleutel moet de sigil bevatten, net als de namen in de lijst.

1. Dit geeft dezelfde waarde als de gekwalificeerde `$Circle::pi`. Maar hier is de naam een gewone string. Hij kan dus tijdens de uitvoering worden opgebouwd. Hij hoeft niet in de broncode te worden uitgeschreven.

{% include nav.html %}
