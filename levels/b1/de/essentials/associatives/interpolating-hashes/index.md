---
title: Interpolation von Hashes
---

{% include menu.html %}

Sie können Hash-Elemente in Zeichenketten mit doppelten Anführungszeichen interpolieren. Schreiben Sie sie so, wie Sie es im Programm selbst tun: `%data<FR>`. Um den ganzen Hash zu interpolieren, fügen Sie ein Paar leere spitze oder geschweifte Klammern hinzu: `%data{}`. Das folgende Programm zeigt, wie das funktioniert:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Oder:
# say "%data{}";
```

Dieses Programm gibt die Daten aus, nach denen wir gefragt haben:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Beachten Sie, dass die Ausgabe mehrere Zeilen lang sein kann, wenn Sie den ganzen Hash ausgeben.

{% include nav.html %}
