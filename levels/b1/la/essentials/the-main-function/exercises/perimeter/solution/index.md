---
title: 'Solutio: Perimetri rectanguli'
---

{% include menu.html %}

Hoc programma unum vel duo argumenta lineae mandati accipere posse debet. Solutio novum artificium ostendit. Valor praedefinitus secundae variabilis est valor primae: `sub MAIN($a, $b = $a)`. Itaque, pro duabus multi-functionibus, unam functionem generalem habemus. Si figura quadratum est, haec functio magnitudinem secundi lateris statuit.

## Codex

Hic est solutio:

```raku
sub MAIN($a, $b = $a) {
    my $perimeter = 2 * ($a + $b);

    my $shape = $a == $b ?? 'quadratum' !! 'rectangulum';
    say "Perimeter $shape est $perimeter.";
}
```

🦋 Inveni codicem fontem in archivo [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Exitus

Tenta diversos valores inputorum ad probandum tam quadrata quam rectangula.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
Perimeter quadrati est 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
Perimeter rectanguli est 6.
```

Nota tertium casum esse, quem quoque probare debes. Cum duobus numeris aequalibus, programma adhuc intellegere debet id esse quadratum:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
Perimeter quadrati est 8.
```

{% include nav.html %}
