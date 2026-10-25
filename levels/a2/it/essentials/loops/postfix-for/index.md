---
title: Forma postfissa di `for`
---

{% include menu.html %}

Conosci già altri modificatori di istruzione: [`if` e `else`](/it/essentials/conditional-checks/modifiers) e [`while` e `until`](/it/essentials/loops/modifiers). È una buona notizia, perché Raku ha un design molto coerente.

Quando il corpo del ciclo è breve, puoi scrivere `for` dopo il corpo:

```raku
.say for 1..7;
```

Gli intervalli sembrano molto naturali con questa forma di `for`.

Questo programma fa la stessa cosa di un ciclo più comune:

```raku
for 1..7 -> $n {
    say $n;
}
```

Oppure, con la variabile di ciclo predefinita, fa la stessa cosa di questo:

```raku
for 1..7 {
    .say;
}
```

Qui `.say` è un modo breve per scrivere `$_.say`.

{% include nav.html %}
