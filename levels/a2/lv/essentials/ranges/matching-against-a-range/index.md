---
title: Salīdzināšana ar diapazonu
---

{% include menu.html %}

Šeit ir diapazons un mainīgais. Mainīgā vērtība ir vesels skaitlis:

```raku
my $r = 1..10;
my $v = 7;
```

Izmantojiet _gudrās saskaņošanas operatoru_ `~~`. Tas pārbauda, vai vērtība ir diapazonā:

```
say $v ~~ $r;
```

Šajā piemērā nosacījums ir `True`. Tāpēc programma izdrukā `True`.

{% include nav.html %}
