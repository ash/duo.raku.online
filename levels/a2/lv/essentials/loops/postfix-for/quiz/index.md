---
title: 'Viktorīna — Pēcpārbaudes `for`'
---

{% include menu.html %}

Pabeidziet programmu. Ielieciet `for` aiz bloka. Programmai jāizdrukā šis teksts:

    A
    A
    B
    B
    C
    C

Šeit ir koda sākums:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Šeit aiz koda bloka ir <code>for</code>. Vārdam <code>for</code> jābūt tajā pašā rindā, kur ir <code>}</code>. Ja <code>for</code> ir jaunā rindā, ciklam nav bloka. Tad Raku parāda kļūdu vēl pirms programmas sākuma: <code>Missing block</code>. Centieties tā neizmantot blokus.</div>

{% include quiz.html %}

{% include nav.html %}
