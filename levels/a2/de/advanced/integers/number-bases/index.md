---
title: Zahlensysteme
---

{% include menu.html %}

Du kannst eine ganze Zahl auch in anderen Zahlensystemen schreiben. Es muss nicht die Basis 10 sein. Die Basis 10 ist das Dezimalsystem. Raku kennt die drei häufigsten anderen Zahlensysteme. Dafür brauchst du nichts extra. Jedes Zahlensystem hat sein eigenes Präfix:

```raku
say 0xFF;   # 255  — hexadezimal (Basis 16)
say 0b1010; # 10   — binaer (Basis 2)
say 0o17;   # 15   — oktal (Basis 8)
```

Du kannst im Code jedes Zahlensystem benutzen. Der Wert ist immer dieselbe ganze Zahl. Nur die Schreibweise ist anders.

Für jedes andere Zahlensystem benutze die Form `:base<number>`. Sie heißt Radix-Form:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Du kannst auch den umgekehrten Weg gehen. Nimm eine Zahl und schreib sie in einem anderen Zahlensystem. Rufe dafür die Methode `base` auf. Sie liefert eine Zeichenkette aus Ziffern:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
