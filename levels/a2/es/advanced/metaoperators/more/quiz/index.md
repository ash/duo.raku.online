---
title: Quiz — Hyper y cross
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
say (1, 2, 3) »+» 10;
```

{:.quiz}
1 | (11 12 13)
0 | (11 2 3)
0 | 16
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

El meta-operador hyper `»+»` usa `+` con cada elemento. A la derecha, hay solo un valor, `10`. Raku usa este valor para toda la lista. Así, cada elemento recibe `10` más: `(11 12 13)`. Una reducción `[+]` funciona de otra forma. Convierte la lista en una sola suma, `6`.

</div>

{% include nav.html %}
