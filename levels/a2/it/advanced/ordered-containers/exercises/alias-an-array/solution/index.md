---
title: 'Solution: Alias di un array'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Puoi trovare il codice sorgente nel file [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Output

```
[10 20 30 40]
```

## Commenti

1. Guarda il binding `@alias := @original`. Rende `@alias` un secondo nome per lo stesso contenitore array. Non copia l'array.

1. Questa volta, il programma cambia l'array tramite `@original`. Cambia la struttura: `push` aggiunge un elemento. Tutti e due i nomi appartengono allo stesso identico contenitore. Così anche `@alias` vede il nuovo elemento. I due nomi funzionano esattamente nello stesso modo. Puoi usare tutti e due i nomi per leggere o cambiare l'array.

{% include nav.html %}
