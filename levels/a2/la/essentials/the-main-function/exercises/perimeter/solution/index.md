---
title: 'Solutio: Perimetri rectanguli'
---

{% include menu.html %}

Hoc programma unum vel duo argumenta lineae mandati accipere debet. Solutio novum artificium ostendit. Secunda variabilis valorem praedefinitum habet. Is est valor primae variabilis: `sub MAIN($a, $b = $a)`. Itaque duas multi-functiones non creamus. Pro eis unam functionem generalem habemus. Pro quadrato, haec functio magnitudinem secundi lateris statuit.

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

Tenta diversos valores input. Proba et quadrata et rectangula.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
Perimeter quadrati est 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
Perimeter rectanguli est 6.
```

Est etiam tertius casus. Eum quoque probare debes. Da duos numeros aequales. Programma adhuc videre debet hoc esse quadratum:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
Perimeter quadrati est 8.
```

{% include nav.html %}
