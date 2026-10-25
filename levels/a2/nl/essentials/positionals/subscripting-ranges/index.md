---
title: Subscriptie van reeksen
---

{% include menu.html %}

Een `Range` is een positioneel gegevenstype. Net als bij een array kun je elk element ervan krijgen.

Een bereik maakt een reeks van items. Zo print je bijvoorbeeld het vierde element:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Let op een belangrijk verschil met arrays. Een bereik bewaart niet altijd al zijn waarden in het geheugen.

## Grootte

Om de grootte van een bereik te krijgen, gebruik je de `elems`-methode. Dat werkt op dezelfde manier als bij arrays.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
