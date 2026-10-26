---
title: Quiz — Hyper y cross
translations_gpt:
---

{% include menu.html %}

Que imprime el siguiente programa?

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

El meta-operador hyper `»+»` aplica `+` a cada elemento. Hay un solo valor a la derecha, `10`. Por eso, este valor se extiende a toda la lista. Cada elemento recibe `10` más: `(11 12 13)`. Una reducción `[+]`, en cambio, convertiría la lista en una sola suma, `6`.

</div>

{% include nav.html %}
