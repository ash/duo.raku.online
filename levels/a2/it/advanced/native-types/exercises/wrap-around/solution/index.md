---
title: 'Solution: Wrap around'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my uint8 $u = 250;
$u += 10;
say $u;

my uint8 $v = 0;
$v--;
say $v;
```

🦋 Puoi trovare il codice sorgente nel file [wrap-around.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/wrap-around.raku).

## Output

```
4
255
```

## Commenti

1. Un `uint8` va da `0` a `255`. Sono 256 valori diversi. In pratica, tutti i calcoli su di esso sono modulo 256. Il risultato è il resto della divisione per 256.

1. Di solito, `250 + 10` fa `260`. Ma `260` non ci sta. Così il valore si riavvolge. Riparte dal fondo e arriva a `260 - 256 = 4`. L'overflow non è solo un passo oltre il massimo. Ogni risultato fuori dall'intervallo torna nell'intervallo.

1. Anche nell'altra direzione c'è overflow. In un tipo senza segno, decrementare `0` non può dare `-1`. Così il valore si riavvolge al valore più grande, `255`.

{% include nav.html %}
