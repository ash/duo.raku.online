---
title: Postfix vorm van `for`
---

{% include menu.html %}

Je kent al andere statementmodificatoren: [`if` en `else`](/nl/essentials/conditional-checks/modifiers) en [`while` en `until`](/nl/essentials/loops/modifiers). Dat is goed nieuws, omdat het ontwerp van Raku heel consistent is.

Als de inhoud van de lus kort is, kun je `for` erachter schrijven:

```raku
.say for 1..7;
```

Reeksen zien er heel natuurlijk uit met deze vorm van `for`.

Dit programma doet hetzelfde als een gewonere lus:

```raku
for 1..7 -> $n {
    say $n;
}
```

Of met de standaard lusvariabele doet het hetzelfde als dit:

```raku
for 1..7 {
    .say;
}
```

Hier is `.say` een korte manier om `$_.say` te schrijven.

{% include nav.html %}
