---
title: Leksika amplekso
---

{% include menu.html %}

Koda bloko kreas leksikan amplekson. Kion tio signifas? Vi kreas variablon en bloko. Ĝi estas videbla ene de ĉi tiu bloko. Poste la programo eliras el la bloko. Post tio, la variablo ne estas videbla. Rigardu ekzemplon:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

La variablo `$x` estas kreita en la koda bloko. La unua `say $x` estas ene de la bloko. La variablo estas videbla tie. Do `say` presas ĝian valoron. La dua `say $x` malsukcesas. Ekster la bloko, la nomo `$x` ne ekzistas. Post la fino de la bloko, la programo ne konas ĝin. La programo ne kompiliĝas. Vi ricevas eraron:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
