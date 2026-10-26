---
title: Salīdzinājumi un plāni
translations_gpt:
---

{% include menu.html %}

Bez `ok` un `is` modulim `Test` ir salīdzinājumi dažādu veidu vērtībām. Šeit ir noderīgākie:

* `is` — pārbauda, vai divas vērtības ir vienādas (kā virknes vai skaitļi)
* `is-deeply` — pārbauda, vai divas datu struktūras ir pilnīgi vienādas, ieskaitot to tipus
* `like` — pārbauda, vai virkne atbilst regulārajai izteiksmei
* `isnt` — izdodas, kad divas vērtības **nav** vienādas

`is-deeply` ir pareizā izvēle masīviem, jaukteņiem un ligzdotiem datiem. Tas precīzi salīdzina gan struktūru, gan tipu:

```raku
use Test;

my @reversed = (1, 2, 3).reverse;
is-deeply @reversed, [3, 2, 1], 'reversed';

done-testing;
```

Tas izdrukā:

```
ok 1 - reversed
1..1
```

`is` pārvērstu vērtības virknēs un salīdzinātu tās brīvi. Bet `is-deeply` prasa, lai struktūras tiešām sakristu. Ievērojiet, ka `done-testing` liek plānu `1..1` beigās, pēc pārbaudes.

Jums nav obligāti jāļauj `done-testing` saskaitīt testus jūsu vietā. Tā vietā skaitu var norādīt sākumā ar `plan`. Tas jūs pasargā no testu faila, kas apstājas par agru un klusi izlaiž dažas pārbaudes:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Šoreiz plāns nāk **pirmais**, pirms rezultātiem:

```
1..2
ok 1 - first
ok 2 - second
```

Šī ir redzamā atšķirība no `done-testing`. `plan` izdrukā skaitu `1..2` augšā, pirms izpildās kāda pārbaude. `done-testing` savukārt to izdrukā pašās beigās. Jebkurā gadījumā ar `plan 2` izpilde gaida tieši divus testus. Ja izpildās mazāk vai vairāk testu, testu kopa tiek ziņota kā neizdevusies. Izmantojiet `plan`, kad testu skaits ir noteikts un zināms. Izmantojiet `done-testing`, kad ir vieglāk ļaut testēšanas ietvaram skaitīt.

{% include nav.html %}
