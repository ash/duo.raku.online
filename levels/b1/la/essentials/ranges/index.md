---
title: Intervalla
---

{% include menu.html %}

In Raku intervalla indices rerum creant quae una post alteram sequuntur.

In casu simplicissimo intervallum est index numerorum integrorum qui semper uno crescunt. Ad intervallum creandum, operatore `..` et duobus valoribus utere. Hi valores minimum et maximum intervalli definiunt:

```raku
1 .. 5
```

Spatia circa operatorem optativa sunt. Itaque idem intervallum sic scribere potes:

```raku
1..5
```

Intervallum est modus ad indices creandos, sed tamen est unum obiectum. Itaque id in variabili scalari servare potes:

```raku
my $r = 1 .. 5;
```

## Non solum numeri

Intervalla etiam alia genera datorum adhibere possunt, si Raku valores eorum incrementare scit. Exempli gratia:

```raku
my $letters = 'a' .. 'z';
```

In Raku intervalla sunt obiecta sui generis datorum. Genus variabilis `$r` est `Range`.

{% include nav.html %}
