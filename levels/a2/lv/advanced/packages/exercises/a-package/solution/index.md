---
title: 'Risinājums: Pakotne'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Šīs programmas pirmkodu var atrast failā [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Izvade

```
0
212
```

## Komentāri

1. Gan mainīgajam, gan apakšprogrammai ir `our`. Tāpēc abi ir vārdtelpas `Temperature` daļa. Kods ārpus pakotnes var tiem piekļūt.

1. Mainīgo jūs iegūstat ar `$Temperature::freezing`. Vispirms ir sigils, tad pakotnes nosaukums, tad mainīgā nosaukums. Apakšprogrammu jūs izsaucat kā `Temperature::fahrenheit(100)`. Vērtībai `100` tā aprēķina `100 * 9/5 + 32`. Rezultāts ir `212`.

1. Vienkāršs `package` dod tikai vārdtelpu. Bibliotēkai mēs tā vietā izmantotu `module`. Bibliotēku var izmantot atkal un atkal. Vēlāk, ar objektiem, mēs izmantotu `class`. Bet vārdtelpa visos šajos gadījumos darbojas vienādi.

{% include nav.html %}
