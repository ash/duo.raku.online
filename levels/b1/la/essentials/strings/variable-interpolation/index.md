---
title: Variabile interpolatio
---

{% include menu.html %}

In sectionibus praecedentibus quaedam stringae in quotationibus singulis erant, quaedam in duplicibus. Iamne hoc animadvertisti? Haec differentia valde gravis est.

Scilicet, cum quotationibus duplicibus singulam quotationem intra stringam facile ponis:

```raku
say "O'Henry";
```

Ceterum, apostrophus proprius adhuc melior est quam singula quotatio. Nam [Raku bonum est in Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Sed vera vis quotationum duplicium est quod variabiles _interpolare_ possunt. Ut mox videbimus, etiam codicem exsequi possunt! Specta hoc programma:

```raku
my $nomen = 'Karl';
say "Salve, $nomen!";
```

Ut fortasse exspectas, programma imprimit `Salve, Karl!`. Valor variabilis locum nominis `$nomen` cepit, una cum sigillo eius `$`.

Valor interpolatus est valor quem variabilis momento interpolationis habet. Itaque si `$nomen` mutas et iterum interpolas, novus valor adhibetur. Experiamur:

```raku
my $nomen = 'Karl';
say "Salve, $nomen!";

$nomen = 'Anna';
say "Salve, $nomen!";
```

Hoc tempore eadem stringa diversos nuntios generat:

    Salve, Karl!
    Salve, Anna!

{% include nav.html %}
