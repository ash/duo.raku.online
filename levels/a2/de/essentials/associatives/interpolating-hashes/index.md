---
title: Interpolation von Hashes
---

{% include menu.html %}

Sie können Hash-Elemente in Zeichenketten mit doppelten Anführungszeichen interpolieren. Schreiben Sie sie genauso wie im Programmcode: `%data<FR>`. Sie können auch den ganzen Hash interpolieren. Dafür fügen Sie leere spitze Klammern oder leere geschweifte Klammern hinzu: `%data{}`. Dieses Programm zeigt, wie es funktioniert:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Oder:
# say "%data{}";
```

Das Programm gibt die Daten aus, die wir wollen:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Beachten Sie: Ein ganzer Hash kann mehr als eine Zeile ausgeben.

{% include nav.html %}
