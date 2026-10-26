---
title: do und der Wert eines Blocks
---

{% include menu.html %}

Ein Block allein ist eine Anweisung, kein Ausdruck. Also kannst du ihn normalerweise keiner Variablen zuweisen. Das `do`-Präfix macht einen Block zu einem Ausdruck. Sein Wert ist der Wert der **letzten** Anweisung im Block:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Im Block kannst du Variablen anlegen. Du kannst mehrere Anweisungen ausführen und ein Ergebnis berechnen. `do` gibt den Wert des Blocks zurück. Das ist nützlich, wenn ein Ausdruck für einen Wert nicht reicht.

`do` funktioniert auch vor Kontrollfluss-Anweisungen. Diese Anweisungen wählen Code aus oder wiederholen ihn. Mit `do` geben auch sie einen Wert zurück:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Hier macht `do given` das ganze `given`/`when` zu einem Ausdruck. Sein Wert ist `positive`. Das geht auch mit `do if` und `do for`. Kurz gesagt: Mit `do` kann ein Block dort stehen, wo Raku einen Wert braucht. Das geht auch für Kontrollstrukturen.

{% include nav.html %}
