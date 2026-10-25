---
title: Postfix-Form von `for`
---

{% include menu.html %}

Sie kennen schon andere Anweisungsmodifikatoren: [`if` und `else`](/de/essentials/conditional-checks/modifiers) und [`while` und `until`](/de/essentials/loops/modifiers). Das ist eine gute Nachricht. In Raku funktionieren ähnliche Dinge auf ähnliche Weise.

Hinter einem kurzen Schleifenkörper kann `for` stehen:

```raku
.say for 1..7;
```

Bereiche sehen mit `for` am Ende sehr natürlich aus.

Dieses Programm macht dasselbe wie eine normale Schleife:

```raku
for 1..7 -> $n {
    say $n;
}
```

Oder es macht dasselbe wie diese Schleife mit `$_`:

```raku
for 1..7 {
    .say;
}
```

Hier ist `.say` eine kurze Schreibweise für `$_.say`.

{% include nav.html %}
