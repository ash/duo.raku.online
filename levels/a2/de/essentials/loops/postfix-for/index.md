---
title: Postfix-Form von `for`
---

{% include menu.html %}

Sie kennen schon andere Anweisungsmodifikatoren: [`if` und `else`](/de/essentials/conditional-checks/modifiers) und [`while` und `until`](/de/essentials/loops/modifiers). Das ist eine gute Nachricht, denn Raku hat ein sehr einheitliches Design.

Wenn der Körper der Schleife kurz ist, können Sie `for` dahinter schreiben:

```raku
.say for 1..7;
```

Bereiche sehen mit dieser Form von `for` sehr natürlich aus.

Dieses Programm macht dasselbe wie eine üblichere Schleife:

```raku
for 1..7 -> $n {
    say $n;
}
```

Oder mit der Standard-Schleifenvariablen macht es dasselbe wie das hier:

```raku
for 1..7 {
    .say;
}
```

Hier ist `.say` eine kurze Schreibweise für `$_.say`.

{% include nav.html %}
