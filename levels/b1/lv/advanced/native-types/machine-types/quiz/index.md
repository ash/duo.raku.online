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

Kad jūs jautājat kaut ko par natīvo vērtību, Raku to automātiski *iesaiņo*. Vērtība nonāk atbilstošajā pilnajā tipā. Šeit `$n` ir deklarēts kā natīvais `int`. Bet `.^name` tomēr parāda tā tipu kā iesaiņoto `Int`.

</div>

{% include nav.html %}
