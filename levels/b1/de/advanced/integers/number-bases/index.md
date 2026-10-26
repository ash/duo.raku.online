---
title: Zahlensysteme
---

{% include menu.html %}

In deinem Code musst du ganze Zahlen nicht im Dezimalsystem schreiben. Raku kennt die drei häufigsten anderen Zahlensysteme direkt. Jedes davon hat sein eigenes Präfix:

```raku
say 0xFF;   # 255  — hexadezimal (Basis 16)
say 0b1010; # 10   — binaer (Basis 2)
say 0o17;   # 15   — oktal (Basis 8)
```

Egal welches Zahlensystem du im Code benutzt, der Wert ist dieselbe ganze Zahl. Nur die Art, wie du sie schreibst, ist anders.

Für alle anderen Zahlensysteme gibt es die Radix-Form `:base<number>`:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Für den umgekehrten Weg rufe die Methode `base` auf. Sie schreibt eine Zahl in einem anderen Zahlensystem und gibt eine Zeichenkette aus Ziffern zurück:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
