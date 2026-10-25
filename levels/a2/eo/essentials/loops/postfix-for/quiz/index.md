---
title: 'Kvizo — Postfixa `for`'
---

{% include menu.html %}

Finu la programon. Metu `for` post la bloko. La programo devas presi ĉi tiun tekston:

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

<div class="extended-explanation">Ĉi tie, bloko de kodo havas <code>for</code> post si. La vorto <code>for</code> devas esti en la sama linio kiel la <code>}</code>. Se <code>for</code> estas en nova linio, la buklo ne havas blokon. Tiam Raku montras eraron, antaŭ ol la programo ruliĝas: <code>Missing block</code>. Provu ne uzi blokojn tiel.</div>

{% include quiz.html %}

{% include nav.html %}
