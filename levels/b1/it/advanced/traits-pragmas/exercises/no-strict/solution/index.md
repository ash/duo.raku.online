---
title: 'Solution: Rilassare strict'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
no strict;

$a = 10;
$b = 20;
say $a + $b;
```

🦋 Puoi trovare il codice sorgente nel file [no-strict.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/no-strict.raku).

## Output

```
30
```

## Commenti

1. `no strict` disattiva la regola per cui le variabili devono essere dichiarate. Quindi puoi assegnare valori a `$a` e `$b` senza un `my`. Con il `strict` predefinito, ognuna di queste righe darebbe un errore di compilazione.

1. Dopo l'assegnazione, le variabili si comportano come al solito, quindi `$a + $b` fa `30`. Questa regola più debole è lessicale. Dura solo fino alla fine dello scope in cui compare `no strict`.

1. Questa è solo una dimostrazione, e non la consigliamo nella pratica. `strict` è attivo di default per un buon motivo. Trova gli errori di battitura nei nomi delle variabili in fase di compilazione. Nel codice reale, tienilo attivo e dichiara le tue variabili con `my`.

{% include nav.html %}
