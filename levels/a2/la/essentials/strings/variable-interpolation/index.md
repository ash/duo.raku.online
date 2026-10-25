---
title: Variabile interpolatio
---

{% include menu.html %}

In sectionibus prioribus quaedam stringae in quotationibus singulis erant. Aliae stringae in quotationibus duplicibus erant. Hocne animadvertisti? Differentia valde gravis est.

Singulamne quotationem intra stringam requiris? Via facillima est, scilicet, quotationibus duplicibus uti:

```raku
say "O'Henry";
```

Ceterum, verus apostrophus adhuc melior est quam singula quotatio. Causa est quod [Raku bonum est in Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Sed vera vis quotationum duplicium alia res est. Variabiles _interpolare_ possunt. Mox videbimus eas etiam codicem exsequi posse! Specta hoc programma:

```raku
my $nomen = 'Karl';
say "Salve, $nomen!";
```

Ut divinare potes, programma `Salve, Karl!` imprimit. Raku nomen `$nomen` cum sigillo `$` aufert. Eius loco valorem variabilis ponit.

Raku valorem variabilis momento interpolationis adhibet. Valorem `$nomen` mutare potes. Tum eam iterum interpolas. Nunc stringa novum valorem accipit. Experiamur:

```raku
my $nomen = 'Karl';
say "Salve, $nomen!";

$nomen = 'Anna';
say "Salve, $nomen!";
```

Hoc tempore eadem stringa diversos nuntios facit:

    Salve, Karl!
    Salve, Anna!

{% include nav.html %}
