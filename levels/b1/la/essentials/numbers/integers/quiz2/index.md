---
title: 'Quiz: Unicodi digiti et numeri'
---

{% include menu.html %}

Specta digitos infra. Qui ex eis numeros integros faciunt quos Raku ut valores `Int` accipit? Conare invenire.

{:.quiz}
1 | 3
1 | 12345
1 | ⓷ | Hoc consideratur numerus, non singulus digitus.
0 | ⓵⓶⓷⓸⓹ | Itaque non potes eos sic combinare ut `12345` obtineas.
1 | ❷
0 | ❸❹❺
1 | ㊷ | Singulus character Unicode nomine `CIRCLED NUMBER FOURTY TWO`.
0 | ⓸⓶ | Sed duo numeri non sunt numerus.
1 | ㊄ | Circled Chinese 5 et est numerus `CIRCLED IDEOGRAPH FIVE`.
0 | 五 | Dum hoc significat 5, character neque digitus neque numerus est.
0 | 一二三四五

{% include quiz.html %}

## Commentarii

Sequens programma ut initium adhibere potes. Cum eo lude, ut proprietates horum digitorum explores. Lineas uncommenta, ut videas an programma compiletur.

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

🦋 Cape codicem ex GitHub: [unicode-digits.raku](https://github.com/ash/raku-course/blob/master/essentials/numbers/integers/quiz2/unicode-digits.raku).

{% include nav.html %}
