---
title: 'Risinājums: Lietotāja ievades konvertēšana par skaitli'
---

{% include menu.html %}

Programma var būt ļoti vienkārša:

## Kods

```raku
my Int $n = prompt 'Ievadiet skaitli: ';
say $n;
```

🦋 Avota kodu var atrast failā [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Piemērs

Palaidiet to un ievadiet veselu skaitli. Tas var būt pozitīvs vai negatīvs:

```console
$ raku exercises/typed-variables/input-number.raku
Ievadiet skaitli: -42
-42
```

## Komentāri

Mēs jau [redzējām](/lv/essentials/typed-variables/allomorphs), ka `prompt` atgriež `IntStr` vērtību. Jūs varat piešķirt šo vērtību `Int` mainīgajam. Jums tā nav jākonvertē.

Bet esiet uzmanīgi. Dažreiz jūs ievadāt virkni, ko Raku nevar pārveidot par veselu skaitli. Tad programma apstājas ar izņēmumu.

{% include nav.html %}
