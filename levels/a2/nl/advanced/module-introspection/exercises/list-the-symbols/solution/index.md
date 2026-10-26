---
title: 'Solution: De symbolen oplijsten'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

Het programma, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Je kunt beide bronbestanden vinden in de map [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols).

## Uitvoer

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Opmerkingen

1. `Circle::` is het pakket van de module. `.keys` toont de namen erin. Elke naam heeft zijn sigil.

1. `.elems` telt deze namen. De module heeft twee `our`-variabelen. Het aantal is dus `2`.

1. `.keys` geeft de namen niet in een vaste volgorde. Daarom gebruiken we `.sort`. Dat zet de namen in alfabetische volgorde. Nu is het resultaat altijd hetzelfde: `($pi $tau)`. Zonder sorteren kan de volgorde van de twee namen veranderen. Ze kan elke keer anders zijn als het programma draait.

{% include nav.html %}
