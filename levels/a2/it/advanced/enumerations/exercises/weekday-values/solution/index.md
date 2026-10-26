---
title: 'Solution: Numeri dei giorni della settimana'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Puoi trovare il codice sorgente nel file [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Output

```
Fri
Mon
```

## Commenti

1. Scriviamo le costanti come coppie. Così possiamo scegliere i numeri. Qui partono da `1`.

1. `Day(5)` chiama il tipo enum. Cerca nell'altra direzione, dal numero alla costante. Trova la costante con il valore `5`. Questa costante è `Fri`. Allo stesso modo, `Day(1)` dà `Mon`. `Fri.value` fa il contrario. Va dal nome al numero.

{% include nav.html %}
