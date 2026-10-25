---
title: Escapatio specialium characterum
---

{% include menu.html %}

Finge te titulum pretii imprimere velle. Nomen producti et pretium eius in duabus variabilibus scalaribus servas.

```raku
my $product = 'Electricitas';
my $price = 3.14;
```

Quomodo titulum imprimis si pretium in dollaris est? Exitus esse debet `Electricitas costs $3.14`. Sed in chordis duplici-quotatis signum dollari monstrat variabilem interpolari debere. Ut characterem `$` ipsum imprimas, eum effugere debes:

```raku
say "$product costs \$$price";
```

Certe, effugium `$` etiam concatenatione chordarum vitare potes:

```raku
say $product ~ ' costs $' ~ $price;
```

Haec forma eandem prorsus chordam imprimit. Sed interpolatio naturalior videtur et facilius legitur. Nota chordam simplici-quotatam `' costs $'`. In ea character `$` neque interpolatur neque effugitur. Haec est differentia principalis. Characteres speciales in quotationibus simplicibus apparent ut sunt.

In chordis duplici-quotatis aliquot alii characteres significationem specialem habent:

`\$` | Signum dollari
`\n` | Linea nova
`\r` | Reditus currus
`\t` | Tabula horizontalis
`\"` | Quotatio duplici
`\\` | Retroversus

Genus quotationum circum chordam decernit quomodo Raku characteres speciales tractet. Specta haec duo exempla:

```raku
say 'Unus\nDuo';
say "Tres\nQuattuor";
```

Si hoc programma curris, prima chorda immutata apparet, in una linea. Sed secunda chorda in duas partes dividitur:

    Unus\nDuo
    Tres
    Quattuor

In quotationibus duplicibus, Raku sequentiam specialem `\n` ut characterem novae lineae tractat. In quotationibus simplicibus, sunt tantum duo characteres usitati: `\` et `n`.

Est exceptio iucunda pro `'` et `\`. In quotationibus simplicibus, quotationem simplicem effugere potes, si ante eam `\` ponis:

```raku
say '\''; # '
```

Si quotatio simplex retroversum sequitur, etiam retroversum effugere debes:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
