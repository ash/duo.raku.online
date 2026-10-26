---
title: Spezielle und dynamische Variablen
---

{% include menu.html %}

Ein Variablenname in Raku kann nach dem Sigil ein zweites Zeichen haben. Dieses Zeichen ist ein _Twigil_. Das Twigil sagt dir, wo die Variable lebt. Es sagt dir auch, wie Raku sie findet. Zum Beispiel kann die Variable dynamisch sein. Oder der Compiler kann sie dir geben. Oder sie kann zu einem Objekt gehören.

Dieser Abschnitt erklärt Twigils. Dann schaut er sich die nützlichste Art genau an: _dynamische_ Variablen. Raku findet eine normale Variable über ihren lexikalischen Geltungsbereich. Das ist der Block, in dem du sie deklarierst. Eine dynamische Variable findet Raku auf eine andere Weise. Raku sucht dabei im Aufrufstapel. Der Aufrufstapel zeigt, welcher Code den aktuellen Code aufgerufen hat. Zuletzt zeigt der Abschnitt die speziellen Variablen, die Raku dir gibt.

{% include nav.html %}
