---
title: Kontexte
---

{% include menu.html %}

Ein Wert in Raku kann sich unterschiedlich verhalten, je nach dem _Kontext_, in dem du ihn benutzt. Zum Beispiel kann sich dasselbe Array wie eine Zahl verhalten, und diese Zahl ist seine Länge. Es kann sich wie ein String verhalten, in dem seine Elemente verbunden sind. Oder es kann sich wie ein Wahrheitswert verhalten, der zeigt, ob das Array leer ist. Alles hängt davon ab, was der Code um das Array herum verlangt.

Der Kontext erklärt vieles in Raku, was sonst vielleicht überraschend aussieht. Er erklärt, warum `+@array` eine Zahl ist. Er erklärt, warum sich ein Array in einem Skalar wie ein einzelnes Element verhält. Und er erklärt, warum `if @array` prüft, ob das Array leer ist. Dieser Abschnitt behandelt die wichtigsten Kontexte.

{% include nav.html %}
