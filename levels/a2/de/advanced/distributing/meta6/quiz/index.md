---
title: Quiz — Distributionen
---

{% include menu.html %}

Eine Datei enthält den Namen und die Version einer Raku-Distribution. Sie sagt auch, was die Distribution liefert. Welche Datei ist das?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

Die Datei `META6.json` beschreibt eine Distribution. Sie ist eine JSON-Datei im obersten Verzeichnis. Ihr Schlüssel `provides` verbindet jeden Modulnamen mit seiner Quelldatei. Der Schlüssel `depends` listet die anderen Distributionen auf, die die Distribution braucht.

</div>

{% include nav.html %}
