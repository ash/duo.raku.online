---
title: Sakoj kaj miksaĵoj
translations_gpt:
---

{% include menu.html %}

Aro memoras nur, _ĉu_ valoro estas en ĝi. Foje vi ankaŭ volas scii, _kiom da fojoj_ ĝi estas tie. Por tio ekzistas la `Bag`. Ĝi tenas kalkulon por ĉiu valoro.

Por fari sakon, uzu la rutinon `bag`. Sako ne kunigas ripetitajn valorojn en unu. Ĝi kalkulas ilin:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Petu valoron de la sako per la subskribo `< >`. Vi ricevas, kiom da fojoj ĉi tiu valoro eniris la sakon. La metodo `total` sumigas ĉiujn kalkulojn:

```raku
say bag(<a b a c a>).total; # 5
```

`Mix` similas al sako. Sed en miksaĵo, la kalkuloj nomiĝas _pezoj_. Pezo ne devas esti tuta nombro. Ĝi povas ankaŭ esti frakcio. Vi povas mem doni la pezojn. Parigu ĉiun valoron kun ĝia pezo. Poste faru el la listo miksaĵon per `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Vi ricevas pezon per `< >`. Vi sumigas la pezojn per `total`. Ambaŭ funkcias same kiel por sako. Nur la nombroj ne devas esti tutaj. Ĉi tie, `total` sumigas la pezojn `2.5` kaj `0.75`. La rezulto estas `3.25`. Do `total` donas la sumon de la pezoj. Ĝi ne kalkulas la valorojn. Sakoj kaj miksaĵoj estas utilaj, kiam vi bezonas kalkuli kvantojn. Ekzemple, sako povas kalkuli la vortojn en teksto. Ĝi diras al vi, kiom ofte ĉiu vorto aperas. Miksaĵo povas doni pezojn al opcioj.

{% include nav.html %}
