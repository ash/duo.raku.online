---
title: 'Solution: De symbolen oplijsten'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `Circle::` is het pakket van de module. `.keys` toont de namen die het bevat, elk met zijn sigil.

1. `.elems` telt deze namen. De module definieert twee `our`-variabelen, dus het aantal is `2`.

1. `.keys` belooft geen bepaalde volgorde. Daarom gebruiken we `.sort`, dat elke keer hetzelfde alfabetische resultaat geeft: `($pi $tau)`. Zonder sorteren kan de volgorde van de twee namen per uitvoering verschillen.

{% include nav.html %}
