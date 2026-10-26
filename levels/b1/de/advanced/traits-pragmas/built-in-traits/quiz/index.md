---
title: Quiz — Traits
translations_gpt:
---

{% include menu.html %}

Welches Trait erlaubt einer Subroutine, über einen Parameter **die Variable des Aufrufers zu ändern**?

{:.quiz}
1 | `is rw`
0 | `is copy`
0 | `is default`
0 | keines — Parameter sind standardmäßig beschreibbar

{% include quiz.html %}

<div class="extended-explanation">

Ein Parameter ist standardmäßig schreibgeschützt, also können Sie einem einfachen Parameter nichts zuweisen. `is rw` bindet den Parameter an die eigene Variable des Aufrufers. Also ist eine Änderung in der Routine auch außerhalb sichtbar. `is copy` würde Ihnen stattdessen eine *Kopie* geben, die Sie ändern können. Die Variable des Aufrufers würde unverändert bleiben.

</div>

{% include nav.html %}
