---
title: Intervalla
---

{% include menu.html %}

In Raku intervallum indicem rerum facit. Res in ordine sunt, una post alteram.

In casu simplicissimo intervallum est index numerorum integrorum. Quisque numerus uno maior est quam prior. Ad intervallum faciendum, operatore `..` cum duobus valoribus utere. Primus valor est minimus valor intervalli. Secundus valor est maximus valor:

```raku
1 .. 5
```

Spatia circa operatorem necessaria non sunt. Itaque idem intervallum etiam sic scribere potes:

```raku
1..5
```

Intervallum indicem facit. Sed intervallum ipsum est unum obiectum. Itaque id in variabili scalari tenere potes:

```raku
my $r = 1 .. 5;
```

## Non solum numeri

Etiam ex aliis generibus datorum intervalla facere potes. Hoc operatur, si Raku valorem proximum invenire scit. Exempli gratia:

```raku
my $letters = 'a' .. 'z';
```

In Raku intervalla proprium genus datorum habent. Variabilis `$r` genus `Range` habet.

{% include nav.html %}
