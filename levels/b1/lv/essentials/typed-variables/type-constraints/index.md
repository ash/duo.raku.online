---
title: Tipu ierobežojumi
---

{% include menu.html %}

Raku valodā ir tā saucamā pakāpeniskā tipu sistēma. Vairumā gadījumu jums nav jāuztraucas par mainīgā tipu. Bet dažreiz jūs varētu vēlēties ierobežot mainīgo līdz vienam tipam. To var izdarīt, norādot tipu, kā parādīts zemāk:

```raku
my Int $var = 42;
```

Tagad jūs varat piešķirt `$var` citu veselu skaitli. Bet, ja mēģināt tajā ielikt virkni, jūs saņemat izņēmumu. Tas pats notiek pat ar peldošā punkta skaitli:

```raku
my Int $var = 42;
$var = '314E-2';
```

Šī programma izdod šādu kļūdu:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
