---
title: Set-operaties
translations_gpt:
---

{% include menu.html %}

Je kunt sets combineren met de gewone bewerkingen uit de verzamelingenleer. Elke operator heeft een Unicode-symbool en een ASCII-notatie. Je kunt ze allebei gebruiken.

De _vereniging_ `∪`, of `(|)`, verzamelt alle waarden van beide sets:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Omdat beide sets `3` bevatten, heeft de vereniging vijf unieke elementen: `1, 2, 3, 4, 5`.

De _doorsnede_ `∩`, of `(&)`, houdt alleen de waarden die beide sets hebben:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — merk op dat sets ongeordend zijn
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Hier bevat de doorsnede `2` en `3`, de waarden die in beide sets zitten. Een set heeft geen eigen volgorde. Als je hem afdrukt, kunnen de twee elementen dus in elke volgorde verschijnen.

Het resultaat van deze bewerkingen is ook een set. Je kunt het dus dezelfde vragen stellen. Hoeveel elementen heeft het, en zit een bepaalde waarde erin?

{% include nav.html %}
