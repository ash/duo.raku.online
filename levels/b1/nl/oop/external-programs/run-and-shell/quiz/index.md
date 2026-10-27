---
title: "Quiz — Programma's draaien"
translations_gpt:
---

{% include menu.html %}

Welke functie stuurt haar commando door de systeem**shell** en maakt pipes en omleiding mogelijk?

{:.quiz}
0 | `run`
1 | `shell`
0 | `exec`
0 | `system`

{% include quiz.html %}

<div class="extended-explanation">

`shell` geeft één enkele string aan de shell, die mogelijkheden als pipes begrijpt. `run` start een programma direct, met afzonderlijke argumenten en zonder shell. Dat is veiliger, dus `run` is de betere standaardkeuze.

</div>

{% include nav.html %}
