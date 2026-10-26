---
title: 'Solution: Un modulo di matematica'
translations_gpt: La soluzione di 'Un modulo di matematica'
---

{% include menu.html %}

Ecco una possibile soluzione. Usa due file.

## Codice

Il modulo, `Maths.rakumod`:

```raku
unit module Maths;

sub square($n) is export {
    $n * $n
}
```

Il programma, `maths.raku`:

```raku
use Maths;

say square(6);
```

🦋 Puoi trovare entrambi i file sorgente nella directory [exercises/advanced/modules-basics/maths-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/maths-module).

## Output

```console
$ raku -I. maths.raku
36
```

## Commenti

1. Il modulo contrassegna `square` con `is export`. È questo che la rende disponibile al programma che usa il modulo.

1. L'opzione `-I.` aggiunge la directory corrente al percorso di ricerca dei moduli. In questo modo Raku trova `Maths.rakumod` accanto al programma.

{% include nav.html %}
