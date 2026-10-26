---
title: 'Solution: Un operatore di elevamento al quadrato'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Dichiariamo l'operatore come `postfix:<²>`. Il suo simbolo è un piccolo due in alto. Lo scrivi dopo il suo operando, come in `5²`.

1. Il corpo eleva l'operando alla potenza di due. Così `5²` dà `25`. Puoi usare liberamente un simbolo Unicode. Può essere proprio come in matematica.

{% include nav.html %}
