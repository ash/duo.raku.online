---
title: 'Solvo: Perimetro de rektangulo'
---

{% include menu.html %}

Ĉi tiu programo devas funkcii kun unu aŭ du komandliniaj argumentoj. La solvo montras novan trukon. La dua variablo havas defaŭltan valoron. Ĝi estas la valoro de la unua variablo: `sub MAIN($a, $b = $a)`. Do ni ne kreas du multfunkciojn. Anstataŭe, ni havas unu ĝeneralan funkcion. Por kvadrato, ĉi tiu funkcio agordas la grandecon de la dua flanko.

## Kodo

Jen la solvo:

```raku
sub MAIN($a, $b = $a) {
    my $perimetro = 2 * ($a + $b);

    my $figuro = $a == $b ?? 'kvadrato' !! 'rektangulo';
    say "La perimetro de $figuro estas $perimetro.";
}
```

🦋 Trovu la programon en la dosiero [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Eligo

Provu malsamajn enirvalorojn. Testu kaj kvadratojn kaj rektangulojn.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
La perimetro de kvadrato estas 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
La perimetro de rektangulo estas 6.
```

Estas ankaŭ tria kazo. Vi devus testi ankaŭ ĝin. Pasigu du egalajn nombrojn. La programo ankoraŭ devas vidi, ke tio estas kvadrato:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
La perimetro de kvadrato estas 8.
```

{% include nav.html %}
