---
title: 'Viktorīna — Pēcpārbaudes `for`'
---

{% include menu.html %}

Pabeidziet programmu. Tai jāizmanto `for` aiz bloka, un tai jāizdrukā šis teksts:

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

<div class="extended-explanation">Šis kods izmanto koda bloku ar <code>for</code> aiz tā. Ņemiet vērā, ka <code>for</code> jāatrodas tajā pašā rindā, kur ir noslēdzošā cirtainā iekava. Ja jūs to ieliekat jaunā rindā, bloks vairs nav cilpas daļa. Tad jūs saņemat kļūdu: <code>Missing block</code>. Labāk šādi neizmantot koda blokus ar postfix formām.</div>

{% include quiz.html %}

{% include nav.html %}
