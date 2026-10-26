---
title: Quiz — Monate addieren
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Ein Monat nach dem 31.01. ist der "31.02.". Aber diesen Tag gibt es nicht. Also gibt dir `later` stattdessen den letzten echten Tag dieses Monats. Das ist der 28.02.2026. Das Jahr 2026 ist kein Schaltjahr. Also hat der Februar 28 Tage.

</div>

{% include nav.html %}
