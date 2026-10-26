---
title: Quiz — Datumsarithmetik
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
say Date.new(2026, 1, 28) + 5;
```

{:.quiz}
1 | 2026-02-02
0 | 2026-01-33
0 | 2026-02-05
0 | 2026-02-03

{% include quiz.html %}

<div class="extended-explanation">

Wenn du eine ganze Zahl addierst, geht das Datum um so viele Tage nach vorne. Es wechselt automatisch in den nächsten Monat. Fünf Tage nach dem 28.01.2026 ist der zweite Februar. Das sind die letzten drei Tage im Januar (29, 30, 31) und dann noch zwei.

</div>

{% include nav.html %}
