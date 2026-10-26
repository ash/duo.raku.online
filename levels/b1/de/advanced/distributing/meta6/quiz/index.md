---
title: Quiz — Distributionen
---

{% include menu.html %}

Welche Datei beschreibt eine Raku-Distribution mit ihrem Namen, ihrer Version und dem, was sie bereitstellt?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

`META6.json` beschreibt eine Distribution. Sie ist eine JSON-Datei im obersten Verzeichnis der Distribution. Ihr Schlüssel `provides` verbindet jeden Modulnamen mit seiner Quelldatei. Der Schlüssel `depends` listet die anderen Distributionen auf, die sie braucht.

</div>

{% include nav.html %}
