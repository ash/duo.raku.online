---
title: Multiplex dispatch
translations_gpt:
---

{% include menu.html %}

In parte Essentialium [_multi-functionibus_](/la/essentials/more-on-functions/multi-functions) occurristi. Hae sunt plures subroutinae cum eodem nomine. Raku rectam eligit genera argumentorum spectando. Hoc _multiplex dispatium_ vocatur.

Hactenus Raku ex _genere_ argumentorum eligebat. Clausula `where` te longius ire sinit et etiam ex _valore_ eligere. Eam post parametrum scribis, et condicionem continet. Argumentum huic condicioni satisfacere debet, aliter ille candidatus non eligitur:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Quaeque vocatio candidatum currit cuius condicio pro dato valore vera est:

```
-5 is negative
0 is zero
7 is positive
```

Si solum genera spectas, omnes tres candidati eandem signaturam habent: unum `Int`. Itaque sine clausulis `where` confligerent. Condiciones eos inter se diversos faciunt.

## Casus basis pro recursione

`where` saepe adhibetur ad punctum sistendi recursionis. Hoc punctum suum candidatum accipit. Ecce iterum factorialis, nunc ut duo multi-subs:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

Primus candidatus casum basis tractat, cum `$n` est `1` vel minus. Simpliciter `1` reddit. Omnis alius valor ad secundum candidatum it. Is `fact` iterum cum numero minore vocat. Nullum `if` intra functionem est. Dispatchor inter casum basis et gradum recursivum eligit.

{% include nav.html %}
