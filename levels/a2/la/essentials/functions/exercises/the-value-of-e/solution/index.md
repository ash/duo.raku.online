---
title: 'Solutio: Valorem e'
---

{% include menu.html %}

## Disclaimer

Raku iam constantem `e` habet. Ea responsum ad hoc munus statim dat. Solutio infra solum ad discendum est.

## Codex

Formula factorialem continet. Iam saltem duos modos scimus ad factorialem inveniendum. Plures modi postea veniunt. Programma infra duas functiones habet. Una functio factorialem invenit. Altera prima elementa formulae addit.

Functio etiam sine argumentis operari debet. Tum circulus certum numerum vicium currit. Itaque parametro [valorem praedefinitum](/la/essentials/functions/default-values) damus: `sub e-approx($max = 100)`.

Specta codicem. Ambae functiones eventum suum simili modo faciunt. Utraque [`for` in fine lineae](/la/essentials/loops/postfix-for) habet. Hic circulus per [intervallum](/la/essentials/ranges) it.

Hic est solutio:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Inveni codicem fontem in archivo [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Exitus

Ecce eventus pro 10 et 100 gyris circuli. Etiam alios valores `$max` tempta.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
