---
title: Sacculi et mixturae
translations_gpt:
---

{% include menu.html %}

Coniunctum tibi solum dicit _num_ valor in eo sit. Sed interdum etiam scire debes _quotiens_ valor ibi sit. Ad hoc est `Bag`, qui numerum pro quoque valore servat.

Sacculum functione `bag` creas. Valores repetiti non fiunt unus valor. Potius numerantur:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Sacculum de valore interrogare potes cum subscripto `< >`. Tum accipis quotiens hic valor insertus sit. Methodus `total` summam omnium numerorum dat:

```raku
say bag(<a b a c a>).total; # 5
```

`Mix` eadem notio est ac sacculus. Differentia est quod numeri, qui _pondera_ vocantur, fractiones esse possunt, non solum numeri integri. Ut pondera ipse des, quemque valorem cum pondere suo coniunge. Deinde indicem in mixturam cum `.Mix` converte:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Pondus cum `< >` quaeris et pondera cum `total` addis. Ambo exacte ut pro sacculo operantur. Sola differentia est quod numeri non necessario integri sunt. Hic `total` pondera `2.5` et `0.75` addit, quod `3.25` dat. Est summa ponderum, non numerus valorum. Sacculi et mixturae utiles sunt quotiens quantitates custodire debes. Exempli gratia, numerare potes quotiens quodque verbum in textu appareat. Vel optionibus pondera dare potes.

{% include nav.html %}
