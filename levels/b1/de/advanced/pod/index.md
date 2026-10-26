---
title: Code dokumentieren
---

{% include menu.html %}

Raku hat eine Auszeichnungssprache für Dokumentation, die in die Sprache eingebaut ist. Sie heißt _Pod_ oder _Rakudoc_. Du schreibst die Dokumentation direkt in deine Quelldatei, mit `=`-Direktiven. Der Compiler kann sie als formatierten Text zeigen. Er kann sie auch deinem Programm zur Verfügung stellen.

Dieser Abschnitt behandelt die grundlegenden Pod-Direktiven und die Formatierungscodes zum Markieren von Text. Er zeigt auch, wie du an die Dokumentation kommst. Du bekommst sie als formatierten Text mit `raku --doc` oder als Daten über die Variable `$=pod`.

{% include nav.html %}
