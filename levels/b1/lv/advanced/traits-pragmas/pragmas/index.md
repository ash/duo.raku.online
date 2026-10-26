---
title: Pragmas
---

{% include menu.html %}

_Pragma_ izskatās kā modulis, ko ielādē ar `use`. Bet tā neienes nekādu kodu. Tā vietā tā maina kādu kompilēšanas noteikumu pārējā pašreizējā tvērumā. Jūs to ieslēdzat ar `use` un, kur tas ir jēgpilni, izslēdzat ar `no`.

Vissvarīgākā pragma, `strict`, Raku valodā ir **ieslēgta pēc noklusējuma**. Tā pieprasa, lai jūs deklarētu katru mainīgo pirms lietošanas. Tāpēc Raku pamana drukas kļūdu mainīgā nosaukumā. Bez tās drukas kļūda klusi izveidotu jaunu mainīgo.

Ja izslēdzat `strict` ar `no strict`, šis noteikums vairs nav spēkā. Tad jūs varat piešķirt vērtību mainīgajam, kas nekad nav deklarēts ar `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

Ar noklusēto `strict` šis `$x = 42` bez deklarācijas būtu kompilēšanas laika kļūda. Ziņojums ir *Variable '$x' is not declared*. Rinda `no strict` atvieglo noteikumu līdz tā tvēruma beigām, kurā tā atrodas.

Dažas citas pragmas ir `fatal`, `isms` un `variables`. `fatal` pārvērš klusu kļūdu par izmestu izņēmumu. Tas noder, kad jūs jau protat apstrādāt izņēmumus. `isms` atļauj rakstības veidus, kas nāk no citām valodām. `variables` ļauj pielāgot mainīgo noteikumus. Pragmas iedarbība ir _leksiska_. Tā ilgst tikai līdz tā bloka beigām, kurā tā atrodas. Tāpēc jūs varat padarīt noteikumu stingrāku vai brīvāku. To var darīt tieši tajā koda daļā, kur tas jums vajadzīgs.

Viena pragma pieņem argumentu: `lib`. Tā pievieno direktoriju sarakstam, kurā Raku meklē, kad ielādē moduļus. Tā dara to pašu, ko komandrindas opcija `-I`, bet programmas iekšienē:

```raku
use lib 'lib';
```

Jūs sāksiet to lietot, kad sāksiet rakstīt un ielādēt savus [moduļus](/lv/advanced/modules-basics/using-modules).

{% include nav.html %}
