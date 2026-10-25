---
title: 'Viktorīna — Pēcpārbaudes `for`'
---

{% include menu.html %}

Mēģiniet pabeigt programmu. Tai jāizmanto `for` postfix forma un jāizdrukā šāds teksts:

    A
    A
    B
    B
    C
    C

Šeit ir koda melnraksts:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Šis kods parāda koda bloku ar postfix <code>for</code>. Ņemiet vērā, ka <code>for</code> jāatrodas tajā pašā rindā, kur noslēdzošā cirtainā iekava. Jaunā rindā bloks vairs nav cilpas daļa. Tad jūs saņemat kompilācijas kļūdu: <code>Missing block</code>. Iespējams, labāk šādi neizmantot koda blokus ar postfix formām.</div>

{% include quiz.html %}

{% include nav.html %}
