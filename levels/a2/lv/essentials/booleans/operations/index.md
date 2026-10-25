---
title: Loģiskās operācijas
---

{% include menu.html %}

Jūs varat veikt visas parastās operācijas ar Būla vērtībām. Tās ir Būla UN, VAI un ekskluzīvais VAI. Ekskluzīvo VAI sauc arī par XOR:

```raku
say False && True; # UN
say False || True; # VAI
say False ^^ True; # XOR
```

Programma izdrukā šo:

    False
    True
    True

## Negācija

Noliegums dod pretējo Būla vērtību. Noliegumam izmantojiet prefiksa operatoru `!`. Prefiksa operators ir pirms vērtības:

```raku
say !False; # True
```

Skalārais mainīgais var glabāt Būla vērtību:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
