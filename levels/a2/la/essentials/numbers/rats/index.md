---
title: Numeri rationales
---

{% include menu.html %}

Numeri rationales sunt proprietas singularis Raku. Eorum typus datae est `Rat`.

Intus in Raku numerus rationalis est fractio. Duas partes integras habet. Numerator supra est, et denominator infra. Ita numeros ut 1/3 facile servare potes. Exacti manent.

Numerum `Rat` in Raku pluribus modis scribere potes:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Nota: virgula hic est pars scripturae numeri. Non est operator divisionis. Ita `1/2` non significat ‘divide 1 per 2’. Sed Raku numeros rationales ut numeros decimales vel integros imprimit:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Textus post symbolum `#` est commentarium. Compilator eum ignorat. In cursu haec commentaria exitum programmatis ostendunt.

## Forma decimale

Hoc scire gravissimum est. Numerum in forma decimali scribere potes, exempli gratia, `0.5`. Tum Raku numerum `Rat` facit. Non est numerus integer. Sed nec est numerus puncti fluitantis. Aliae linguae tales numeros `float` vel `double` vocant. Adhuc est numerus rationalis!

Specta hoc exemplum:

```raku
say 0.1 + 0.2 - 0.3;
```

Lingua programmandi arithmeticam puncti fluitantis pro his calculationibus adhibere potest. Tum eventus non est 0. Situs [0.30000000000000004.com](https://0.30000000000000004.com) plenum indicem talium exemplorum habet. In eis arithmetica puncti fluitantis eventum exspectatum non dat.

Sed Raku exacte `0` imprimit. Cur? Raku `0.1`, `0.2` et `0.3` ut numeros rationales videt. Intus eos ut `1/10`, `2/10` et `3/10` servat. Codicem ex linea mandatorum curre et proba:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Forma Unicode

Etiam characteres Unicode pro fractionibus adhibere potes, ut `½`, `¼` vel `¾`. Fortasse eos in claviatura non semper facile scribis. Sed prorsus idem valent ac versiones eorum ASCII. Versio ASCII fractio vel numerus decimalis esse potest:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Quaedam fractiones, ut `1/3`, pauciores formas habent: solum `⅓` vel `<1/3>`. Forma decimalis pro eis non operatur. Infinitum numerum digitorum requirit.

{% include nav.html %}
