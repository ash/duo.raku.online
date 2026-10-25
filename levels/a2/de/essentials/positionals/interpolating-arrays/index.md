---
title: Interpolation von Arrays
---

{% include menu.html %}

Sie können Array-Elemente in Zeichenketten mit doppelten Anführungszeichen interpolieren. Schreiben Sie sie genauso wie im Programmcode: `@data[1]`. Um das ganze Array zu interpolieren, fügen Sie ein Paar leere Klammern hinzu: `@data[]`. Dieses Programm zeigt, wie es funktioniert:

```raku
my @data = 10, 20, 30;

say "Erstes: @data[0], letztes: @data[1]";
say "Alle Elemente: @data[]";
```

Das Programm gibt die Daten aus, die wir wollen:

```console
$ raku t.raku 
Erstes: 10, letztes: 20
Alle Elemente: 10 20 30
```

{% include nav.html %}
