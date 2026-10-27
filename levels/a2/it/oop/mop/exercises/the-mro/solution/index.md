---
title: "Soluzione: L'ordine di risoluzione dei metodi"
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

class C is B {
}

say C.^mro.map(*.^name);
```

🦋 Trova il programma nel file [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Output

```
(C B A Any Mu)
```

## Commenti

1. `.^mro` restituisce una catena di tipi. Raku cerca in questa catena per trovare un metodo.

1. La catena segue la linea di ereditarietà, un passo alla volta. Prima viene `C`. Poi viene il suo genitore, `B`. Poi viene `A`, il genitore di `B`. Alla fine vengono `Any` e `Mu`. Ogni tipo finisce con loro. Con più livelli di classi, l'elenco è solo più lungo.

{% include nav.html %}
