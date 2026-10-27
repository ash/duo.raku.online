---
title: Das Metaobjektprotokoll
translations_gpt:
---

{% include menu.html %}

In Raku beschreibt ein anderes Objekt jede Klasse, jede Rolle und jeden Typ. Dieses Objekt ist das _Metaobjekt_ des Typs. Das Metaobjekt kennt den Namen des Typs. Es kennt die Attribute und die Methoden des Typs. Es kennt auch den Platz des Typs im Vererbungsbaum. Der Weg zu diesen Metaobjekten ist das _Metaobjektprotokoll_, kurz MOP.

Einen kleinen Teil davon haben Sie schon benutzt: `.^name` ist ein MOP-Aufruf. Dieser Abschnitt erklärt die Syntax `.^` richtig. Er zeigt die nützlichsten Metamethoden. Das sind Methoden eines Metaobjekts. Mit ihnen können Sie in einen Typ hineinsehen. Mit dem MOP können Sie einer Klasse sogar Methoden hinzufügen. Das geht, während das Programm läuft.

{% include nav.html %}
