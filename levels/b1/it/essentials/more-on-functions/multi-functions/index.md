---
title: Multi-funzioni
---

{% include menu.html %}

Raku ha il _multiple dispatch_ basato sulla firma della funzione. Ti permette di creare funzioni con lo stesso nome ma con tipi diversi di dati di input. Usa il dichiaratore `multi` per ogni variante della funzione.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Va bene non scrivere `sub` dopo `multi`.

Quando ci sono due varianti della stessa funzione, il compilatore esegue il multiple dispatch. La sua scelta dipende dagli argomenti che vede nella chiamata della funzione. Confronta queste due chiamate:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

La prima chiamata esegue la variante con parametri interi. La seconda chiamata esegue l'altra variante, che si aspetta due stringhe.

## Parametri letterali

Un uso interessante delle multi-funzioni sono le varianti con valori letterali come parametri. Guarda le seguenti due varianti:

```raku
multi sub f(42) {say 'Questa è la risposta'}
multi sub f($x) {say "$x non è la risposta"}
```

La prima variante viene eseguita solo quando chiami la funzione proprio con 42. In tutti gli altri casi, Raku usa la seconda variante. Non importa in quale ordine sono definite queste funzioni.

```raku
f(10); # 10 non è la risposta
f(42); # Questa è la risposta
```

{% include nav.html %}
