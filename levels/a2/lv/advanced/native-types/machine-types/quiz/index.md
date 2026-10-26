---
title: Viktorīna — Natīvie tipi
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
my int $n = 42;
say $n.^name;
```

{:.quiz}
1 | Int
0 | int
0 | (Int)
0 | Num

{% include quiz.html %}

<div class="extended-explanation">

Pajautājiet kaut ko par natīvo vērtību, un Raku to automātiski *iesaiņo*. Raku ieliek vērtību atbilstošajā pilnajā tipā. `$n` ir deklarēts kā natīvais `int`. Bet `.^name` jautā tā tipa nosaukumu. Tāpēc jūs saņemat iesaiņoto tipu, `Int`.

</div>

{% include nav.html %}
