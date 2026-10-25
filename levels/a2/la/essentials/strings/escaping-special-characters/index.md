---
title: Escapatio specialium characterum
---

{% include menu.html %}

Finge te titulum pretii imprimere velle. Nomen producti in variabili scalari est. Pretium in alia variabili scalari est.

```raku
my $product = 'Electricitas';
my $price = 3.14;
```

Pretium in dollaris est. Quomodo tum titulum imprimis? Hunc exitum vis: `Electricitas costs $3.14`. Sed in quotationibus duplicibus signum dollari variabilem monstrat. Raku hanc variabilem interpolat. Ut ipsum `$` imprimas, id retroverso effuge:

```raku
say "$product costs \$$price";
```

Etiam concatenatione chordarum uti potes. Tum non necesse est `$` effugere:

```raku
say $product ~ ' costs $' ~ $price;
```

Haec forma eandem prorsus chordam imprimit. Sed interpolatio naturalior videtur. Eam facilius legis. Specta chordam in quotationibus simplicibus: `' costs $'`. Hic Raku characterem `$` non interpolat. Neque eum effugit. Haec est differentia principalis. In quotationibus simplicibus characteres speciales manent ut sunt.

Ecce alii characteres speciales. Significationem specialem in chordis in quotationibus duplicibus habent:

`\$` | Signum dollari
`\n` | Linea nova
`\r` | Reditus currus (retro ad initium lineae)
`\t` | Tabula horizontalis
`\"` | Quotatio duplex
`\\` | Retroversus

Quotationes circum chordam magni momenti sunt. Eae Raku dicunt quid cum characteribus specialibus faciat. Specta haec duo exempla:

```raku
say 'Unus\nDuo';
say "Tres\nQuattuor";
```

Hoc programma curre. Prima chorda manet ut est, in una linea. Secunda chorda nunc in duabus partibus est:

    Unus\nDuo
    Tres
    Quattuor

In quotationibus duplicibus, `\n` est sequentia specialis. Raku ex ea characterem novae lineae facit. In quotationibus simplicibus, `\n` sunt tantum duo characteres usitati: `\` et `n`.

Est exceptio iucunda pro `'` et `\`. In quotationibus simplicibus, quotationem simplicem effugere potes. Ante eam `\` pone:

```raku
say '\''; # '
```

Interdum quotatio simplex post retroversum venit. Tum etiam retroversum effugere debes:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
