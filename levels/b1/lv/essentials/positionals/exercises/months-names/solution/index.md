---
title: 'Risinājums: Mēnešu nosaukumi'
---

{% include menu.html %}

Mēnešu nosaukumi tiek ņemti no masīva `@months`, kurā ir divpadsmit virknes. Masīva indeksi sākas ar 0. Tāpēc, pirms indeksējam masīvu, mēs atņemam no ievadītā skaitļa 1.

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

Palaidiet programmu dažas reizes, lai redzētu dažādu mēnešu nosaukumus.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Stils

Jūs varat izvēlēties, kā formatēt tādus sarakstus kā šajā programmā. Šeit ir dažas iespējas, ko salīdzināt:

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

Jūs varat arī uzskaitīt visus mēnešus vienā rindā.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
