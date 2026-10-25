---
title: Typumwandlung mit Konstruktorformen
---

{% include menu.html %}

Es gibt einen ähnlichen Weg. Sie können ein neues Objekt vom gewünschten Typ erstellen. Dafür rufen Sie den Konstruktor des Typs auf. Ein Konstruktor erstellt neue Objekte. Er heißt genauso wie der Typ. Zum Beispiel:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Hier enthält die Zeichenkette eine Gleitkommazahl. Raku wandelt sie in eine Ganzzahl um.

{% include nav.html %}
