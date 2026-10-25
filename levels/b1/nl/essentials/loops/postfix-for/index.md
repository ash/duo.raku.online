---
title: Postfix vorm van `for`
---

{% include menu.html %}

We hebben al andere statementmodificatoren gezien: [`if` en `else`](/nl/essentials/conditional-checks/modifiers) en [`while` en `until`](/nl/essentials/loops/modifiers). Dat is een reden voor een klein feestje, omdat het ontwerp van Raku heel consistent is.

Als de lusinhoud kort is, kun je de `for`-lus in een postfix-vorm schrijven:

```raku
.say for 1..7;
```

Zoals je ziet, zien reeksen er heel natuurlijk uit met de postfix-vorm van `for`.

Dit programma is hetzelfde als een meer traditionele versie:

```raku
for 1..7 -> $n {
    say $n;
}
```

Of, als je de standaard lusvariabele gebruikt, is het hetzelfde als:

```raku
for 1..7 {
    .say;
}
```

Hier is `.say` de korte vorm van `$_.say`.

{% include nav.html %}
