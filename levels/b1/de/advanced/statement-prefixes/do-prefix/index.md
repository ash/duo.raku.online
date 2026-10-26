---
title: do und der Wert eines Blocks
---

{% include menu.html %}

Ein Block für sich ist eine Anweisung, kein Ausdruck. Deshalb kannst du ihn normalerweise keiner Variablen zuweisen. Das `do`-Präfix verwandelt einen Block in einen Ausdruck. Sein Wert ist der Wert der **letzten** Anweisung des Blocks:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Im Block kannst du Variablen deklarieren, mehrere Anweisungen ausführen und ein Ergebnis berechnen. Dann gibt `do` den Wert des Blocks zurück. Das ist praktisch, wenn du mehr als einen Ausdruck brauchst, um einen Wert zu bekommen.

`do` funktioniert auch vor Kontrollfluss-Anweisungen. Dann können auch sie einen Wert zurückgeben:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Hier verwandelt `do given` das ganze `given`/`when` in einen Ausdruck mit dem Wert `positive`. Das funktioniert genauso mit `do if` und `do for`. Kurz gesagt: Mit `do` kannst du einen Block dort verwenden, wo ein Wert erwartet wird. Das funktioniert auch für eine Kontrollstruktur.

{% include nav.html %}
