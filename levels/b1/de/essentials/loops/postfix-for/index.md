---
title: Postfix-Form von `for`
---

{% include menu.html %}

Sie haben schon andere Anweisungsmodifikatoren gesehen: [`if` und `else`](/de/essentials/conditional-checks/modifiers) und [`while` und `until`](/de/essentials/loops/modifiers). Das ist ein kleiner Grund zum Feiern: Das Design von Raku ist sehr einheitlich.

Bei einem kurzen Schleifenkörper können Sie die Postfix-Form von `for` verwenden:

```raku
.say for 1..7;
```

Wie Sie sehen, passen Bereiche sehr gut zum Postfix-`for`.

Dieses Programm macht dasselbe wie eine üblichere Variante:

```raku
for 1..7 -> $n {
    say $n;
}
```

Oder, wenn Sie die Standard-Schleifenvariable verwenden, dasselbe wie das hier:

```raku
for 1..7 {
    .say;
}
```

Hier ist `.say` kurz für `$_.say`.

{% include nav.html %}
