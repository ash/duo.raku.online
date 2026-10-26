---
title: Spezielle und dynamische Variablen
---

{% include menu.html %}

Ein Variablenname in Raku kann nach dem Sigil ein zweites Zeichen haben. Dieses Zeichen heißt _Twigil_. Das Twigil sagt dir, wo die Variable lebt und wie Raku sie findet. Zum Beispiel zeigt es, ob die Variable einen dynamischen Geltungsbereich hat. Oder es zeigt, dass die Variable vom Compiler kommt oder zu einem Objekt gehört.

Dieser Abschnitt erklärt Twigils. Dann schaut er sich die nützlichste Art genauer an, die _dynamischen_ Variablen. Raku sucht sie über den Aufrufstapel, nicht über den üblichen lexikalischen Geltungsbereich. Zum Schluss gibt der Abschnitt einen Überblick über die speziellen Variablen, die Raku für dich definiert.

{% include nav.html %}
