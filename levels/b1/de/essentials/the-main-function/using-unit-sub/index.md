---
title: Verwendung von `unit sub`
---

{% include menu.html %}

Das Konstrukt `unit sub` ist sehr praktisch. Es macht den Rest der Datei zum Körper der Funktion! Mit `MAIN` können Sie damit die geschweiften Klammern um fast die ganze Datei weglassen. Auch die zusätzliche Einrückung brauchen Sie nicht.

Das folgende Beispielprogramm zeigt, wie Sie `unit sub` verwenden.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "Die Summe von $a und $b ist $sum.";
```

In dieser Datei ist `MAIN` die einzige Funktion. Wenn das auch für Ihr Programm gilt, denken Sie darüber nach, `unit sub MAIN` wie oben gezeigt zu verwenden.

{% include nav.html %}
