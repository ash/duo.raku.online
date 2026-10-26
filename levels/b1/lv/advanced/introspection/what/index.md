---
title: '`WHAT` izmantošana'
translations_gpt:
---

{% include menu.html %}

`WHAT` ir pseidometode, kas ļauj jums iegūt vērtības tipu. Jūs to varat lietot gandrīz tāpat kā `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Abi izdrukā tipu, bet tas izskatās nedaudz atšķirīgi. `.^name` dod tikai nosaukumu, bet `WHAT` parāda tipa objektu iekavās:

```
Int
(Int)
```

Ja mainīgajam nav tipa ierobežojuma, sākumā tā tips ir `Any`. Kad jūs piešķirat vērtību, gan `^name`, gan `WHAT` rāda tās tipu:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Ar tipa ierobežojumu tips ir zināms uzreiz, pat pirms jūs kaut ko piešķirat:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Tipa objektu salīdzināšana

`WHAT` atgriež pašu tipa objektu, tāpēc divus tipa objektus var salīdzināt ar `===`. Tas ir _vērtības identitātes_ operators. Tas pārbauda, vai abas puses ir tieši viena un tā pati vērtība. Katram tipam ir tikai viens tipa objekts. Tāpēc šis ir tīrs veids, kā pārbaudīt, vai divām vērtībām ir vienāds tips:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — abi ir Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` salīdzina skaitļus, bet `===` salīdzina identitāti. Tāpēc tas darbojas tieši ar tipa objektiem un arī ar citām vērtībām.

{% include nav.html %}
