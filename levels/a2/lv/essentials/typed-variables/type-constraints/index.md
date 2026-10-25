---
title: Tipu ierobežojumi
---

{% include menu.html %}

Raku valodā ir tā saucamā pakāpeniskā tipu sistēma. Tas nozīmē, ka jūs varat lietot tipus tikai tur, kur tos gribat. Parasti jums nav jānorāda mainīgā tips. Bet dažreiz jūs gribat ierobežot mainīgā tipu. Tad norādiet tipu šādi:

```raku
my Int $var = 42;
```

Tagad jūs varat piešķirt `$var` citu veselu skaitli. Bet jūs nevarat ielikt tajā virkni. Jūs nevarat ielikt tajā pat peldošā punkta skaitli. Ja mēģināt, jūs saņemat izņēmumu:

```raku
my Int $var = 42;
$var = '314E-2';
```

Programma dod šo kļūdu:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
