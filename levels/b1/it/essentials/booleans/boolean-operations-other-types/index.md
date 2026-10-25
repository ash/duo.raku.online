---
title: Operazioni booleane con altri tipi
---

{% include menu.html %}

Nella prossima sezione parleremo di [come convertire i dati da un tipo a un altro](/it/essentials/coercion). Ma prima è importante notare una caratteristica di Raku. Puoi usare le operazioni booleane con stringhe o interi. In questo caso, i valori non vengono convertiti in booleani. Neanche il risultato è un valore booleano. Guarda questi esempi:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Leggiamo le regole 📖 [dalla documentazione](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` restituisce il primo argomento che è Falso come booleano. Se non ce n'è nessuno, restituisce l'ultimo argomento.
* `||` restituisce il primo argomento che è Vero come booleano. Se non ce n'è nessuno, restituisce l'ultimo argomento.
* `^^` restituisce l'argomento Vero se ce n'è esattamente uno. Se tutti gli argomenti sono Falsi, restituisce l'ultimo. Se più di un argomento è Vero, restituisce `Nil`.

Nota che abbiamo appena incontrato `Nil`, che è un valore ‘null’.

{% include nav.html %}
