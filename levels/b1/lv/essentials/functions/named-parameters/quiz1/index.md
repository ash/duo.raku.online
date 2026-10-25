---
title: Tests 1 — Nosauktie parametri
---

{% include menu.html %}

Lūk, funkcija:

```raku
sub f(:$a, :$b) {
    $a - $b
}
```

## 1

Kādi ir pareizie veidi, kā to izsaukt?

{:.quiz}
0 | f(1, 2) | Pozicionālie argumenti nodoti, nevis nosaukti.
1 | f(a => 1, b => 2)
0 | f(a = 1, b = 2) | Piešķiršanas operators nevis pāra konstruktors.
1 | f(b => 2, a => 1)

## 2

Ko atgriež šie tās pašas funkcijas izsaukumi?

{:.quiz-select}
−1 | `f(a => 1, b => 2)` atgriež&nbsp; (: 1, −1 :)
−1 | `f(b => 2, a => 1)` atgriež&nbsp; (: 1, −1 :) | Nosaukto argumentu secība nav svarīga.
1 | `f(a => 2, b => 1)` atgriež&nbsp; (: 1, −1 :)

{% include quiz.html %}

{% include nav.html %}
