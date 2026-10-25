---
title: Bewerkingen met getallen
---

{% include menu.html %}

Je kent vast al een paar bewerkingen met getallen in Raku. We willen alleen even zeggen dat het symbool van een _bewerking_ een _operator_ heet. De objecten waarop een bewerking werkt, heten _operanden_.

## Rekenkunde

**Operator** | **Bewerking**
`+` | Optelling
`-` | Aftrekking
`*` | Vermenigvuldiging
`/` | Deling

Omdat Raku heel goed [Unicode ondersteunt](/nl/essentials/on-unicode), hebben sommige van deze operators ook niet-ASCII-versies:

`×` | Vermenigvuldiging
`÷` | Deling

Om de volgorde te veranderen waarin de bewerkingen gebeuren, gebruik je haakjes:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

Net als in veel andere talen is de modulo-operator `%`.

`%` | Modulo

Hij geeft de rest van de gehele deling van twee getallen, dus `10 % 3` is `1`. Merk op dat `-10 % 3` gelijk is aan `2` door de manier waarop de bewerking is gedefinieerd. Het resultaat van de deling wordt naar beneden afgerond en vermenigvuldigd met het tweede getal. Dan wordt deze waarde van het eerste getal afgetrokken. Dus `$a % $b` betekent hetzelfde als `$a - $b * floor($a / $b)`.

## Deelbaarheid

Raku voegt nog een handige operator toe. Hij test of een getal deelbaar is door een ander getal.

`%%` | Deelbaarheid

Dit is een infix-operator: hij staat tussen zijn twee operanden, zoals in `10 %% 3`. Als de eerste operand deelbaar is door de tweede, krijg je een Booleaanse `True`. Anders krijg je `False`.

## Gehele getal bewerkingen

Sommige speciale bewerkingen geven gehele getallen als resultaat terug. Hun operators zijn woorden in plaats van symbolen.

`div` | Gehele deling
`mod` | Gehele modulo

De operator `div` rondt het resultaat naar beneden af. Dus `10 div 3` is `3`, en `-10 div 3` is `-4`.

Zowel `div` als `mod` verwachten gehele operanden. Dus het programma hieronder werkt niet als je de commentaartekens weghaalt bij de regels met `Error`:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Macht

Je kunt _x_ tot de macht _y_ op twee manieren krijgen. Ten eerste kun je de operator `**` gebruiken:

```raku
say 3 ** 4; # 81
```

Ten tweede kun je superscript cijfers gebruiken, dat wil zeggen kleine cijfers die iets hoger staan. Bijvoorbeeld:

```raku
say 3⁴; # 81
```

Je kunt meer dan één superscript cijfer gebruiken om een macht groter dan 9 te krijgen. Bijvoorbeeld:

```raku
say 2¹⁵; # 32768
```

Negatieve machten zijn ook geen probleem:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Merk op dat het resultaat van de laatste twee uitdrukkingen een `Rat` getal is.

## Operaties met toewijzing

Als je een variabele moet bijwerken, hebben alle bewerkingen een korte vorm. We laten het zien met het voorbeeld van `+`.

De volledige vorm

```raku
$a = $a + $b;
```

betekent hetzelfde als:

```raku
$a += $b;
```

{% include nav.html %}
