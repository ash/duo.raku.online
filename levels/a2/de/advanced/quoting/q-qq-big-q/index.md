---
title: q, qq und Q
---

{% include menu.html %}

Es gibt drei grundlegende Quoting-Operatoren. Sie verändern den Text in ihnen unterschiedlich stark:

* `q` — wie einfache Anführungszeichen: fast der ganze Text bleibt, wie er ist
* `qq` — wie doppelte Anführungszeichen: Raku interpoliert Variablen und Escape-Sequenzen
* `Q` — die wörtlichste Form: Raku ändert **nichts**

Jeder von ihnen nimmt den Text zwischen zwei Trennzeichen. Trennzeichen sind die Zeichen um den Text herum. Du kennst schon `'…'`. Das ist eine Kurzform für `q`. Und `"…"` ist eine Kurzform für `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` ändert `$name` nicht. `qq` interpoliert die Variable. Backslash-Escape-Sequenzen wie `\n` funktionieren genauso. Nur `qq` und `"…"` machen aus `\n` einen echten Zeilenumbruch. `q` und `Q` lassen es beide als zwei Zeichen stehen: `\` und `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Was ist also der Unterschied zwischen `q` und `Q`? `q` ist wie einfache Anführungszeichen. Es verarbeitet noch eine *kleine* Menge von Escape-Sequenzen. Ein doppelter Backslash `\\` wird zu einem Backslash. Du kannst auch das schließende Trennzeichen mit einem Backslash escapen. Aber die einfache `Q`-Form ändert **gar nichts**:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

Du kannst beliebige Trennzeichen benutzen: `q{…}`, `q[…]`, `q/…/`, `q!…!`. Das hilft, wenn der Text selbst Anführungszeichen enthält. Diese drei Operatoren sind die Grundlage. Das nächste Thema zeigt [_Adverbien_](/de/advanced/quoting/adverbs). Mit ihnen wählst du genau, welche Funktionen eingeschaltet sind.

{% include nav.html %}
