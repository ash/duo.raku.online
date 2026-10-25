---
title: Operationes cum numeris
---

{% include menu.html %}

Certe iam quasdam operationes cum numeris in Raku scis. Modo dicamus symbolum _operationis_ _operator_ vocari. Obiecta in quibus operatio agit _operandi_ vocantur.

## Arithmetic

**Operator** | **Operatio**
`+` | Additio
`-` | Subtractio
`*` | Multiplicatio
`/` | Divisio

Quia Raku [Unicode optime sustinet](/la/essentials/on-unicode), quidam ex his operatoribus etiam versiones non-ASCII habent:

`×` | Multiplicatio
`÷` | Divisio

Ut ordinem mutes quo operationes fiunt, parenthesibus utere:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

Ut in multis aliis linguis, operator modulo est `%`.

`%` | Modulo

Reddit reliquum divisionis integrae duorum numerorum, ita `10 % 3` est `1`. Nota `-10 % 3` esse `2`, propter modum quo operatio definitur. Eventus divisionis deorsum rotundatur et per secundum numerum multiplicatur. Deinde hic valor a primo numero subtrahitur. Ita `$a % $b` idem significat ac `$a - $b * floor($a / $b)`.

## Divisibilitas

Raku unum alium operatorem utilem addit. Probat an unus numerus per alium divisibilis sit.

`%%` | Divisibilitas

Hic est operator infixus: inter duos operandos stat, ut in `10 %% 3`. Si primus operandus per secundum divisibilis est, Booleanum `True` accipis. Alioquin, `False` accipis.

## Operationes Integrae

Quaedam operationes speciales numeros integros ut exitus reddunt. Operatores earum sunt verba potius quam symbola.

`div` | Divisio integra
`mod` | Modulo integer

Operator `div` eventum deorsum rotundat. Ita `10 div 3` est `3`, et `-10 div 3` est `-4`.

Et `div` et `mod` operandos integros exspectant. Itaque programma infra non operabitur, si lineas notatas `Error` uncommentaveris:

```raku
say 10.3 % 3;     # OK
# dic 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# dic 10.3 div 3.3; # Error
```

## Potentia

_x_ ad potentiam _y_ duobus modis obtinere potes. Primum, operatore `**` uti potes:

```raku
say 3 ** 4; # 81
```

Secundum, digitis superscriptis uti potes, id est parvis digitis elatis. Exempli gratia:

```raku
say 3⁴; # 81
```

Plures quam unum digitum superscriptum adhibere potes, ut potentiam maiorem quam 9 obtineas. Exempli gratia:

```raku
say 2¹⁵; # 32768
```

Nec potentiae negativae problema sunt:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Nota: in duabus ultimis expressionibus eventus est numerus `Rat`.

## Operationes cum assignatione

Cum variabilem renovare debes, omnes operationes formam brevem habent. Eam exemplo `+` demonstremus.

Forma plena

```raku
$a = $a + $b;
```

idem significat ac:

```raku
$a += $b;
```

{% include nav.html %}
