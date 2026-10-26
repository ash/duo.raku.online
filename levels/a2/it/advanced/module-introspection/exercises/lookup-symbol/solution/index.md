---
title: 'Solution: Cercare un simbolo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

Il programma, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Puoi trovare entrambi i file sorgente nella directory [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Output

```console
$ raku -I. lookup.raku
3.14
```

## Commenti

1. `Circle::` è lo stash del modulo. Usi un nome come chiave: `Circle::{'$pi'}`. Questo dà il valore di quel nome. La chiave deve avere il sigillo. Anche i nomi nella lista lo hanno.

1. Ottieni lo stesso valore del nome completo `$Circle::pi`. Ma qui il nome è una normale stringa. Quindi il programma può creare il nome mentre è in esecuzione. Non devi scriverlo nel codice sorgente.

{% include nav.html %}
