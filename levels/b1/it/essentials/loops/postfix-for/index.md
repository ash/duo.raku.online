---
title: Forma postfissa di `for`
---

{% include menu.html %}

Hai già visto altri modificatori di istruzione: [`if` e `else`](/it/essentials/conditional-checks/modifiers) e [`while` e `until`](/it/essentials/loops/modifiers). È un piccolo motivo per festeggiare: il design di Raku è molto coerente.

Con un corpo del ciclo breve, puoi usare la forma postfissa di `for`:

```raku
.say for 1..7;
```

Come vedi, gli intervalli vanno molto bene con il `for` postfisso.

Questo programma fa la stessa cosa di una versione più comune:

```raku
for 1..7 -> $n {
    say $n;
}
```

Oppure, se usi la variabile di ciclo predefinita, è uguale a questo:

```raku
for 1..7 {
    .say;
}
```

Qui `.say` è la forma breve di `$_.say`.

{% include nav.html %}
