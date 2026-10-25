---
title: Boolean bewerkingen
---

{% include menu.html %}

Je kunt alle standaardoperaties gebruiken met Booleaanse waarden. Dat zijn Booleaanse EN, OF en exclusieve OF (ook XOR genoemd):

```raku
say False && True; # EN
say False || True; # OF
say False ^^ True; # XOR
```

Het programma drukt deze resultaten af:

    False
    True
    True

## Negatie

Negatie maakt van een Booleaanse waarde het omgekeerde. Om een waarde te negateren, gebruik je de prefix-operator `!`:

```raku
say !False; # True
```

Je kunt Booleaanse waarden opslaan in scalaire variabelen:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
