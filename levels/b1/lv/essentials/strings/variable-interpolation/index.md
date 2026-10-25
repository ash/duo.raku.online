---
title: Mainīgo interpolācija
---

{% include menu.html %}

Iepriekšējās sadaļās dažas virknes bija vienkāršajās pēdiņās, bet dažas dubultajās pēdiņās. Vai jūs to pamanījāt? Šī atšķirība ir ļoti svarīga.

Protams, ar dubultajām pēdiņām ir viegli ielikt vienpēdiņu virknes iekšpusē:

```raku
say "O'Henry";
```

Starp citu, pareizs apostrofs tomēr ir labāks par vienpēdiņu. Galu galā, [Raku labi strādā ar Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Bet dubulto pēdiņu īstais spēks ir tas, ka tās var _interpolēt_ mainīgos. Kā mēs drīz redzēsim, tās var pat izpildīt kodu! Apskatiet šo programmu:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

Kā jūs droši vien gaidāt, programma izdrukā `Hello, Karl!`. Mainīgā vērtība aizstāja nosaukumu `$name` kopā ar tā sigilu `$`.

Interpolētā vērtība ir tā vērtība, kas mainīgajam ir interpolācijas brīdī. Tātad, ja jūs maināt `$name` un to interpolējat vēlreiz, tiek izmantota jaunā vērtība. Pārbaudīsim to:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

Šoreiz tā pati virkne rada dažādus ziņojumus:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
