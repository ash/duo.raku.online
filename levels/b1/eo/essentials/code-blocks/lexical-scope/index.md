---
title: Leksika amplekso
---

{% include menu.html %}

Koda bloko kreas tiel nomatan leksikan amplekson. Se vi deklaras variablon en bloko, ĝi estas videbla ene de la bloko. Sed ĝi ne estas videbla, post kiam la programo eliras el la bloko. Jen ekzemplo:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

La variablo `$x` estas kreita en la koda bloko. La unua `say $x` presas ĝian valoron, ĉar la variablo estas videbla ene de la bloko. La dua `say $x` malsukcesas, ĉar la nomo `$x` ne ekzistas ekster la bloko. Post kiam la bloko finiĝis, la nomo ne estas konata. La programo ne kompiliĝas, kaj vi ricevas eraron:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
