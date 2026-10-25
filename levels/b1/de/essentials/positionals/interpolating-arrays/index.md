---
title: Interpolation von Arrays
---

{% include menu.html %}

Sie können Array-Elemente in Zeichenketten mit doppelten Anführungszeichen interpolieren. Schreiben Sie sie so, wie Sie es im Programm selbst tun: `@data[1]`. Um das ganze Array zu interpolieren, fügen Sie ein Paar leere Klammern hinzu: `@data[]`. Das folgende Programm zeigt, wie das funktioniert:

```raku
my @data = 10, 20, 30;

say "Erstes: @data[0], letztes: @data[1]";
say "Alle Elemente: @data[]";
```

Dieses Programm gibt die Daten aus, nach denen wir gefragt haben:

```console
$ raku t.raku 
Erstes: 10, letztes: 20
Alle Elemente: 10 20 30
```

{% include nav.html %}
