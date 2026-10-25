---
title: 'Risinājums: Lietotāja ievades konvertēšana par skaitli'
---

{% include menu.html %}

Programma var būt tik vienkārša kā šī:

## Kods

```raku
my Int $n = prompt 'Ievadiet skaitli: ';
say $n;
```

🦋 Avota kodu var atrast failā [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Piemērs

Palaidiet to un ievadiet veselu skaitli, kas var būt pozitīvs vai negatīvs:

```console
$ raku exercises/typed-variables/input-number.raku
Ievadiet skaitli: -42
-42
```

## Komentāri

Kā mēs jau [redzējām](/lv/essentials/typed-variables/allomorphs), `prompt` šeit atgriež `IntStr` vērtību. Jūs varat to piešķirt `Int` mainīgajam bez jebkādas piespiedu konvertēšanas.

Tomēr ievērojiet, ka dažas virknes nevar pārveidot par veselu skaitli. Ja jūs ievadāt šādu virkni, programma apstājas ar izņēmumu.

{% include nav.html %}
