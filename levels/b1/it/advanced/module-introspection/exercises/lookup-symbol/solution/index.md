---
title: 'Solution: Cercare un simbolo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `Circle::` è lo stash del modulo. Usare un nome come chiave, come `Circle::{'$pi'}`, dà il valore salvato sotto quel nome. La chiave deve includere il sigillo, proprio come i nomi elencati.

1. Questo dà lo stesso valore del nome qualificato `$Circle::pi`. Ma qui il nome è una stringa ordinaria. Quindi si può costruire a tempo di esecuzione. Non serve scriverlo nel codice sorgente.

{% include nav.html %}
