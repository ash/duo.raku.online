---
title: Subscriptie van reeksen
---

{% include menu.html %}

Een `Range` is een positioneel gegevenstype. Net als bij arrays kun je elk van zijn elementen krijgen.

Zo print je bijvoorbeeld het vierde item dat het bereik maakt:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Er is één belangrijk verschil. Anders dan arrays bewaren bereiken niet altijd al hun waarden in het geheugen.

## Grootte

Om de grootte van een bereik te krijgen, gebruik je de `elems`-methode, net als bij arrays.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
