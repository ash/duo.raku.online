---
title: 'Solution: Elencare i simboli'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

Il programma, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Puoi trovare entrambi i file sorgente nella directory [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols).

## Output

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Commenti

1. `Circle::` è il package del modulo. `.keys` elenca i nomi che contiene. Ogni nome ha il suo sigillo.

1. `.elems` conta questi nomi. Il modulo ha due variabili `our`. Quindi il numero è `2`.

1. `.keys` non dà i nomi in un ordine fisso. Quindi usiamo `.sort`. Mette i nomi in ordine alfabetico. Ora il risultato è sempre lo stesso: `($pi $tau)`. Senza ordinamento, l'ordine dei due nomi può cambiare. Può essere diverso ogni volta che esegui il programma.

{% include nav.html %}
