---
title: Methoden voor gehele getallen
---

{% include menu.html %}

Gehele getallen hebben veel nuttige methoden en routines. Hier zijn er een paar. Je gebruikt ze vaak.

De methode `is-prime` vertelt je of een getal een priemgetal is:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

De operatoren `gcd` en `lcm` werken met twee getallen. `gcd` geeft de grootste gemene deler. Dat is het grootste getal waardoor je beide getallen kunt delen. `lcm` geeft het kleinste gemene veelvoud. Dat is het kleinste getal dat je door beide getallen kunt delen:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

De methode `abs` geeft de absolute waarde. Dat is het getal zonder minteken. De methode `sign` geeft `-1`, `0` of `1`. Het is `-1` voor een negatief getal. Het is `0` voor nul. Het is `1` voor een positief getal:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
