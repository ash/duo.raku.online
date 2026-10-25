---
title: Skaitļu salīdzināšana
---

{% include menu.html %}

Izmantojiet šos operatorus, lai salīdzinātu divus skaitļus. Vai jūs zināt citas programmēšanas valodas? Tad tie visi jums ir ļoti skaidri.

`==` | Vienāds
`!=` | Nav vienāds
`<` | Mazāks par
`<=` | Mazāks vai vienāds
`>` | Lielāks par
`>=` | Lielāks vai vienāds

## Aptuveni vienāds

Raku valodā ir standarta operatori. Raku pievieno arī vēl vienu: `=~=`. Šis operators pārbauda, vai divi skaitļi ir gandrīz vienādi. Rezultāts ir `True`, ja skaitļi ir tuvu. Raku salīdzina atšķirību ar skaitļu lielumu. Tas dod relatīvo atšķirību. Tā nedrīkst būt lielāka par iebūvēto vērtību `$*TOLERANCE`. Šī vērtība ir `1e-15`.

## Unicode versijas

Dažiem no šiem operatoriem ir arī Unicode forma:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Piemēri

Šeit ir daži skaitļu salīdzināšanas piemēri:

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

Ievērojiet, ka `1.000000000000000000000001` ir `Rat` skaitlis. Izteiksme to salīdzina ar ļoti tuvu skaitli, `1.000000000000000000000002`. Ar `Rat` skaitļiem jūs šeit nezaudējat precizitāti. Raku saglabā visus ciparus. Pēdējā piemērā ir `2e17`. Tas izmanto `Num` skaitļus. To precizitāte ir ierobežota. Tie nevar saglabāt visus ciparus.

{% include nav.html %}
