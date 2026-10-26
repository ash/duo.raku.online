---
title: 'Risinājums: Ķēdēts salīdzinājums'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Salīdzināšanas operatorus var ķēdēt. Tāpēc `0 <= 73 <= 100` nozīmē “0 ir ne lielāks par 73, un 73 ir ne lielāks par 100”. Operators `<=` atļauj arī galējās vērtības. Tāpēc arī rezultāts tieši `0` vai `100` būtu derīgs.

1. Abas daļas ir patiesas, tāpēc visa izteiksme ir `True`. Ievērojiet, ka vidējo vērtību `73` jūs rakstāt tikai vienu reizi. Tomēr to salīdzina ar abiem tās kaimiņiem.

1. Bez ķēdēšanas jums būtu jāuzraksta abas salīdzināšanas un jāsavieno tās ar `&&`. Tad jūs atkārtojat vidējo vērtību: `0 <= 73 && 73 <= 100`. Ķēdētā forma saka to pašu īsākā veidā.

{% include nav.html %}
