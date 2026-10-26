---
title: Quiz — Monate addieren
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
say Date.new(2026, 1, 31).later(:months(1));
```

{:.quiz}
1 | 2026-02-28
0 | 2026-03-03
0 | 2026-02-31
0 | 2026-03-31

{% include quiz.html %}

<div class="extended-explanation">

Ein Monat nach dem 31.01. wäre der "31.02.", aber diesen Tag gibt es nicht. Deshalb setzt `later` das Ergebnis auf den letzten echten Tag dieses Monats zurück. Das ergibt den 28.02.2026. Weil 2026 kein Schaltjahr ist, hat der Februar nur 28 Tage.

</div>

{% include nav.html %}
