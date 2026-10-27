---
title: Failu un direktoriju dzēšana
translations_gpt:
---

{% include menu.html %}

`spurt` un `mkdir` rada lietas uz diska, un divas citas rutīnas tās noņem.

Rutīna `unlink` dzēš failu:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` izdzēš failu ar doto nosaukumu. Tāpat kā pārējām failu sistēmas rutīnām, arī tai ir metodes forma. Jūs to izsaucat uz ceļa objekta: `'temp.txt'.IO.unlink`.

Dzēšana notiek uzreiz un ir neatgriezeniska. Nav miskastes, no kuras failu varētu dabūt atpakaļ. Ievērojiet vēl vienu lietu par izdzēstu failu. Jums tas jāpārbauda ar `.e` (esamība), nevis ar `.f`. Tipa pārbaudes `.f` un `.d` izmet kļūdu, ja ceļa nav.

Rutīna `rmdir` noņem direktoriju, taču tikai **tukšu**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Ja direktorijā vēl kaut kas ir, `rmdir` neko nenoņem. Direktorija paliek, kur bija. Tāpēc, lai izdzēstu direktoriju ar failiem, vispirms to iztukšojiet un tad noņemiet:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` uzskaita direktorijas ierakstus, kā jūs redzējāt iepriekšējā tematā. `.unlink` izsaukums uz katra ieraksta to noņem. Kad direktorija ir tukša, `rmdir` var to noņemt. Ievērojiet, ka šis vienkāršais cikls sagaida, ka direktorijā ir tikai faili. Kokam ar ligzdotām apakšdirektorijām vajadzētu rekursiju, lai tās vispirms iztukšotu.

{% include nav.html %}
