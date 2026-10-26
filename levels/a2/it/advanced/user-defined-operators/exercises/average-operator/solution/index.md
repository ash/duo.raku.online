---
title: 'Solution: Operatore media'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub infix:<avg>($a, $b) {
    ($a + $b) / 2
}

say 4 avg 10;
```

🦋 Puoi trovare il codice sorgente nel file [average-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/average-operator.raku).

## Output

```
7
```

## Commenti

1. Dichiariamo l'operatore come `infix:<avg>`. Così lo scrivi tra i suoi due operandi, come `+` o `~`.

1. Il corpo somma i due operandi. Poi divide la somma per due. Per `4` e `10`, il risultato è `7`.

{% include nav.html %}
