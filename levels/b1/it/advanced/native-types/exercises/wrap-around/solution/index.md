---
title: 'Solution: Wrap around'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Un `uint8` va da `0` a `255`, quindi ha 256 valori diversi. In pratica, l'aritmetica su di esso si fa modulo 256.

1. `250 + 10` darebbe `260`, che non ci sta. Così il valore si riavvolge e arriva `260 - 256 = 4` sopra il fondo. Questo vuol dire che l'overflow non è solo superare il massimo di un passo. Ogni risultato fuori dall'intervallo viene riportato dentro.

1. Anche andare nell'altra direzione causa overflow. In un tipo senza segno, decrementare `0` non può dare `-1`. Quindi si riavvolge al massimo, `255`.

{% include nav.html %}
