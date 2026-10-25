---
title: 'Solvo: Perimetro de rektangulo'
---

{% include menu.html %}

Ĉi tiu programo devas povi preni unu aŭ du komandliniajn argumentojn. La solvo montras novan trukon. La defaŭlta valoro de la dua variablo estas la valoro de la unua: `sub MAIN($a, $b = $a)`. Do, anstataŭ du multfunkcioj, ni havas unu ĝeneralan funkcion. Se la formo estas kvadrato, ĉi tiu funkcio agordas la grandecon de la dua flanko.

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

Provu malsamajn enirvalorojn por testi ambaŭ kvadratojn kaj rektangulojn.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
La perimetro de kvadrato estas 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
La perimetro de rektangulo estas 6.
```

Notu, ke estas tria kazo, kiun vi ankaŭ devus testi. Kun du egalaj nombroj, la programo ankoraŭ devus kompreni, ke ĝi estas kvadrato:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
La perimetro de kvadrato estas 8.
```

{% include nav.html %}
