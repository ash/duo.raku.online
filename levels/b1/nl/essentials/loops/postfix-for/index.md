---
title: Postfix vorm van `for`
---

{% include menu.html %}

Je hebt al andere statementmodificatoren gezien: [`if` en `else`](/nl/essentials/conditional-checks/modifiers) en [`while` en `until`](/nl/essentials/loops/modifiers). Dat is een kleine reden voor een feestje: het ontwerp van Raku is heel consistent.

Bij een korte lusinhoud kun je de postfix-vorm van `for` gebruiken:

```raku
.say for 1..7;
```

Zoals je ziet, passen reeksen heel goed bij de postfix `for`.

Dit programma doet hetzelfde als een meer gebruikelijke versie:

```raku
for 1..7 -> $n {
    say $n;
}
```

Of, als je de standaard lusvariabele gebruikt, hetzelfde als dit:

```raku
for 1..7 {
    .say;
}
```

Hier is `.say` een afkorting van `$_.say`.

{% include nav.html %}
