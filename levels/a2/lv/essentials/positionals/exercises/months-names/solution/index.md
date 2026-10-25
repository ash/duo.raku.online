---
title: 'Risinājums: Mēnešu nosaukumi'
---

{% include menu.html %}

Programma ņem mēnešu nosaukumus no masīva `@months`. Šajā masīvā ir divpadsmit virknes. Masīva indeksi sākas ar 0. Tāpēc mums no ievadītā skaitļa jāatņem 1. Mēs to darām, pirms izmantojam to kā indeksu.

## Kods

Šeit ir risinājums:

```raku
my @months = <
    January February March April
    May June July August
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Atrodiet programmu failā [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Izvade

Palaidiet programmu dažas reizes. Jūs redzat dažādu mēnešu nosaukumus.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Stils

Šādu sarakstu var formatēt dažādos veidos. Jūs varat izvēlēties jebkuru no tiem. Salīdziniet dažas iespējas:

```raku
my @months = <
    January February March April
    May June July August
    September October November December >;
```

Vai:

```raku
my @months = < January   February March    April
               May       June     July     August
               September October  November December >;
```

Jūs varat arī ierakstīt visus mēnešus vienā rindā.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
