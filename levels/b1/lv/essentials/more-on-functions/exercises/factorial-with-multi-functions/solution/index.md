---
title: 'Risinājums: Faktoriāls ar daudzfunkcijām'
---

{% include menu.html %}

Šis uzdevums atkal ir par faktoriāliem. Patiesībā šis uzdevums ļauj mums parādīt vairāk Raku iespēju.

Jūs varat aprēķināt faktoriālu, sākot no dotā skaitļa un ejot uz leju. Tādā gadījumā jums jāapstājas, kad skaitlis sasniedz 1. Daudzfunkcijas ļauj to izdarīt. Pārvietojiet gadījumu `$n == 1` uz atsevišķu daudzfunkciju.

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

Ievērojiet, ka programma pārvērš ievades argumentu par veselu skaitli: `@*ARGS[0].Int`. Tas novērš bezgalīgu ciklu, kad ievades skaitlis ir `1`. Bez šīs pārvēršanas funkcija `factorial` saņem [`IntStr`](/lv/essentials/typed-variables/allomorphs) tipa vērtību. Daudzfunkcijas pirmais variants nevar uztvert šādu izsaukumu. Bet rekursīvajā izsaukumā `factorial(2 - 1)` arguments ir vesels skaitlis. Tāpēc Raku var izsaukt pirmo variantu.

{% include nav.html %}
