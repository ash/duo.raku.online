---
title: 'Solution: Numeri dei giorni della settimana'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Se scrivi le costanti come coppie, puoi scegliere i numeri. Qui partono da `1`.

1. Se chiami il tipo enum come `Day(5)`, fa una ricerca inversa. Trova la costante con il valore `5`, cioè `Fri`. Allo stesso modo, `Day(1)` dà `Mon`. È il contrario di `Fri.value`, che va dal nome al numero.

{% include nav.html %}
