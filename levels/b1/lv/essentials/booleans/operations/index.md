---
title: Loģiskās operācijas
---

{% include menu.html %}

Ar Būla vērtībām jūs varat izmantot visas standarta operācijas. Tās ir Būla UN, VAI un ekskluzīvais VAI (to sauc arī par XOR):

```raku
say False && True; # UN
say False || True; # VAI
say False ^^ True; # XOR
```

Programma izdrukā šādus rezultātus:

    False
    True
    True

## Negācija

Noliegums pārvērš Būla vērtību par pretējo. Lai noliegtu vērtību, izmantojiet prefiksa operatoru `!`:

```raku
say !False; # True
```

Jūs varat glabāt Būla vērtības skalārajos mainīgajos:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
