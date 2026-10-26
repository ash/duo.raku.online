---
title: 'Solution: Join con due punti'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
say <a b c>.reverse.join: '-';
```

🦋 Puoi trovare il codice sorgente nel file [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Output

```
c-b-a
```

## Commenti

1. `.reverse` è nel mezzo della catena, quindi mantiene la sua forma solita. `join` viene per ultimo, quindi può usare i due punti. Passa `'-'` esattamente come `join('-')`.

1. La lista invertita, `c, b, a`, viene poi unita con dei trattini, e si ottiene `c-b-a`. La forma con i due punti funziona con valori normali, non solo con i blocchi.

{% include nav.html %}
