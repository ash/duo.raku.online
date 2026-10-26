---
title: 'Solvo: Triobligi ĝin'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Vi povas trovi la fontkodon en la dosiero [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Eligo

```
21
```

## Komentoj

1. La pinta bloko havas nur unu parametron, `$x`. Tamen ĝi uzas `$factor`, variablon el la amplekso ĉirkaŭ ĝi. Ĝuste la kaptado de tiaj variabloj faras ĝin fermo.

1. Kiam `$factor` estas `3`, la voko `$scale(7)` donas `21`. Se vi ŝanĝas `$factor`, la sama bloko multiplikas per la nova valoro:

```raku
$factor = 5;
say $scale(7); # 35
```

La fermo kaptas la *variablon* mem. Ĝi ne kaptas la valoron de la momento, kiam oni skribis la blokon. Do la posta voko vidas la novan `$factor` kaj redonas `35`.

{% include nav.html %}
