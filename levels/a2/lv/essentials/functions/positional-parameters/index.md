---
title: Pozicionālie parametri
---

{% include menu.html %}

Funkcijas parametru secība ir svarīga. Piemēram, paņemiet funkciju. Tā atrod starpību starp diviem skaitļiem:

```raku
sub diff($a, $b) { $a - $b }
```

Protams, `diff(10, 20)` un `diff(20, 10)` dod dažādus rezultātus.

Funkcijā augstāk parametri ir saraksts ar komatiem. Tādus parametrus sauc par _pozicionāliem_. Izsaukumā argumentu secība ir svarīga. Tā nosaka katra parametra nozīmi.

{% include nav.html %}
