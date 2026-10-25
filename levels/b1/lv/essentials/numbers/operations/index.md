---
title: Operācijas ar skaitļiem
---

{% include menu.html %}

Jūs noteikti jau zināt dažas operācijas ar skaitļiem Raku valodā. Tikai pieminēsim, ka _operācijas_ simbolu sauc par _operatoru_. Objektus, ar kuriem operācija strādā, sauc par _operandiem_.

## Aritmētika

**Operators** | **Operācija**
`+` | Saskaitīšana
`-` | Atņemšana
`*` | Reizināšana
`/` | Dalīšana

Tā kā Raku [ļoti labi atbalsta Unicode](/lv/essentials/on-unicode), dažiem no šiem operatoriem ir arī ne-ASCII versijas:

`×` | Reizināšana
`÷` | Dalīšana

Lai mainītu secību, kādā tiek veiktas operācijas, izmantojiet iekavas:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulis

Tāpat kā daudzās citās valodās, moduļa operators ir `%`.

`%` | Modulis

Tas atgriež divu skaitļu veselā dalījuma atlikumu, tāpēc `10 % 3` ir `1`. Ņemiet vērā, ka `-10 % 3` ir `2`, jo šī operācija ir definēta tieši tā. Dalījuma rezultātu noapaļo uz leju un sareizina ar otro skaitli. Tad šo vērtību atņem no pirmā skaitļa. Tātad `$a % $b` nozīmē to pašu, ko `$a - $b * floor($a / $b)`.

## Dalāmība

Raku pievieno vēl vienu noderīgu operatoru. Tas pārbauda, vai viens skaitlis ir dalāms ar citu.

`%%` | Dalāmība

Tas ir infiksu operators: tas atrodas starp saviem diviem operandiem, kā `10 %% 3`. Ja pirmais operands ir dalāms ar otro, jūs saņemat Būla `True`. Pretējā gadījumā jūs saņemat `False`.

## Veselo skaitļu operācijas

Dažas īpašas operācijas atgriež veselus skaitļus kā rezultātu. To operatori ir vārdi, nevis simboli.

`div` | Veselo skaitļu dalīšana
`mod` | Veselo skaitļu modulis

Operators `div` noapaļo rezultātu uz leju. Tātad `10 div 3` ir `3`, un `-10 div 3` ir `-4`.

Gan `div`, gan `mod` sagaida veselu skaitļu operandus. Tāpēc programma zemāk nedarbosies, ja jūs atkomentēsiet rindas, kas atzīmētas kā `Kļūda`:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Kļūda

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Kļūda
```

## Pakāpe

Jūs varat iegūt _x_ pakāpē _y_ divos veidos. Pirmkārt, jūs varat izmantot operatoru `**`:

```raku
say 3 ** 4; # 81
```

Otrkārt, jūs varat izmantot augšraksta ciparus, tas ir, mazus paceltus ciparus. Piemēram:

```raku
say 3⁴; # 81
```

Jūs varat izmantot vairāk nekā vienu augšraksta ciparu, lai iegūtu pakāpi, kas lielāka par 9. Piemēram:

```raku
say 2¹⁵; # 32768
```

Arī negatīvas pakāpes nav problēma:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Ņemiet vērā, ka pēdējās divās izteiksmēs rezultāts ir `Rat` skaitlis.

## Operācijas ar piešķiršanu

Kad jums vajag atjaunināt mainīgo, visām operācijām ir īsa forma. Parādīsim to ar `+` piemēru.

Pilnā forma

```raku
$a = $a + $b;
```

nozīmē to pašu, ko:

```raku
$a += $b;
```

{% include nav.html %}
