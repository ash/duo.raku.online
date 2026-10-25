---
title: Ternarius operator
---

{% include menu.html %}

Operator ternarius in Raku duas partes habet: `??` ... `!!`. Primum est probatio Booleana. Eventus eius est `True` aut `False`. Duae expressiones post probationem veniunt. Raku tantum unam ex eis exsequitur. Eventus probationis unam eligit.

```raku
my $shines = 'Sol';
my $tempus-diei = $shines eq 'Sol' ?? 'dies' !! 'nox';
say $tempus-diei;
```

Cum valore praesenti variabilis `$shines`, programma `dies` imprimit. Muta valorem in `Luna`. Tum eventus est `nox`.

Expressiones ternarias in catenam iungere potes. Sed noli eam nimis difficilem facere.

```raku
my $horae = 20;
my $tempus-diei =
    $horae <= 6 ?? 'Nox' !!
    $horae <= 12 ?? 'Mane' !! 
    $horae <= 18 ?? 'Postmeridianum' !! 'Vespera';
say $tempus-diei;
```

Hic programma partem diei imprimit. Pars a valore in `$horae` pendet.

{% include nav.html %}
