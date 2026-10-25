---
title: Numeri rationales
---

{% include menu.html %}

Numeri rationales sunt proprietas singularis Raku. Proprium typum datae habent, `Rat`.

Intus numerus rationalis est fractio. Duas partes integras habet, numeratorem et denominatorem. Hoc significat numeros ut 1/3 exacte servari posse.

Sunt aliquot modi ad numerum `Rat` in programmate Raku scribendum:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Nota virgulam hic esse partem modi quo numerus scribitur. Non est operator divisionis. Ita `1/2` non significat te 1 per 2 dividere. Tamen, cum numeros rationales imprimis, ut numeri decimales vel integri videntur:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Quidquid in linea post symbolum `#` est, commentarium est, quod compilator ignorat. In hoc cursu talibus commentariis utemur, ut ostendamus quid programma imprimat.

## Forma decimale

Hoc intellegere gravissimum est. Si numerum in forma decimali scribis, ut `0.5`, Raku numerum `Rat` creat. Non est integer, nec est numerus puncti fluitantis. In aliis linguis tales numeri `float` vel `double` vocantur. Adhuc est numerus rationalis!

Considera sequens exemplum:

```raku
say 0.1 + 0.2 - 0.3;
```

Si lingua hic arithmeticam puncti fluitantis adhibet, eventus non erit 0. Situs interretialis [0.30000000000000004.com](https://0.30000000000000004.com) plenum indicem exemplorum habet. In omnibus eis arithmetica puncti fluitantis eventum exspectatum non dat.

Sed Raku exactum `0` imprimit. Hoc fit quia `0.1`, `0.2` et `0.3` ut numeros rationales tractat. Intus eos ut `1/10`, `2/10` et `3/10` servat. Id ex linea mandatorum exsequere, ut hoc probes:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Forma Unicode

Etiam characteribus Unicode pro fractionibus uti potes, ut `½`, `¼` vel `¾`. Probabiliter non semper facile est eos in claviatura scribere. Sed hae fractiones prorsus idem valent ac versiones earum ASCII. Has ut fractionem vel ut numerum decimalem scribere potes:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Pro quibusdam fractionibus, ut `1/3`, pauciores optiones habes: `⅓` vel `<1/3>`. Causa est quod forma decimalis infinitum numerum digitorum requireret.

{% include nav.html %}
