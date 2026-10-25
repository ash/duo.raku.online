---
title: Comparando numeri
---

{% include menu.html %}

Ad duos numeros comparandos, utere operatoribus sequentibus. Si alias linguas programmandi novisti, omnes satis clari sunt.

`==` | Aequalis
`!=` | Non aequalis
`<` | Minor quam
`<=` | Minor aut aequalis
`>` | Maior quam
`>=` | Maior aut aequalis

## Fere-aequalis

Praeter operatores usitatos, Raku unum alium addit: operatorem fere-aequalem `=~=`. Probat num duo numeri fere aequales sint. Eventus est `True` si duo numeri relative propinqui inter se sunt. Differentia relativa non debet maior esse quam valor in-builtus `$*TOLERANCE`. Hic valor est `1e-15`.

## Versiones Unicode

Quidam ex operatoribus supra etiam versiones Unicode habent:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Exempla

Hic sunt pauca exempla quae numeros his operatoribus comparant:

```raku
say 10 == 10; # Verum
say 10 != 10; # Falsum

say 15 < 10;  # Falsum
say 10 <= 10; # Verum
say 16 > 10;  # Verum
say 10 >= 14; # Falsum

say 1.000000000000000000000001 =~= 1.000000000000000000000002; # Verum
say 2e17 + 1 =~= 2e17 + 100; # Verum
```

Nota quod `1.000000000000000000000001` est numerus `Rat`. Propter hoc, comparatio cum numero propinquo `1.000000000000000000000002` plenam praecisionem servat. Ultimum exemplum, cum `2e17`, numeris `Num` utitur. Praecisio eorum restricta est.

{% include nav.html %}
