---
title: 'Postfixa forma de `for`'
---

{% include menu.html %}

Iam alios modificatores sententiae vidisti: [`if` et `else`](/la/essentials/conditional-checks/modifiers) et [`while` et `until`](/la/essentials/loops/modifiers). Haec est parva causa gaudendi: consilium Raku valde constans est.

Si corpus anuli breve est, formam postfixam `for` adhibere potes:

```raku
.say for 1..7;
```

Ut vides, intervalla optime cum `for` postfixo conveniunt.

Hoc programma idem facit atque versio magis usitata:

```raku
for 1..7 -> $n {
    say $n;
}
```

Vel, si variabilem anuli praefinitam adhibes, idem atque hoc:

```raku
for 1..7 {
    .say;
}
```

Hic, `.say` est brevis forma pro `$_.say`.

{% include nav.html %}
