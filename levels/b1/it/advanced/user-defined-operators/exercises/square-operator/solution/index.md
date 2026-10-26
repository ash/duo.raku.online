---
title: 'Solution: Un operatore di elevamento al quadrato'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Puoi trovare il codice sorgente nel file [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Output

```
25
```

## Commenti

1. L'operatore è dichiarato come `postfix:<²>`. Quindi il suo simbolo, il due ad apice, viene dopo il suo operando, come in `5²`.

1. Il corpo eleva l'operando alla potenza di due, quindi `5²` dà `25`. Niente ti impedisce di usare un simbolo Unicode simile alla solita notazione matematica.

{% include nav.html %}
