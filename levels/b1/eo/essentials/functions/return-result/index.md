---
title: Redonante la rezulton
---

{% include menu.html %}

Funkcioj ofte faras ion kaj ankaŭ redonas rezulton. Ekzemple, en funkcia programado, funkcioj ne devus havi flankajn efikojn. Presi al la konzolo estas tia flanka efiko. Sed Raku ne malhelpas vin fari tion. Ni vidu, kiel funkcio redonas valoron. Ni ankaŭ vidos, kiel la vokanta kodo ricevas ĝin.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Ĉi tie, la funkcio `add` prenas du nombrojn kaj redonas ilian sumon. Ĝi uzas eksplicitan `return`. La vokanta kodo povas uzi la redonitan valoron kiel ajnan alian valoron. En la supra programo, ĝi estas asignita al variablo.

## La laste kalkulita valoro

En Raku, eksplicita `return` ne ĉiam estas necesa. Vi povas preterlasi ĝin, kiam la rezulto estas la lasta valoro, kiun la funkcio kalkulas. Do nia funkcio `add` povas esti pli simpla:

```raku
sub add($x, $y) {
    $x + $y
}
```

Eble vi rimarkis, ke la linio ne havas punkto-komon ĉe la fino. Ĝi ne estas necesa, ĉar ĉi tiu linio finas la kodoblokon.

Tiajn malgrandajn kaj simplajn funkciojn oni ofte skribas en unu sola linio. Tio faras la kodon pli kompakta:

```raku
sub add($x, $y) { $x + $y }
```

## Neniu redona datumoj

Kelkfoje vi devas reveni el funkcio antaŭ la fino de ĝia korpo. Se la funkcio ne redonas ian rezulton, uzu nur `return`.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x estas super la limo";
}
```

{% include nav.html %}
