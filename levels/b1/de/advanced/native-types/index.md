---
title: Native Typen
---

{% include menu.html %}

Die Typen, die du bisher benutzt hast, `Int`, `Num` und `Str`, sind vollwertige Raku-Objekte. Sie sind flexibel und können dir etwas über sich selbst sagen. Sie können auch so groß werden, wie du sie brauchst. Raku hat außerdem eine zweite, parallele Familie von _nativen_ Typen. Sie passen direkt zu der Art, wie die Maschine selbst Werte speichert. Das sind `int`, `num`, `str` und eine Reihe von Ganzzahlen mit fester Größe.

Native Typen haben Namen in Kleinbuchstaben. Sie geben etwas Flexibilität auf und bekommen dafür Geschwindigkeit und eine feste Größe. Sie verhalten sich auch etwas anders als die passenden geboxten Typen. Dieser Abschnitt zeigt, was native Typen sind und wie ihre feste Größe zu einem Überlauf führt.

{% include nav.html %}
