---
title: Redonante la rezulton
---

{% include menu.html %}

Ofte funkcio faras ion kaj ankaŭ redonas rezulton. En funkcia programado, ekzemple, funkcioj ne devus havi flankajn efikojn. Presi al la konzolo estas unu tia flanka efiko. Sed Raku permesas al vi fari tion. Ni vidu, kiel funkcio redonas valoron. Ni ankaŭ vidas, kiel la vokanta kodo ricevas ĉi tiun valoron.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Ĉi tie, la funkcio `add` prenas du nombrojn. Ĝi redonas ilian sumon. La funkcio havas la vorton `return` en sia kodo. La vokanta kodo povas uzi ĉi tiun valoron kiel ajnan alian valoron. En la supra programo, ni asignas ĝin al variablo.

## La lasta valoro

La rezulto povas esti la lasta valoro en la korpo de la funkcio. Tiam, en Raku, vi ne devas skribi `return`. Do ni povas fari nian funkcion `add` pli simpla:

```raku
sub add($x, $y) {
    $x + $y
}
```

Rimarku, ke la linio ne havas punkto-komon ĉe la fino. La linio estas la lasta en la kodobloko. Do tie ne necesas punkto-komo.

Tiajn malgrandajn kaj simplajn funkciojn oni ofte skribas en unu linio. Tiam la kodo estas pli mallonga:

```raku
sub add($x, $y) { $x + $y }
```

## Neniuj datumoj por redoni

Kelkfoje funkcio devas reveni antaŭ la fino de sia korpo. Se la funkcio ne redonas rezulton, uzu `return` sen valoro.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x estas super la limo";
}
```

{% include nav.html %}
