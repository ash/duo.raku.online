---
title: Sakoj kaj miksaĵoj
translations_gpt:
---

{% include menu.html %}

Aro diras al vi nur, _ĉu_ valoro estas en ĝi. Sed foje vi ankaŭ bezonas scii, _kiom da fojoj_ la valoro estas tie. Por tio ekzistas la `Bag`, kiu tenas kalkulon por ĉiu valoro.

Vi kreas sakon per la rutino `bag`. Ripetitaj valoroj ne fariĝas unu valoro. Anstataŭe, ili estas kalkulataj:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Vi povas peti valoron de la sako per la subskribo `< >`. Tiam vi ricevas, kiom da fojoj ĉi tiu valoro estis enmetita. La metodo `total` donas la sumon de ĉiuj kalkuloj:

```raku
say bag(<a b a c a>).total; # 5
```

`Mix` estas la sama ideo kiel sako. La diferenco estas, ke la kalkuloj, nomataj _pezoj_, povas esti frakcioj, ne nur tutaj nombroj. Por mem doni la pezojn, parigu ĉiun valoron kun ĝia pezo. Poste faru el la listo miksaĵon per `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Vi serĉas pezon per `< >` kaj sumigas la pezojn per `total`. Ambaŭ funkcias ĝuste kiel por sako. La sola diferenco estas, ke la nombroj ne devas esti tutaj. Ĉi tie, `total` sumigas la pezojn `2.5` kaj `0.75`, kio donas `3.25`. Ĝi estas la sumo de la pezoj, ne la nombro de valoroj. Sakoj kaj miksaĵoj estas utilaj ĉiam, kiam vi bezonas sekvi kvantojn. Ekzemple, vi povas kalkuli, kiom ofte ĉiu vorto aperas en teksto. Aŭ vi povas doni pezojn al opcioj.

{% include nav.html %}
