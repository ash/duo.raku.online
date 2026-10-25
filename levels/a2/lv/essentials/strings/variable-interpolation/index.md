---
title: Mainīgo interpolācija
---

{% include menu.html %}

Iepriekšējās sadaļās dažas virknes bija vienkāršajās pēdiņās. Citas virknes bija dubultajās pēdiņās. Vai jūs to pamanījāt? Atšķirība ir ļoti svarīga.

Vai jums vajag vienpēdiņu virknes iekšpusē? Vienkāršākais veids, protams, ir izmantot dubultās pēdiņas:

```raku
say "O'Henry";
```

Starp citu, īsts apostrofs tomēr ir labāks par vienpēdiņu. Iemesls ir tas, ka [Raku labi strādā ar Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Bet dubulto pēdiņu īstais spēks ir kas cits. Tās var _interpolēt_ mainīgos. Drīz mēs redzēsim, ka tās var arī izpildīt kodu! Apskatiet šo programmu:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

Kā jūs varat uzminēt, programma izdrukā `Hello, Karl!`. Raku noņem nosaukumu `$name` kopā ar sigilu `$`. Tā vietā tas ieliek mainīgā vērtību.

Raku izmanto mainīgā vērtību interpolācijas brīdī. Jūs varat mainīt `$name` vērtību. Tad jūs to interpolējat vēlreiz. Tagad virkne saņem jauno vērtību. Pārbaudīsim to:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

Šoreiz tā pati virkne veido dažādus ziņojumus:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
