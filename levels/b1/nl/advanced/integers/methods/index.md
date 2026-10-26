---
title: Methoden voor gehele getallen
---

{% include menu.html %}

Gehele getallen hebben veel nuttige methoden en routines. Hier zijn er een paar die je vaak nodig hebt.

De methode `is-prime` controleert of een getal een priemgetal is:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

De operator `gcd` geeft de grootste gemene deler van twee getallen. De operator `lcm` geeft hun kleinste gemene veelvoud:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

De methode `abs` geeft de absolute waarde van een getal terug. De methode `sign` geeft `-1`, `0` of `1` terug. Dat hangt ervan af of het getal negatief, nul of positief is:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
