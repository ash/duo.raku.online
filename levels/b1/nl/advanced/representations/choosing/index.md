---
title: De juiste kiezen
---

{% include menu.html %}

Bij gewone scalaire waarden, zoals getallen en strings, zien alle drie de representaties er hetzelfde uit. Het verschil verschijnt bij samengestelde of ongedefinieerde waarden. Hier is een `Pair`, op drie manieren getoond:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Hier is een grove algemene regel:

* [`.gist`](../gist) — voor uitvoer die mensen zullen *lezen* (`say`, `note`).
* [`.Str`](../str) — voor uitvoer in *platte tekst* (`print`, `put`, variabelen in strings, de `~` operator).
* [`.raku`](../raku-method) — voor een *codeachtige* vorm als je debugt (`dd`).

Als je een klasse schrijft, kun je elk van deze methodes je eigen definitie geven. Dan worden ook je eigen objecten netjes afgedrukt. We komen hierop terug als we in het volgende deel [klassen maken](/nl/oop/classes).

{% include nav.html %}
