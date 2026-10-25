---
title: Forma postfissa di `for`
---

{% include menu.html %}

Conosci già altri modificatori di istruzione: [`if` e `else`](/it/essentials/conditional-checks/modifiers) e [`while` e `until`](/it/essentials/loops/modifiers). Questa è una buona notizia. In Raku, cose simili funzionano in modo simile.

Dopo un corpo del ciclo breve, puoi scrivere `for`:

```raku
.say for 1..7;
```

Gli intervalli sembrano molto naturali con `for` alla fine.

Questo programma fa la stessa cosa di un ciclo normale:

```raku
for 1..7 -> $n {
    say $n;
}
```

Oppure fa la stessa cosa di questo ciclo con `$_`:

```raku
for 1..7 {
    .say;
}
```

Qui `.say` è un modo breve per scrivere `$_.say`.

{% include nav.html %}
