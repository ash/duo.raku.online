---
title: Notae de usu Unicodi
---

{% include menu.html %}

Raku putat omnes fasciculos programmatis tui in UTF-8 servatos esse. In usu, de characteribus non-ASCII curare non debes. Exempli gratia, eos in literalibus stringae adhibere potes. Sed hoc non est totum. Verisimiliter etiam legere fasciculum textus UTF-8 nulla difficultas est. Hoc etiam significat Raku longitudinem stringae recte invenire. Characteres numerat, non bytes. Hoc postea accuratius spectabimus.

Haec est res proxima quam scire debes. Identificatores, id est nomina, litteras non-Latinas vel non-Anglicas habere possunt. Si vis, variabile tuum `$ι` loco `$i` nominare potes. Compilator id recte leget.

Raku de proprietatibus Unicodi characterum satis severus est. Exempli gratia, scit num character littera vel digitus sit. Etiam scit qui characteres paria faciant, ut parentheses et alii unci. Saepe diversae partes programmatis diversa genera uncorum adhibere possunt. Exempli gratia, programma nostrum ‘Hello, World!’ mutemus. In eo hos characteres citationis non-Latinos adhibere possumus. Eos iterum videbis ubi cum grammaticis Raku laborabimus:

```raku
say ｢Hello, World!｣;
```

Quidam operatores in-builti duas formas habent: versionem Unicodi et versionem ASCII. Exempli gratia, ‘non aequale’ scribere potes ut `!=` vel ut `≠`. Idem valet pro operationibus set. Exempli gratia, `∈` versionem pure ASCII habet, `(elem)`. Etiam constantem in-builtam appellare potes ut `pi` vel `π`.

Cum numeris, fractionibus uti potes, ut `½` loco `0.5`. Etiam quadratum `$x` charactere superscripto obtinere potes: `$x²`.

Plenum indicem talium parium in documentis vide: 📖 [Symbola Unicode versus ASCII](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
