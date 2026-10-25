---
title: 'Kvizo — Postfixa `for`'
---

{% include menu.html %}

Provu fini la programon tiel, ke ĝi uzu la postfiksan formon de `for` kaj presu la jenan tekston:

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

<div class="extended-explanation">Ĉi tiu kodo estas ekzemplo de kodobloko kun la postfiksa <code>for</code>. Notu, ke <code>for</code> devas esti en la sama linio kiel la ferma kurba krampo. Se vi metas ĝin en novan linion, la bloko apartiĝas de la buklo, kaj vi ricevas kompiltempan eraron: <code>Missing block</code>. Verŝajne estas pli bone ne uzi kodoblokojn kun postfiksaj konstruoj tiamaniere.</div>

{% include quiz.html %}

{% include nav.html %}
