---
title: 'Solution: Una somma interna'
translations_gpt: Italian
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub compute {
    sub add($x, $y) {
        $x + $y;
    }

    add(2, 3) + add(4, 5);
}

say compute;
```

🦋 Puoi trovare il codice sorgente nel file [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Output

```
14
```

## Commenti

1. `compute` usa l'helper annidato `add` due volte. `add(2, 3)` vale `5`, e `add(4, 5)` vale `9`.

1. La loro somma è `14`. `compute` restituisce questo valore.

{% include nav.html %}
