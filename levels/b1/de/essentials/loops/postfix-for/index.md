---
title: Postfix-Form von `for`
---

{% include menu.html %}

Wir haben bereits andere Anweisungsmodifikatoren gesehen: [`if` und `else`](/de/essentials/conditional-checks/modifiers) und [`while` und `until`](/de/essentials/loops/modifiers). Das ist ein Grund, ein wenig zu feiern, denn das Design von Raku ist sehr konsistent.

Wenn der Schleifenkörper kurz ist, können Sie die `for`-Schleife in einer Postfix-Form schreiben:

```raku
.say for 1..7;
```

Wie Sie sehen, wirken Bereiche mit der Postfix-Form von `for` sehr natürlich.

Dieses Programm ist dasselbe wie eine traditionellere Variante:

```raku
for 1..7 -> $n {
    say $n;
}
```

Oder, wenn Sie die Standard-Schleifenvariable verwenden, ist es dasselbe wie:

```raku
for 1..7 {
    .say;
}
```

Hier ist `.say` die Kurzform von `$_.say`.

{% include nav.html %}
