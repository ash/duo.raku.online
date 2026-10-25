---
title: Comparando numeri
---

{% include menu.html %}

Utere his operatoribus ad duos numeros comparandos. Alias linguas programmandi novisti? Tum omnes tibi valde clari sunt.

`==` | Aequalis
`!=` | Non aequalis
`<` | Minor quam
`<=` | Minor aut aequalis
`>` | Maior quam
`>=` | Maior aut aequalis

## Fere-aequalis

Raku operatores usitatos habet. Etiam unum alium addit: `=~=`. Hic operator probat si duo numeri fere aequales sunt. Eventus est `True` si numeri propinqui sunt. Raku differentiam cum magnitudine numerorum comparat. Hoc differentiam relativam dat. Non debet maior esse quam valor in-builtus `$*TOLERANCE`. Hic valor est `1e-15`.

## Versiones Unicode

Quidam ex his operatoribus etiam formam Unicode habent:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Exempla

Hic sunt exempla quae numeros comparant:

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

Nota: `1.000000000000000000000001` est numerus `Rat`. Expressio eum cum numero valde propinquo comparat, `1.000000000000000000000002`. Cum numeris `Rat` hic praecisionem non amittis. Raku omnes digitos servat. Ultimum exemplum `2e17` habet. Numeris `Num` utitur. Praecisio eorum restricta est. Non possunt omnes digitos servare.

{% include nav.html %}
