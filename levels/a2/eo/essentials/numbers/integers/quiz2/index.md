---
title: 'Kvizo: Unikodaj ciferoj kaj nombroj'
---

{% include menu.html %}

Rigardu la ciferojn sube. Kelkaj el ili formas entjerojn. Raku akceptas tiujn kiel valorojn de la tipo `Int`. Kiuj ili estas? Provu eltrovi.

{:.quiz}
1 | 3
1 | 12345
1 | ⓷ | Ĉi tio estas konsiderata numero, ne unuopa cifero.
0 | ⓵⓶⓷⓸⓹ | Do vi ne povas kombini ilin tiel por akiri `12345`.
1 | ❷
0 | ❸❹❺
1 | ㊷ | Unuopa Unikoda karaktero nomata `CIRCLED NUMBER FOURTY TWO`.
0 | ⓸⓶ | Sed la du nombroj ne estas numero.
1 | ㊄ | Ĉirkaŭita ĉina 5 kaj ĝi estas numero `CIRCLED IDEOGRAPH FIVE`.
0 | 五 | Kvankam ĉi tio signifas 5, la karaktero estas nek cifero nek numero.
0 | 一二三四五

{% include quiz.html %}

## Komentoj

Vi povas komenci per la programo sube. Ludu kun ĝi kaj lernu pli pri ĉi tiuj ciferoj. Kelkaj linioj komenciĝas per `#`, do ili estas komentoj. Forigu la `#` kaj vidu, ĉu la programo kompilas.

```raku
my $x;
$x =  3;
say $x; say $x.WHAT;

$x =  12345;
$x =  ⓷;
# $x =  ⓵⓶⓷⓸⓹;

$x =  ❷;
# $x =  ❸❹❺;

$x =  ⒌;
# $x =  ⒊⒋⒌;

# $x =  ㊀㊁㊂㊃㊄;
$x =  ㊄;
say $x; say $x.WHAT;

# $x =  五;
# $x =  一二三四五;

$x = ㊷;
say $x;
```

🦋 Prenu la kodon de GitHub: [unicode-digits.raku](https://github.com/ash/raku-course/blob/master/essentials/numbers/integers/quiz2/unicode-digits.raku).

{% include nav.html %}
