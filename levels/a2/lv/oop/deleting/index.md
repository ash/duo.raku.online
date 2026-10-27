---
title: Failu un direktoriju dzēšana
translations_gpt:
---

{% include menu.html %}

`spurt` un `mkdir` rada lietas uz diska. Divas citas rutīnas noņem lietas no diska.

Rutīna `unlink` dzēš failu:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` izdzēš failu ar doto nosaukumu. Tāpat kā citas failu sistēmas rutīnas, `unlink` ir arī metode. Jūs to izsaucat uz ceļa objekta: `'temp.txt'.IO.unlink`.

Dzēšana notiek uzreiz, un tā ir uz visiem laikiem. Miskastes nav. Failu nevar dabūt atpakaļ. Ievērojiet vēl vienu lietu. Pēc faila dzēšanas pārbaudiet to ar `.e`. Šī metode pārbauda, vai ceļš eksistē. Šeit nelietojiet `.f`. Pārbaudes `.f` un `.d` pārbauda ceļa tipu. Tās dod kļūdu, ja ceļa nav.

Rutīna `rmdir` noņem direktoriju. Bet direktorijai jābūt **tukšai**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Ja direktorija nav tukša, `rmdir` neko nenoņem. Direktorija paliek savā vietā. Tāpēc direktoriju ar failiem jūs dzēšat divos soļos. Vispirms jūs to iztukšojat. Tad jūs to noņemat:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` dod direktorijas ierakstu sarakstu. Jūs to redzējāt iepriekšējā tematā. Programma izsauc `.unlink` uz katra ieraksta. Tas noņem tos visus. Tagad direktorija ir tukša. Tāpēc `rmdir` var to noņemt. Šis vienkāršais cikls sagaida direktorijā tikai failus. Bet direktorijā var būt arī citas direktorijas. Tad jums vispirms jāiztukšo katra iekšējā direktorija. Jūs to darāt tādā pašā veidā.

{% include nav.html %}
