---
title: De juiste kiezen
---

{% include menu.html %}

Neem eenvoudige scalaire waarden, zoals getallen en strings. Hier zien alle drie de vormen er hetzelfde uit. Ze zijn anders voor waarden met meerdere delen. Ze zijn ook anders voor ongedefinieerde waarden. Hier is een `Pair`, op drie manieren getoond:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Hier is een eenvoudige regel:

* [`.gist`](../gist) — voor uitvoer die mensen *lezen* (`say`, `note`).
* [`.Str`](../str) — voor uitvoer die *platte tekst* is (`print`, `put`, waarden in strings, de `~` operator).
* [`.raku`](../raku-method) — voor een vorm *zoals code*, als je debugt (`dd`).

Je kunt je eigen klassen schrijven. In een klasse kun je elk van deze methodes zelf definiëren. Dan zien je eigen objecten er bij het printen ook mooi uit. We komen hierop terug in het volgende deel. Daar gaan we [klassen maken](/nl/oop/classes).

{% include nav.html %}
