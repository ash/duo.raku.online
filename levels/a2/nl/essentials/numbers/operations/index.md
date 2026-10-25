---
title: Bewerkingen met getallen
---

{% include menu.html %}

We weten zeker dat je al een paar bewerkingen met getallen in Raku kent. Hier zijn twee woorden om te onthouden. Het symbool van een _bewerking_ heet een _operator_. Een bewerking werkt op een paar objecten. Die heten _operanden_.

## Rekenkunde

**Operator** | **Bewerking**
`+` | Optelling
`-` | Aftrekking
`*` | Vermenigvuldiging
`/` | Deling

Raku [ondersteunt Unicode](/nl/essentials/on-unicode) heel goed. Dus hebben sommige van deze operators een tweede vorm met niet-ASCII-symbolen:

`×` | Vermenigvuldiging
`÷` | Deling

Gebruik haakjes om de volgorde van de bewerkingen te veranderen:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

De modulo-operator is `%`. Dat is in veel andere talen hetzelfde.

`%` | Modulo

Hij geeft de rest van de gehele deling van twee getallen. De rest is wat er na de deling overblijft. Dus `10 % 3` is `1`. Maar let op: `-10 % 3` is `2`. Hier is de reden. Deel het eerste getal door het tweede getal. Rond het resultaat naar beneden af. Vermenigvuldig het met het tweede getal. Trek dit dan af van het eerste getal. Dat is het resultaat van `%`. Dus `$a % $b` is hetzelfde als `$a - $b * floor($a / $b)`.

## Deelbaarheid

Raku heeft ook een handige operator voor deelbaarheid. Hij controleert of een getal deelbaar is door een ander getal. Dat betekent dat er geen rest is.

`%%` | Deelbaarheid

Dit is een infix-operator. Hij staat tussen zijn twee operanden: `10 %% 3`. Is de eerste operand deelbaar door de tweede? Dan is het resultaat de Booleaanse waarde `True`. Zo niet, dan is het resultaat `False`.

## Gehele getal bewerkingen

Sommige speciale bewerkingen geven gehele getallen als resultaat. Hun operators zijn woorden, geen symbolen.

`div` | Gehele deling
`mod` | Gehele modulo

De operator `div` rondt het resultaat naar beneden af. Dus `10 div 3` is `3`. En `-10 div 3` is `-4`.

Zowel `div` als `mod` hebben gehele operanden nodig. Kijk naar de regels met `Error` in het programma hieronder. Als je de `#` bij die regels weghaalt, werkt het programma niet:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Macht

Er zijn twee manieren om _x_ tot de macht _y_ te krijgen. De eerste manier is de operator `**`:

```raku
say 3 ** 4; # 81
```

De tweede manier is om superscript cijfers te gebruiken. Dat zijn kleine cijfers bovenaan de regel. Bijvoorbeeld:

```raku
say 3⁴; # 81
```

Je kunt ook twee of meer superscript cijfers gebruiken. Dan kan de macht groter zijn dan 9. Bijvoorbeeld:

```raku
say 2¹⁵; # 32768
```

Een negatieve macht werkt ook:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Let op: de laatste twee uitdrukkingen geven een `Rat` getal.

## Operaties met toewijzing

Soms moet je een variabele bijwerken met een bewerking. Alle bewerkingen hebben hier een korte vorm voor. Hier is een voorbeeld met `+`.

De volledige vorm

```raku
$a = $a + $b;
```

is hetzelfde als:

```raku
$a += $b;
```

{% include nav.html %}
