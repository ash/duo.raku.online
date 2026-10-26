---
title: Traits und Pragmas
translations_gpt:
---

{% include menu.html %}

Zwei Funktionen ändern, wie Raku Ihren Code **kompiliert**. Das passiert, bevor der Code läuft. Die erste Funktion ist ein _Trait_. Ein Trait ändert eine Deklaration. Die Deklaration kann eine Variable oder eine Routine sein. Sie schreiben ein Trait mit `is`. Die zweite Funktion ist ein _Pragma_. Ein Pragma ist ein bisschen wie ein Modul. Sie schalten es mit `use` ein oder mit `no` aus. Es ändert eine Regel für den Rest des lexikalischen Gültigkeitsbereichs. Anders gesagt: Es wirkt bis zum Ende des Blocks.

Sie haben schon ein Trait benutzt, zum Beispiel `is default`. Aber damals haben Sie nicht viel darüber gelernt. Dieser Abschnitt sieht sich Traits genauer an. Er zeigt, wie Sie ein eigenes Trait schreiben. Er stellt auch Pragmas vor.

{% include nav.html %}
