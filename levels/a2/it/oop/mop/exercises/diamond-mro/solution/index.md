---
title: 'Soluzione: Un rombo di classi'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class A {
}

class B is A {
}

class C is A {
}

class D is B is C {
}

say D.^mro.map(*.^name);
```

🦋 Trova il programma nel file [diamond-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/diamond-mro.raku).

## Output

```
(D B C A Any Mu)
```

## Commenti

1. `D` eredita da due genitori allo stesso tempo. `class D is B is C` ha un `is` per ogni genitore. Questa si chiama ereditarietà multipla. Le classi `A`, `B`, `C` e `D` formano un *rombo*. Ci sono due strade da `D` fino ad `A`. `A` è il genitore sia di `B` sia di `C`.

1. `.^mro` trasforma il rombo in una sola linea piatta. Raku cerca in questo ordine. Prima viene `D`. Poi vengono i suoi genitori, `B` e `C`. Vengono nell'ordine del codice. Poi viene `A`, il genitore comune. Alla fine vengono `Any` e `Mu`.

1. Sia `B` sia `C` portano ad `A`. Ma il tipo `A` è nell'elenco solo **una volta**. E viene dopo tutti e due. Questo è lo scopo di un ordine di risoluzione dei metodi. Raku visita ogni tipo esattamente una volta. Un genitore non viene mai prima di una sua figlia. Quindi Raku trova sempre prima un metodo in `B`. Lo trova prima del metodo in `A` che sovrascrive.

{% include nav.html %}
