---
title: Pragmas
---

{% include menu.html %}

_Pragma_ izskatās kā modulis. Jūs to ielādējat ar `use`. Bet tā neienes jaunu kodu. Tā vietā tā maina kādu kompilēšanas noteikumu. Izmaiņa darbojas līdz pašreizējā tvēruma beigām. Jūs ieslēdzat pragmu ar `use`. Ja tam ir jēga, jūs varat to izslēgt ar `no`.

Vissvarīgākā pragma ir `strict`. Raku valodā tā ir **ieslēgta pēc noklusējuma**. Ar to jums katrs mainīgais jādeklarē pirms lietošanas. Tāpēc Raku atrod drukas kļūdas mainīgo nosaukumos. Nepareizs nosaukums klusi neizveido jaunu mainīgo.

`no strict` izslēdz `strict`. Tad šī noteikuma vairs nav. Tagad jūs varat piešķirt vērtību mainīgajam bez `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

Ar parasto `strict` šis `$x = 42` bez `my` ir kļūda. Raku to parāda kompilēšanas laikā: *Variable '$x' is not declared*. Rinda `no strict` izslēdz šo noteikumu. Tas ilgst līdz tvēruma beigām.

Ir arī citas pragmas. `fatal` liek klusai kļūdai izmest izņēmumu. Tas noder, kad esat iemācījušies apstrādāt izņēmumus. `isms` atļauj dažus tipiskus koda rakstīšanas veidus no citām valodām. `variables` maina mainīgo noteikumus. Pragmas iedarbība ir _leksiska_. Tā darbojas tikai līdz sava bloka beigām. Tāpēc jūs varat padarīt noteikumu stingrāku vai mazāk stingru. Jūs to varat darīt tieši tur, kur kodā tas jums vajadzīgs.

Viena pragma pieņem argumentu. Tā ir `lib`. Raku meklē moduļus direktoriju sarakstā. `lib` pievieno šim sarakstam direktoriju. Tā strādā kā komandrindas opcija `-I`. Bet jūs to rakstāt pašā programmā:

```raku
use lib 'lib';
```

Jums tā būs vajadzīga, kad rakstīsiet un ielādēsiet savus [moduļus](/lv/advanced/modules-basics/using-modules).

{% include nav.html %}
