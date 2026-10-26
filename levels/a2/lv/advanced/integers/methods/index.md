---
title: Veselo skaitļu metodes
translations_gpt:
---

{% include menu.html %}

Veselajiem skaitļiem ir daudz noderīgu metožu un rutīnu. Šeit ir dažas no tām. Jūs tās izmantosiet bieži.

Metode `is-prime` jums pasaka, vai skaitlis ir pirmskaitlis:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

Operatori `gcd` un `lcm` strādā ar diviem skaitļiem. `gcd` dod lielāko kopīgo dalītāju. Tas ir lielākais skaitlis, ar kuru var dalīt abus skaitļus. `lcm` dod mazāko kopīgo dalāmo. Tas ir mazākais skaitlis, kuru var dalīt ar abiem skaitļiem:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

Metode `abs` dod absolūto vērtību. Tas ir skaitlis bez mīnusa zīmes. Metode `sign` dod `-1`, `0` vai `1`. Negatīvam skaitlim tā ir `-1`. Nullei tā ir `0`. Pozitīvam skaitlim tā ir `1`:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
