---
title: Forma postfissa di `for`
---

{% include menu.html %}

Abbiamo già visto altri modificatori di istruzione: [`if` e `else`](/it/essentials/conditional-checks/modifiers) e [`while` e `until`](/it/essentials/loops/modifiers). È un motivo per festeggiare un po', perché il design di Raku è molto coerente.

Quando il corpo del ciclo è breve, puoi scrivere il ciclo `for` in forma postfissa:

```raku
.say for 1..7;
```

Come vedi, gli intervalli sembrano molto naturali con la forma postfissa di `for`.

Questo programma è uguale a una variante più tradizionale:

```raku
for 1..7 -> $n {
    say $n;
}
```

Oppure, se usi la variabile di ciclo predefinita, è uguale a:

```raku
for 1..7 {
    .say;
}
```

Qui, `.say` è la forma abbreviata di `$_.say`.

{% include nav.html %}
