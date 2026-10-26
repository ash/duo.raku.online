---
title: 'Risinājums: Ķēdēts salīdzinājums'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
say 0 <= 73 <= 100;
```

🦋 Programmas pirmkodu var atrast failā [chained-comparison.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/chained-comparison.raku).

## Izvade

```
True
```

## Komentāri

1. Jūs varat ķēdēt salīdzināšanas operatorus. Tāpēc `0 <= 73 <= 100` nozīmē “0 ir ne lielāks par 73, un 73 ir ne lielāks par 100”. Operators `<=` atļauj arī galus. Tāpēc arī rezultāts tieši `0` vai `100` ir derīgs.

1. Abas daļas ir patiesas. Tāpēc visa izteiksme ir `True`. Paskatieties uz vidējo vērtību, `73`. Jūs to rakstāt tikai vienu reizi. Bet Raku to salīdzina ar abām blakus vērtībām.

1. Bez ķēdēšanas jums jāraksta abas salīdzināšanas. Jūs tās savienojat ar `&&`. Un vidējo vērtību jūs rakstāt divas reizes: `0 <= 73 && 73 <= 100`. Ķēdētā forma saka to pašu īsāk.

{% include nav.html %}
