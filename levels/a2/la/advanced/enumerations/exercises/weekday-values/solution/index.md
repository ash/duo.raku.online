---
title: 'Solutio: Numeri dierum septimanae'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Inveni codicem fontem in archivo [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Exitus

```
Fri
Mon
```

## Commentarii

1. Constantes ut paria scribimus. Itaque numeros eligere possumus. Hic ab `1` incipiunt.

1. `Day(5)` typum enumerationis vocat. Contrario modo quaerit, a numero ad constantem. Constantem cum valore `5` invenit. Haec constans est `Fri`. Eodem modo `Day(1)` dat `Mon`. `Fri.value` contrarium facit. A nomine ad numerum it.

{% include nav.html %}
