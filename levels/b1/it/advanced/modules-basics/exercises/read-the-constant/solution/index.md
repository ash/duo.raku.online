---
title: 'Solution: Leggere la costante'
translations_gpt: La soluzione di 'Leggere la costante'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `need Circle` carica il modulo, ma non importa nessun nome. Quindi Raku non riconoscerebbe `$pi` da solo.

1. Il programma raggiunge la variabile `our` attraverso il nome del modulo, come `$Circle::pi`.

{% include nav.html %}
