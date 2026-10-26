---
title: 'Solution: Rilassare strict'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `no strict` disattiva una regola. La regola dice che devi dichiarare tutte le variabili. Così puoi assegnare valori a `$a` e `$b` senza `my`. Con il normale `strict`, queste righe danno errori durante la compilazione.

1. Dopo l'assegnazione, le variabili funzionano come al solito. Così `$a + $b` fa `30`. Questo cambio della regola è lessicale. Dura solo fino alla fine dello scope attuale. Questo è lo scope con `no strict`.

1. Questa è solo una dimostrazione. Non la consigliamo nella pratica. `strict` è attivo di default per un buon motivo. Trova gli errori di battitura nei nomi delle variabili durante la compilazione. Nel codice vero, tienilo attivo. Dichiara le tue variabili con `my`.

{% include nav.html %}
