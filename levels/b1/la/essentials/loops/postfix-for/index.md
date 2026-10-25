---
title: 'Postfixa forma de `for`'
---

{% include menu.html %}

Iam alios modificatores sententiae vidimus: [`if` et `else`](/la/essentials/conditional-checks/modifiers) et [`while` et `until`](/la/essentials/loops/modifiers). Haec est causa paulum celebrandi, quia consilium Raku valde constans est.

Cum corpus anuli breve est, anulum `for` in forma postfixa scribere potes:

```raku
.say for 1..7;
```

Ut vides, intervalla cum forma postfixa `for` valde naturalia videntur.

Hoc programma idem est ac versio magis tradita:

```raku
for 1..7 -> $n {
    say $n;
}
```

Vel, si variabilem anuli praefinitam adhibes, idem est ac:

```raku
for 1..7 {
    .say;
}
```

Hic, `.say` est forma brevis pro `$_.say`.

{% include nav.html %}
