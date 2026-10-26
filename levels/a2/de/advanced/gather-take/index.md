---
title: '`gather` und `take`'
---

{% include menu.html %}

`gather` und `take` arbeiten als Paar. Mit ihnen kannst du eine Liste auf viele Arten bauen. Du setzt etwas Code in einen `gather`-Block. Jedes Mal, wenn dieser Code `take` aufruft, kommt ein Wert in eine Liste. Der `gather`-Block gibt dir diese Liste.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Die drei `take`-Aufrufe geben drei Werte. `gather` sammelt sie in einer Liste. Die Liste kommt in `@result`.

Das Paar ist am nützlichsten, wenn die `take`-Aufrufe in normalem Code stehen. Sie können zum Beispiel in einer Schleife mit einer Bedingung stehen. Dann hat die Liste nur die Werte, die du nimmst:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Hier geht die Schleife über die Zahlen von 1 bis 10. Aber der Code nimmt nur die geraden Zahlen. Am Ende hat `@evens` also `2, 4, 6, 8, 10`. Der Operator `%%` prüft, ob eine Zahl ohne Rest teilbar ist.

Diese Teilung der Arbeit macht `gather`/`take` so nützlich. Der Code um `take` herum entscheidet, _wann_ ein Wert entsteht. Und `gather` sammelt still jeden Wert, den du nimmst.

{% include nav.html %}
