---
title: '`WHAT` izmantošana'
translations_gpt:
---

{% include menu.html %}

`WHAT` ir pseidometode. Tā dod jums vērtības tipu. Jūs to lietojat gandrīz tāpat kā `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Abi izdrukā tipu, bet tie izskatās nedaudz atšķirīgi. `.^name` dod tikai nosaukumu. `WHAT` dod pašu tipu kā tipa objektu. Tas to rāda apaļajās iekavās:

```
Int
(Int)
```

Paņemiet mainīgo bez tipa ierobežojuma. Sākumā tā tips ir `Any`. Pēc tam jūs piešķirat vērtību. Tagad gan `^name`, gan `WHAT` rāda šīs vērtības tipu:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Ar tipa ierobežojumu Raku zina tipu uzreiz. Tā ir pat tad, kad jūs vēl neesat piešķīruši vērtību:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Tipa objektu salīdzināšana

`WHAT` atgriež pašu tipa objektu. Tāpēc jūs varat salīdzināt divus tipa objektus. Šim nolūkam izmantojiet operatoru `===`. Tas ir _vērtības identitātes_ operators. Tas pārbauda, vai abas puses ir viena un tā pati vērtība. Katram tipam ir tikai viens tipa objekts. Tāpēc `===` viegli pārbauda, vai divām vērtībām ir viens un tas pats tips:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — abi ir Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` salīdzina skaitļus. Bet `===` salīdzina identitāti. Tāpēc tas darbojas tieši ar tipa objektiem. Tas darbojas arī ar citām vērtībām.

{% include nav.html %}
