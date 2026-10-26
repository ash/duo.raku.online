---
title: Sets, Bags und Mixes
---

{% include menu.html %}

Raku hat Arrays und Hashes. Raku hat auch ein paar besondere Container für Gruppen von Werten. Der einfachste ist das `Set`. Seine Werte sind _verschieden_, also ist jeder Wert anders als die anderen. Die Werte in einem Set haben keine Reihenfolge. Ein Wert ist im Set oder nicht. Wenn ein Wert zweimal kommt, ignoriert das Set den zweiten.

Für ein Set benutze die Routine `set`. Werte, die sich wiederholen, werden zu einem Wert:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Wir geben dem Set fünf Zahlen. Aber es hat nur drei Elemente. Der Grund: `1` und `2` kommen mehr als einmal vor.

Einem Set stellst du meistens eine Hauptfrage. Ist ein Wert im Set? Der Operator `∈` beantwortet sie. Du liest `∈` als "ist Element von". Er gibt einen Booleschen Wert zurück, `True` oder `False`:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Vielleicht willst du nur einfache ASCII-Zeichen benutzen. Dann schreib denselben Operator als `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Die nächsten Themen zeigen, wie du Sets kombinierst. Sie zeigen auch Bags und Mixes. Bags und Mixes sind enge Verwandte von Sets.

{% include nav.html %}
