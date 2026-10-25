---
title: Atgriešanas tips
---

{% include menu.html %}

Jūs varat arī norādīt tipu funkcijas rezultātam. Ir daži veidi, kā to uzrakstīt kodā.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Izvēlieties to, kas jums patīk visvairāk. Apskatiet ceturto piemēru. Tur rezultāta tips ir iekavās. Tur ir arī funkcijas parametri.

{% include nav.html %}
