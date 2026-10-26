---
title: 'Solutio: Numeri dierum septimanae'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Si constantes ut paria scribis, numeros eligere potes. Hic ab `1` incipiunt.

1. Si typum enumerationis ut `Day(5)` vocas, contrario modo quaerit. Constantem cum valore `5` invenit, quae est `Fri`. Eodem modo `Day(1)` dat `Mon`. Hoc est contrarium methodi `Fri.value`, quae a nomine ad numerum it.

{% include nav.html %}
