---
title: Operationes cum numeris
---

{% include menu.html %}

Certe iam quasdam operationes cum numeris in Raku scis. Haec duo verba memoria tene. Symbolum _operationis_ _operator_ vocatur. Operatio in quibusdam obiectis agit. Ea _operandi_ vocantur.

## Arithmetic

**Operator** | **Operatio**
`+` | Additio
`-` | Subtractio
`*` | Multiplicatio
`/` | Divisio

Raku [Unicode optime sustinet](/la/essentials/on-unicode). Itaque quidam ex his operatoribus alteram formam cum symbolis non-ASCII habent:

`×` | Multiplicatio
`÷` | Divisio

Ordinem operationum parenthesibus muta:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

Operator modulo est `%`. Idem est in multis aliis linguis.

`%` | Modulo

Reliquum divisionis integrae duorum numerorum dat. Reliquum est id quod post divisionem manet. Ita `10 % 3` est `1`. Sed nota: `-10 % 3` est `2`. Ecce causa. Primum numerum per secundum numerum divide. Eventum deorsum rotunda. Eum per secundum numerum multiplica. Deinde hoc a primo numero subtrahe. Hic est eventus operatoris `%`. Ita `$a % $b` idem est ac `$a - $b * floor($a / $b)`.

## Divisibilitas

Raku etiam utilem operatorem pro divisibilitate habet. Probat an unus numerus per alium divisibilis sit. Hoc significat: nullum reliquum est.

`%%` | Divisibilitas

Hic est operator infixus. Inter duos operandos stat: `10 %% 3`. Estne primus operandus per secundum divisibilis? Tum eventus est valor Booleanus `True`. Si non, eventus est `False`.

## Operationes Integrae

Quaedam operationes speciales eventus integros dant. Operatores earum sunt verba, non symbola.

`div` | Divisio integra
`mod` | Modulo integer

Operator `div` eventum deorsum rotundat. Ita `10 div 3` est `3`. Et `-10 div 3` est `-4`.

Et `div` et `mod` operandos integros requirunt. Specta lineas notatas `Error` in programmate infra. Si `#` ex eis removes, programma non operatur:

```raku
say 10.3 % 3;     # OK
# dic 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# dic 10.3 div 3.3; # Error
```

## Potentia

Duobus modis _x_ ad potentiam _y_ computare potes. Primus modus est operator `**`:

```raku
say 3 ** 4; # 81
```

Secundus modus est digitos superscriptos adhibere. Hi sunt parvi digiti in summa linea. Exempli gratia:

```raku
say 3⁴; # 81
```

Etiam duos vel plures digitos superscriptos adhibere potes. Tum potentia maior quam 9 esse potest. Exempli gratia:

```raku
say 2¹⁵; # 32768
```

Etiam potentia negativa operatur:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Nota: duae ultimae expressiones numerum `Rat` dant.

## Operationes cum assignatione

Interdum variabilem cum operatione renovare debes. Omnes operationes formam brevem pro hoc habent. Hic est exemplum cum `+`.

Forma plena

```raku
$a = $a + $b;
```

idem est ac:

```raku
$a += $b;
```

{% include nav.html %}
