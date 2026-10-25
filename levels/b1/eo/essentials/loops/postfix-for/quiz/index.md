---
title: 'Kvizo — Postfixa `for`'
---

{% include menu.html %}

Provu fini la programon. Ĝi devas uzi la postfiksan formon de `for` kaj presi la jenan tekston:

    A
    A
    B
    B
    C
    C

Jen malneto de la kodo:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;$_ .say;
. | &nbsp;&nbsp;&nbsp;&nbsp;$_ .say;
} | ␣ for 'A'..'C';

<div class="extended-explanation">Ĉi tiu kodo montras kodoblokon kun la postfiksa <code>for</code>. Notu, ke <code>for</code> devas esti en la sama linio kiel la ferma kurba krampo. En nova linio, la bloko ne plu estas parto de la buklo. Tiam vi ricevas kompilan eraron: <code>Missing block</code>. Verŝajne estas pli bone ne uzi kodoblokojn kun postfiksaj formoj tiamaniere.</div>

{% include quiz.html %}

{% include nav.html %}
