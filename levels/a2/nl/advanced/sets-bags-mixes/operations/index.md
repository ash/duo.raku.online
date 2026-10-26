---
title: Set-operaties
translations_gpt:
---

{% include menu.html %}

Je kunt sets combineren met de gewone bewerkingen uit de verzamelingenleer. De verzamelingenleer is een deel van de wiskunde. Elke operator heeft een Unicode-symbool. Je kunt hem ook in ASCII schrijven. Gebruik de vorm die je het fijnst vindt.

De _vereniging_ is `∪`, of `(|)` in ASCII. Die neemt alle waarden uit beide sets:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

De waarde `3` zit in beide sets. Dus heeft de vereniging vijf unieke elementen: `1, 2, 3, 4, 5`.

De _doorsnede_ is `∩`, of `(&)` in ASCII. Die houdt alleen de waarden die in beide sets zitten:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — merk op dat sets ongeordend zijn
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Hier heeft de doorsnede `2` en `3`. Deze waarden zitten in beide sets. Een set heeft geen volgorde. Dus kunnen de twee elementen in de uitvoer in elke volgorde staan.

Deze bewerkingen geven ook een set. Dus kun je hem dezelfde vragen stellen. Hoeveel elementen heeft hij? Zit een bepaalde waarde erin?

{% include nav.html %}
