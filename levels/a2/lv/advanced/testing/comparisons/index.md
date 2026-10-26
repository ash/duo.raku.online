---
title: Salīdzinājumi un plāni
translations_gpt:
---

{% include menu.html %}

Modulim `Test` ir vairāk nekā `ok` un `is`. Tam ir salīdzinājumi dažādu veidu vērtībām. Šie ir visnoderīgākie:

* `is` — pārbauda, vai divas vērtības ir vienādas (kā virknes vai skaitļi)
* `is-deeply` — pārbauda, vai divas datu struktūras ir pilnīgi vienādas, arī to tipi
* `like` — pārbauda, vai virkne atbilst regulārajai izteiksmei
* `isnt` — izdodas, kad divas vērtības **nav** vienādas

Izmantojiet `is-deeply` masīviem, jaukteņiem un datiem citu datu iekšpusē. Tas precīzi salīdzina struktūru un tipu:

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

`is` pārvērš vērtības virknēs. Tad tas salīdzina tās, bet ne pārāk stingri. `is-deeply` ir citāds. Ar to struktūrām tiešām jāsakrīt. Ievērojiet, ka `done-testing` liek plānu `1..1` beigās, pēc pārbaudes.

`done-testing` var saskaitīt testus jūsu vietā. Bet jūs varat arī pateikt skaitu sākumā, ar `plan`. Tas palīdz ar vienu problēmu. Dažreiz testu fails apstājas par agru. Tad tas izlaiž dažas pārbaudes bez jebkāda ziņojuma:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Tagad plāns ir **pirmais**. Tas nāk pirms rezultātiem:

```
1..2
ok 1 - first
ok 2 - second
```

Šeit jūs redzat, kā `plan` atšķiras no `done-testing`. `plan` izdrukā skaitu `1..2` augšā, pirms sākas pārbaudes. `done-testing` to izdrukā pašās beigās. Jebkurā gadījumā ar `plan 2` izpilde gaida tieši divus testus. Ja izpildās mazāk vai vairāk testu, visa testu kopa neizdodas. Izmantojiet `plan`, ja testu skaits ir noteikts un jūs to zināt. Izmantojiet `done-testing`, ja ir vieglāk ļaut testu modulim skaitīt.

{% include nav.html %}
