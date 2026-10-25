---
title: 'Viktorīna — Pēcpārbaudes `for`'
---

{% include menu.html %}

Mēģiniet pabeigt programmu tā, lai tā izmantotu `for` postfix formu un izdrukātu šādu tekstu:

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

<div class="extended-explanation">Šis kods ir piemērs koda blokam ar postfix <code>for</code>. Ņemiet vērā, ka <code>for</code> jāatrodas tajā pašā rindā, kur noslēdzošā cirtainā iekava. Ja to ievietosiet jaunā rindā, bloks atdalīsies no cilpas, un jūs saņemsiet kompilācijas kļūdu: <code>Missing block</code>. Iespējams, labāk šādi neizmantot koda blokus ar postfix konstrukcijām.</div>

{% include quiz.html %}

{% include nav.html %}
