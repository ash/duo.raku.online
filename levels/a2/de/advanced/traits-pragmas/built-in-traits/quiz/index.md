---
title: Quiz — Traits
translations_gpt:
---

{% include menu.html %}

Eine Subroutine will über einen Parameter **die Variable des Aufrufers ändern**. Welches Trait macht das möglich?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | keines — Parameter sind standardmäßig beschreibbar

{% include quiz.html %}

<div class="extended-explanation">

Normalerweise ist ein Parameter schreibgeschützt. Also können Sie einem einfachen Parameter keinen neuen Wert zuweisen. `is rw` verbindet den Parameter mit der eigenen Variablen des Aufrufers. Also sieht man eine Änderung in der Routine auch außerhalb. `is copy` arbeitet anders. Es gibt Ihnen eine *Kopie*, die Sie ändern können. Die Variable des Aufrufers bleibt gleich.

</div>

{% include nav.html %}
