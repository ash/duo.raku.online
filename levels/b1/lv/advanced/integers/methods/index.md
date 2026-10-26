---
title: Veselo skaitļu metodes
translations_gpt:
---

{% include menu.html %}

Veselajiem skaitļiem ir daudz noderīgu metožu un rutīnu. Šeit ir dažas, kas jums bieži būs vajadzīgas.

Metode `is-prime` pārbauda, vai skaitlis ir pirmskaitlis:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

Operators `gcd` dod divu skaitļu lielāko kopīgo dalītāju. Operators `lcm` dod to mazāko kopīgo dalāmo:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

Metode `abs` atgriež skaitļa absolūto vērtību. Metode `sign` atgriež `-1`, `0` vai `1`. Tas ir atkarīgs no tā, vai skaitlis ir negatīvs, nulle vai pozitīvs:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
