---
title: Operācijas ar skaitļiem
---

{% include menu.html %}

Mēs esam droši, ka jūs jau zināt dažas operācijas ar skaitļiem Raku valodā. Šeit ir divi vārdi, ko atcerēties. Katras _operācijas_ simbolu sauc par _operatoru_. Operācija strādā ar dažiem objektiem. Tos sauc par _operandiem_.

## Aritmētika

**Operators** | **Operācija**
`+` | Saskaitīšana
`-` | Atņemšana
`*` | Reizināšana
`/` | Dalīšana

Raku ļoti labi [atbalsta Unicode](/lv/essentials/on-unicode). Tāpēc dažiem no šiem operatoriem ir otra forma ar ne-ASCII simboliem:

`×` | Reizināšana
`÷` | Dalīšana

Izmantojiet iekavas, lai mainītu operāciju secību:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulis

Moduļa operators ir `%`. Daudzās citās valodās tas ir tāds pats.

`%` | Modulis

Tas dod divu skaitļu veselā dalījuma atlikumu. Atlikums ir tas, kas paliek pāri pēc dalīšanas. Tātad `10 % 3` ir `1`. Bet ievērojiet, ka `-10 % 3` ir `2`. Lūk, kāpēc. Izdaliet pirmo skaitli ar otro skaitli. Noapaļojiet rezultātu uz leju. Sareiziniet to ar otro skaitli. Tad atņemiet to no pirmā skaitļa. Tas ir `%` rezultāts. Tātad `$a % $b` ir tas pats, kas `$a - $b * floor($a / $b)`.

## Dalāmība

Raku valodā ir arī noderīgs operators dalāmības pārbaudei. Tas pārbauda, vai viens skaitlis ir dalāms ar otru. Tas nozīmē, ka nav atlikuma.

`%%` | Dalāmība

Tas ir infiksu operators. Tas atrodas starp saviem diviem operandiem: `10 %% 3`. Vai pirmais operands ir dalāms ar otro? Tad rezultāts ir Būla vērtība `True`. Ja nē, rezultāts ir `False`.

## Veselo skaitļu operācijas

Dažas īpašas operācijas dod veselu skaitļu rezultātus. To operatori ir vārdi, nevis simboli.

`div` | Veselo skaitļu dalīšana
`mod` | Veselo skaitļu modulis

Operators `div` noapaļo rezultātu uz leju. Tātad `10 div 3` ir `3`. Un `-10 div 3` ir `-4`.

Operatoriem `div` un `mod` vajag veselu skaitļu operandus. Apskatiet rindas ar atzīmi `Kļūda` programmā zemāk. Ja jūs no tām noņemat `#`, programma nestrādā:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Kļūda

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Kļūda
```

## Pakāpe

Ir divi veidi, kā iegūt _x_ pakāpē _y_. Pirmais veids ir operators `**`:

```raku
say 3 ** 4; # 81
```

Otrais veids ir izmantot augšraksta ciparus. Tie ir mazi cipari rindas augšā. Piemēram:

```raku
say 3⁴; # 81
```

Jūs varat izmantot arī divus vai vairāk augšraksta ciparus. Tad pakāpe var būt lielāka par 9. Piemēram:

```raku
say 2¹⁵; # 32768
```

Negatīva pakāpe arī strādā:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Ievērojiet, ka pēdējās divas izteiksmes dod `Rat` skaitli.

## Operācijas ar piešķiršanu

Dažreiz jums vajag atjaunināt mainīgo ar kādu operāciju. Visām operācijām tam ir īsa forma. Šeit ir piemērs ar `+`.

Pilnā forma

```raku
$a = $a + $b;
```

ir tas pats, kas:

```raku
$a += $b;
```

{% include nav.html %}
