---
title: Kontexte
---

{% include menu.html %}

In Raku kann sich ein Wert auf verschiedene Arten verhalten. Das hängt vom _Kontext_ ab. Der Kontext ist die Stelle, wo du den Wert benutzt. Zum Beispiel kann sich ein Array wie eine Zahl verhalten. Diese Zahl ist seine Länge. Dasselbe Array kann sich wie ein String verhalten. Dann sind seine Elemente miteinander verbunden. Es kann sich auch wie `True` oder `False` verhalten. Das zeigt, ob das Array leer ist oder nicht. Der Code um das Array herum entscheidet, was du bekommst.

Der Kontext erklärt viele Dinge in Raku. Ohne ihn sehen diese Dinge seltsam aus. Warum ist zum Beispiel `+@array` eine Zahl? Warum verhält sich ein Array in einem Skalar wie ein einzelnes Element? Und warum prüft `if @array`, ob das Array leer ist? Dieser Abschnitt zeigt die wichtigsten Kontexte.

{% include nav.html %}
