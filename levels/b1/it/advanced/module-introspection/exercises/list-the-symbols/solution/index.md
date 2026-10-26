---
title: 'Solution: Elencare i simboli'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `Circle::` è il package del modulo. `.keys` elenca i nomi che contiene, ognuno con il suo sigillo.

1. `.elems` conta questi nomi. Il modulo definisce due variabili `our`, quindi il conteggio è `2`.

1. `.keys` non garantisce un ordine particolare. Quindi usiamo `.sort`, che dà ogni volta lo stesso risultato alfabetico: `($pi $tau)`. Senza ordinamento, l'ordine dei due nomi potrebbe cambiare da un'esecuzione all'altra.

{% include nav.html %}
