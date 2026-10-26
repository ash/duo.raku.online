---
title: q, qq und Q
---

{% include menu.html %}

Es gibt drei grundlegende Quoting-Operatoren. Der Unterschied ist, wie viel sie den Text in ihnen verarbeiten:

* `q` — wie einfache Anführungszeichen: fast alles bleibt, wie es ist
* `qq` — wie doppelte Anführungszeichen: Variablen und Escape-Sequenzen werden interpoliert
* `Q` — die wörtlichste Form von allen: **nichts** wird verarbeitet

Jeder von ihnen nimmt den Text zwischen einem Paar von Trennzeichen. Das bekannte `'…'` ist nur eine kurze Schreibweise für `q`. Genauso ist `"…"` die Kurzform für `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` lässt `$name`, wie es ist, aber `qq` interpoliert die Variable. Backslash-Escape-Sequenzen wie `\n` funktionieren genauso. Nur `qq` (und `"…"`) macht aus `\n` einen echten Zeilenumbruch. Sowohl `q` als auch `Q` lassen es als zwei Zeichen stehen, `\` und `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Wie unterscheiden sich also `q` und `Q`? Wie einfache Anführungszeichen verarbeitet `q` noch eine *kleine* Menge von Escape-Sequenzen. Ein verdoppelter Backslash `\\` wird zu einem, und du kannst das schließende Trennzeichen escapen. Die einfache `Q`-Form verarbeitet dagegen **gar nichts**:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

Du kannst beliebige Trennzeichen benutzen, zum Beispiel `q{…}`, `q[…]`, `q/…/` oder `q!…!`. Das ist praktisch, wenn der Text selbst Anführungszeichen enthält. Die drei Operatoren sind die Grundlage. Das nächste Thema zeigt, wie du mit [_Adverbien_](/de/advanced/quoting/adverbs) genau wählen kannst, welche Funktionen eingeschaltet sind.

{% include nav.html %}
