---
title: Typumwandlung mit Konstruktorformen
---

{% include menu.html %}

Ein ähnlicher Weg ist, ein neues Objekt vom benötigten Typ zu erstellen. Dazu rufen Sie seinen Konstruktor auf, der denselben Namen wie der Typ hat. Zum Beispiel:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Hier wird eine Zeichenkette mit einer Gleitkommazahl in eine Ganzzahl umgewandelt.

{% include nav.html %}
