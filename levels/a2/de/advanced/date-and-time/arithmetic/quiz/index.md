---
title: Quiz — Datumsarithmetik
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Du addierst eine ganze Zahl. Das Datum geht so viele Tage nach vorne. Es geht von selbst in den nächsten Monat. Wir zählen fünf Tage ab dem 28.01.2026. Der Januar hat noch drei Tage: 29, 30 und 31. Dann kommen noch zwei Tage. Also ist die Antwort der zweite Februar.

</div>

{% include nav.html %}
