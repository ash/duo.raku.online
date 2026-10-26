---
title: 'Solution: Leggere la costante'
translations_gpt: La soluzione di 'Leggere la costante'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

Il programma, `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Puoi trovare entrambi i file sorgente nella directory [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant).

## Output

```console
$ raku -I. read-pi.raku
3.14
```

## Commenti

1. `need Circle` carica il modulo. Ma non importa nessun nome. Quindi Raku non conosce `$pi` da solo, senza il nome del modulo.

1. Arrivi alla variabile `our` attraverso il nome del modulo. La scrivi come `$Circle::pi`.

{% include nav.html %}
