---
title: 'Risinājums: Kāpināšanas operators'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Programmas pirmkodu var atrast failā [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Izvade

```
25
```

## Komentāri

1. Operators ir deklarēts kā `postfix:<²>`. Tāpēc tā simbols, augšraksta divnieks, atrodas aiz operanda, kā `5²`.

1. Ķermenis kāpina operandu otrajā pakāpē, tāpēc `5²` dod `25`. Nekas neliedz jums lietot Unikoda simbolu, kas izskatās kā parastais matemātiskais pieraksts.

{% include nav.html %}
