---
title: 'Kvizo — Postfixa `for`'
---

{% include menu.html %}

Finu la programon. Ĝi devas uzi `for` post la bloko, kaj ĝi devas presi ĉi tiun tekston:

    A
    A
    B
    B
    C
    C

Jen la komenco de la kodo:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;$_ .say;
. | &nbsp;&nbsp;&nbsp;&nbsp;$_ .say;
} | ␣ for 'A'..'C';

<div class="extended-explanation">Ĉi tiu kodo uzas kodoblokon kun <code>for</code> post ĝi. Notu, ke <code>for</code> devas esti en la sama linio kiel la ferma kurba krampo. Se vi metas ĝin en novan linion, la bloko ne plu estas parto de la buklo. Tiam vi ricevas eraron: <code>Missing block</code>. Estas pli bone ne uzi kodoblokojn kun postfiksaj formoj tiel.</div>

{% include quiz.html %}

{% include nav.html %}
