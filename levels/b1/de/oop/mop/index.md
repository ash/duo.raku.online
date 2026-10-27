---
title: Das Metaobjektprotokoll
translations_gpt:
---

{% include menu.html %}

Jede Klasse, jede Rolle und jeder Typ in Raku wird durch ein anderes Objekt beschrieben, das _Metaobjekt_. Das Metaobjekt kennt den Namen des Typs und seinen Platz im Vererbungsbaum. Es kennt auch die Attribute und Methoden des Typs. Mit diesen Metaobjekten arbeiten Sie über das _Metaobjektprotokoll_, kurz MOP.

Einen kleinen Teil davon haben Sie schon benutzt: `.^name` ist ein MOP-Aufruf. Dieser Abschnitt erklärt die Syntax `.^` gründlich. Er zeigt die nützlichsten Metamethoden, mit denen Sie in einen Typ hineinsehen. Und er zeigt, dass Sie mit dem MOP einer Klasse sogar Methoden hinzufügen können. Das geht, während das Programm läuft.

{% include nav.html %}
