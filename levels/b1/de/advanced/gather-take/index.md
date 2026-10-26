---
title: '`gather` und `take`'
---

{% include menu.html %}

Das Paar `gather` und `take` ist ein flexibler Weg, eine Liste zu bauen. Du setzt etwas Code in einen `gather`-Block. Jedes Mal, wenn dieser Code `take` aufruft, kommt der Wert in die Liste, die `gather` zurückgibt.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Die drei `take`-Aufrufe liefern drei Werte, und `gather` sammelt sie in einer Liste. Diese Liste wird in `@result` gespeichert.

Das Paar ist wirklich stark, wenn die `take`-Aufrufe über normalen Code verteilt sind. Ein Beispiel ist eine Schleife mit einer Bedingung. Dann enthält die Liste nur die Werte, die du nehmen wolltest:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Hier geht die Schleife über die Zahlen von 1 bis 10. Aber nur die geraden werden genommen. Am Ende enthält `@evens` also `2, 4, 6, 8, 10`. Der Operator `%%` prüft, ob eine Zahl glatt teilbar ist.

Diese Arbeitsteilung macht `gather`/`take` so nützlich. Der Code drumherum entscheidet, _wann_ ein Wert erzeugt wird. Und `gather` sammelt still alles, was genommen wird.

{% include nav.html %}
