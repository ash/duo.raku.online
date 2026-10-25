---
title: Skaitļu salīdzināšana
---

{% include menu.html %}

Lai salīdzinātu divus skaitļus, izmantojiet šādus operatorus. Ja jūs zināt citas programmēšanas valodas, tie visi ir diezgan skaidri.

`==` | Vienāds
`!=` | Nav vienāds
`<` | Mazāks par
`<=` | Mazāks vai vienāds
`>` | Lielāks par
`>=` | Lielāks vai vienāds

## Aptuveni vienāds

Bez standarta operatoriem Raku pievieno vēl vienu: aptuveni vienādo operatoru `=~=`. Tas pārbauda, vai divi skaitļi ir gandrīz vienādi. Rezultāts ir `True`, ja abi skaitļi ir relatīvi tuvu viens otram. Relatīvā atšķirība nedrīkst būt lielāka par iebūvēto vērtību `$*TOLERANCE`. Šī vērtība ir `1e-15`.

## Unicode versijas

Dažiem no iepriekš minētajiem operatoriem ir arī Unicode versijas:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Piemēri

Šeit ir daži piemēri, kā salīdzināt skaitļus ar šiem operatoriem:

```raku
say 10 == 10; # True
say 10 != 10; # False

say 15 < 10;  # False
say 10 <= 10; # True
say 16 > 10;  # True
say 10 >= 14; # False

say 1.000000000000000000000001 =~= 1.000000000000000000000002; # True
say 2e17 + 1 =~= 2e17 + 100; # True
```

Ņemiet vērā, ka `1.000000000000000000000001` ir `Rat` skaitlis. Tāpēc salīdzinājums ar tuvo skaitli `1.000000000000000000000002` saglabā pilnu precizitāti. Pēdējais piemērs ar `2e17` strādā ar `Num` skaitļiem. To precizitāte ir ierobežota.

{% include nav.html %}
