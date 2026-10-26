---
title: 'Solution: Un modulo shout'
translations_gpt: La soluzione di 'Un modulo per gridare'
---

{% include menu.html %}

Ecco un modo per risolvere il compito. Usa due file.

## Codice

Il modulo, `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

Il programma, `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Puoi trovare entrambi i file sorgente nella directory [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module).

## Output

```console
$ raku -I. shout.raku
HI
```

## Commenti

1. Il tratto `is export` è su `shout`. Quindi ogni programma che usa il modulo può vederla.

1. Il metodo `.uc` restituisce la stringa in maiuscolo, cioè con lettere maiuscole.

{% include nav.html %}
