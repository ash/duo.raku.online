---
title: 'Solutio: Valorem e'
---

{% include menu.html %}

## Disclaimer

Raku constantem inbuilt `e` habet. Ea responsum ad hoc munus statim dat. Solutio infra tantum ad discendum est.

## Codex

Formula in hoc munere factorialem continet. Iam saltem duos modos habemus ad eum computandum, et plures sequentur. Programma infra duas functiones definit. Una factorialem computat, et altera summam partialem formulae computat.

Functio etiam sine argumentis operari debet. In eo casu circulus certum numerum vicium currit. Itaque parametro [valorem praedefinitum](/la/essentials/functions/default-values) dare possumus: `sub e-approx($max = 100)`.

Nota in codice: ambae functiones eventus suos simili modo cumulant. Circulum [`for` postfixum](/la/essentials/loops/postfix-for) per [intervallum](/la/essentials/ranges) adhibent.

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

Cum 10 et 100 gyris circuli hos eventus accipimus. Etiam alios valores `$max` tempta.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
