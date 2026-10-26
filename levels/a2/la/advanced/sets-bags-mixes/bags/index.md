---
title: Sacculi et mixturae
translations_gpt:
---

{% include menu.html %}

Coniunctum solum meminit _num_ valor in eo sit. Interdum etiam scire vis _quotiens_ ibi sit. Ad hoc habemus `Bag`. Numerum pro quoque valore servat.

Ut sacculum facias, functionem `bag` adhibe. Sacculus valores repetitos in unum non iungit. Eos numerat:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Sacculum de valore interroga cum subscripto `< >`. Accipis quotiens hunc valorem in sacculum posueris. Methodus `total` omnes numeros addit:

```raku
say bag(<a b a c a>).total; # 5
```

`Mix` similis est sacculo. Sed in mixtura numeri _pondera_ vocantur. Pondus non semper numerus integer est. Etiam fractio esse potest. Pondera ipse dare potes. Quemque valorem cum pondere suo coniunge. Deinde indicem in mixturam cum `.Mix` converte:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Pondus cum `< >` accipis. Pondera cum `total` addis. Ambo eodem modo operantur ac pro sacculo. Solum numeri non semper integri sunt. Hic `total` pondera `2.5` et `0.75` addit. Eventus est `3.25`. Itaque `total` summam ponderum dat. Valores non numerat. Sacculi et mixturae utiles sunt cum quantitates numerare debes. Exempli gratia, sacculus verba in textu numerare potest. Tibi dicit quotiens quodque verbum appareat. Mixtura optionibus pondera dare potest.

{% include nav.html %}
