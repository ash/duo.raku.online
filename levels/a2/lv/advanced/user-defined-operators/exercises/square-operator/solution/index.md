---
title: 'Risinājums: Kāpināšanas operators'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Mēs deklarējam operatoru kā `postfix:<²>`. Tā simbols ir mazs, pacelts divnieks. Jūs to rakstāt aiz operanda, kā `5²`.

1. Ķermenis kāpina operandu otrajā pakāpē. Tāpēc `5²` dod `25`. Jūs drīkstat lietot Unikoda simbolu. Tas var izskatīties tieši kā matemātikā.

{% include nav.html %}
