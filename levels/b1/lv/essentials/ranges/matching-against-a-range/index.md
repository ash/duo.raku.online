---
title: Salīdzināšana ar diapazonu
---

{% include menu.html %}

Paņemiet diapazonu un mainīgo, kurā ir vesels skaitlis:

```raku
my $r = 1..10;
my $v = 7;
```

Ar _gudrās saskaņošanas operatoru_ `~~` jūs varat pārbaudīt, vai vērtība ir diapazonā:

```
say $v ~~ $r;
```

Šajā piemērā nosacījums ir `True`, tāpēc programma izdrukā `True`.

{% include nav.html %}
