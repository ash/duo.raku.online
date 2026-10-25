---
title: Atgriešanas tips
---

{% include menu.html %}

Jūs varat arī skaidri norādīt funkcijas rezultāta tipu. Ir daži veidi, kā to uzrakstīt kodā.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Izvēlieties to, kas jums patīk vislabāk. Ievērojiet ceturto piemēru. Tur atgriešanas tips ir iekavās kopā ar funkcijas parametriem.

{% include nav.html %}
