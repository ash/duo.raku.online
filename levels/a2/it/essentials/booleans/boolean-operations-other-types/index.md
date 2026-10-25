---
title: Operazioni booleane con altri tipi
---

{% include menu.html %}

La prossima sezione parla di [come cambiare i dati da un tipo a un altro](/it/essentials/coercion). Ma prima, guarda una caratteristica importante di Raku. Puoi usare le operazioni booleane con stringhe o interi. Allora Raku non cambia i valori in valori booleani. Neanche il risultato è un valore booleano. Guarda questi esempi:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Ecco le regole 📖 [dalla documentazione](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` restituisce il primo valore che per Raku è Falso. Se non c'è un valore così, restituisce l'ultimo valore.
* `||` restituisce il primo valore che per Raku è Vero. Se non c'è un valore così, restituisce l'ultimo valore.
* `^^` restituisce il valore Vero se c'è un solo valore Vero. Se tutti i valori sono Falsi, restituisce l'ultimo valore. Se più di un valore è Vero, restituisce `Nil`.

Qui vediamo un nuovo valore, `Nil`. È un valore ‘null’.

{% include nav.html %}
