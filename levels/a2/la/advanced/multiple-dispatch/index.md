---
title: Multiplex dispatch
translations_gpt:
---

{% include menu.html %}

In parte Essentialium de [_multi-functionibus_](/la/essentials/more-on-functions/multi-functions) didicisti. Hae sunt plures subroutinae cum eodem nomine. Raku genera argumentorum spectat. Tum subroutinam rectam eligit. Hoc _multiplex dispatium_ vocatur.

Adhuc Raku ex _genere_ argumentorum eligebat. Cum clausula `where` plus facere potes. Raku etiam ex _valore_ eligere potest. `where` post parametrum scribis. Condicionem habet. Quaeque varians functionis candidatus vocatur. Raku candidatum eligit solum cum condicio eius vera est pro argumento:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Quaeque vocatio ad candidatum it, cum condicione vera pro hoc valore:

```
-5 is negative
0 is zero
7 is positive
```

Specta genera. Omnes tres candidati eandem signaturam habent: unum `Int`. Sine clausulis `where` confligunt. Raku inter eos eligere non potest. Condiciones eos diversos faciunt.

## Recursionem sistere

Homines saepe `where` cum recursione adhibent. In recursione functio se ipsam vocat. Aliquando consistere debet. Hoc punctum sistendi in candidatum separatum ponere potes. Ecce iterum factorialis. Nunc duos multi-subs habet:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

Primus candidatus est casus basis. Hic recursio consistit. In hoc casu `$n` est `1` vel minus. Hic candidatus simpliciter `1` reddit. Omnes alii valores ad secundum candidatum eunt. Is `fact` iterum cum numero minore vocat. Nullum `if` intra functionem est. Dispatchor inter casum basis et gradum recursivum eligit. Dispatchor est pars Raku quae candidatum eligit.

{% include nav.html %}
