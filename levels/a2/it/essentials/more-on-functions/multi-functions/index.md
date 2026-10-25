---
title: Multi-funzioni
---

{% include menu.html %}

Raku ha il _multiple dispatch_ basato sulla firma di una funzione. Con il multiple dispatch, più funzioni possono avere lo stesso nome. Ma prendono tipi diversi di dati di input. Scrivi il dichiaratore `multi` prima di ogni variante della funzione.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Dopo `multi`, puoi non scrivere `sub`.

Qui, la stessa funzione ha due varianti. Il compilatore guarda gli argomenti di ogni chiamata. Poi sceglie la variante giusta. Questo è il multiple dispatch. Confronta queste due chiamate:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

La prima chiamata esegue la variante con parametri interi. La seconda chiamata esegue la seconda variante. Quella variante si aspetta due stringhe.

## Parametri letterali

Ecco un caso interessante. Una variante può avere un valore letterale come parametro. Un letterale è un valore scritto nel codice, come `42`. Guarda queste due varianti:

```raku
multi sub f(42) {say 'Questa è la risposta'}
multi sub f($x) {say "$x non è la risposta"}
```

Raku esegue la prima variante solo quando l'argomento è esattamente 42. In tutti gli altri casi, Raku esegue la seconda variante. L'ordine delle due definizioni non importa.

```raku
f(10); # 10 non è la risposta
f(42); # Questa è la risposta
```

{% include nav.html %}
