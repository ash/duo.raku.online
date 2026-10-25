---
title: Kvizo 1 — Nomitaj parametroj
---

{% include menu.html %}

Rigardu ĉi tiun funkcion:

```raku
sub f(:$a, :$b) {
    $a - $b
}
```

## 1

Kiuj vokoj de ĉi tiu funkcio estas ĝustaj?

{:.quiz}
0 | f(1, 2) | Poziciaj argumentoj pasitaj, ne nomitaj.
1 | f(a => 1, b => 2)
0 | f(a = 1, b = 2) | Asigna operatoro anstataŭ paro-konstruanto.
1 | f(b => 2, a => 1)

## 2

Ĉi tio estas la sama funkcio. Kion redonas ĉi tiuj vokoj?

{:.quiz-select}
−1 | `f(a => 1, b => 2)` redonas&nbsp; (: 1, −1 :)
−1 | `f(b => 2, a => 1)` redonas&nbsp; (: 1, −1 :) | La ordo de nomitaj argumentoj ne gravas.
1 | `f(a => 2, b => 1)` redonas&nbsp; (: 1, −1 :)

{% include quiz.html %}

{% include nav.html %}
