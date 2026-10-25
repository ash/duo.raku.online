---
title: Pozicionālie parametri
---

{% include menu.html %}

Funkcijas parametru secībai ir nozīme. Piemēram, izveidosim funkciju, kas aprēķina starpību starp diviem skaitļiem:

```raku
sub diff($a, $b) { $a - $b }
```

Ir skaidrs, ka izsaukums `diff(10, 20)` dod citu rezultātu nekā `diff(20, 10)`.

Parametrus sarakstā ar komatiem, kā funkcijā augstāk, sauc par _pozicionāliem_. To nozīme ir atkarīga no argumentu secības, kad jūs izsaucat funkciju.

{% include nav.html %}
