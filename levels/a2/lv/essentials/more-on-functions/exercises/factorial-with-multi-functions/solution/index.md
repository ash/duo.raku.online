---
title: 'Risinājums: Faktoriāls ar daudzfunkcijām'
---

{% include menu.html %}

Šis uzdevums atkal ir par faktoriāliem. Ar šo uzdevumu mēs varam parādīt vairāk Raku iespēju.

Lai atrastu faktoriālu, mēs varam sākt no dotā skaitļa. Tad mēs ejam uz leju. Mums jāapstājas, kad skaitlis ir 1. Daudzfunkcijas to var izdarīt. Ielieciet gadījumu `$n == 1` atsevišķā daudzfunkcijā.

## Kods

Šeit ir risinājums:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Atrodiet programmu failā [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Izvade

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Komentārs

Ievērojiet, ka programma pārvērš ievades argumentu par veselu skaitli. Tā to dara ar `@*ARGS[0].Int`. Bez tā ievade `1` dod bezgalīgu ciklu. Lūk, kāpēc. Tad funkcija `factorial` saņem [`IntStr`](/lv/essentials/typed-variables/allomorphs) vērtību. Tāpēc Raku nevar izmantot daudzfunkcijas pirmo variantu. Rekursīvais izsaukums `factorial(2 - 1)` ir citāds. Tur arguments ir vesels skaitlis. Tāpēc Raku var izsaukt pirmo variantu.

{% include nav.html %}
