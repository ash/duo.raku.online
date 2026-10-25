---
title: Postfix vorm van `for`
---

{% include menu.html %}

Je kent al andere statementmodificatoren: [`if` en `else`](/nl/essentials/conditional-checks/modifiers) en [`while` en `until`](/nl/essentials/loops/modifiers). Dit is goed nieuws. In Raku werken vergelijkbare dingen op een vergelijkbare manier.

Bij een korte lusinhoud kan `for` erachter staan:

```raku
.say for 1..7;
```

Reeksen zien er heel natuurlijk uit met `for` aan het eind.

Dit programma doet hetzelfde als een gewone lus:

```raku
for 1..7 -> $n {
    say $n;
}
```

Of het doet hetzelfde als deze lus met `$_`:

```raku
for 1..7 {
    .say;
}
```

Hier is `.say` een korte manier om `$_.say` te schrijven.

{% include nav.html %}
