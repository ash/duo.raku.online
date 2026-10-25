---
title: Intervaloj
---

{% include menu.html %}

En Raku, intervalo faras liston de eroj. La eroj venas en ordo, unu post alia.

En la plej simpla kazo, intervalo estas listo de entjeroj. Ĉiu entjero estas je 1 pli granda ol la antaŭa. Por fari intervalon, uzu la operatoron `..` kun du valoroj. La unua valoro estas la plej malgranda valoro de la intervalo. La dua valoro estas la plej granda valoro:

```raku
1 .. 5
```

Vi ne bezonas spacojn ĉirkaŭ la operatoro. Do vi ankaŭ povas skribi la saman intervalon tiel:

```raku
1..5
```

Intervalo faras liston. Sed la intervalo mem estas unu objekto. Do vi povas teni ĝin en skalara variablo:

```raku
my $r = 1 .. 5;
```

## Ne nur nombroj

Vi ankaŭ povas fari intervalojn el aliaj datumtipoj. Tio funkcias, se Raku scias, kiel ricevi la sekvan valoron. Ekzemple:

```raku
my $letters = 'a' .. 'z';
```

En Raku, intervaloj havas sian propran datumtipon. La variablo `$r` havas la tipon `Range`.

{% include nav.html %}
