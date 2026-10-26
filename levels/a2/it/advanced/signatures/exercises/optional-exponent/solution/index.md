---
title: 'Solution: Un esponente opzionale'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Puoi trovare il codice sorgente nel file [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Output

```
25
125
```

## Commenti

1. Il `?` dopo `$exp` lo rende opzionale. Così puoi chiamare `power` solo con la base.

1. Se non passi `$exp`, è indefinito. Allora `//` dà il valore `2`. Così `power(5)` eleva la base al quadrato e ottiene `25`. Ora guarda `power(5, 3)`. Qui l'esponente c'è. Così il codice lo usa e ottiene `125`.

{% include nav.html %}
