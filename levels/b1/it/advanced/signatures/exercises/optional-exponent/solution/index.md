---
title: 'Solution: Un esponente opzionale'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il `?` dopo `$exp` rende opzionale il parametro. Quindi puoi chiamare `power` con la sola base.

1. Quando `$exp` manca, è indefinito, e `//` dà il valore di riserva `2`. Quindi `power(5)` eleva la base al quadrato e ottiene `25`. Con un esponente, come in `power(5, 3)`, viene usato invece quel valore. Il risultato è `125`.

{% include nav.html %}
