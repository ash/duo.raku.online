---
title: Moduļu introspekcija
translations_gpt:
---

{% include menu.html %}

Moduļa nosaukums izveido _pakotni_. Pakotne ir nosaukumtelpa, kas glabā modulī definētos nosaukumus. Iepriekš, [sadaļā par konteineriem](/lv/advanced/containers), jūs iepazināties ar `WHO`. Tas atgriež pakotnes `Stash` jeb simbolu tabulu. Moduļu introspekcija to izmanto.

Tālākie piemēri izmanto moduli `Greeting`, ko mēs izveidojām iepriekšējās tēmās. Tam ir eksportēta apakšprogramma un koplietots `our` mainīgais:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Jūs rakstāt moduļa pakotni ar `::` beigās. Pievienojot `.keys`, jūs iegūstat nosaukumus, kas tajā ir:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

Modulis `Greeting` no iepriekšējām tēmām definē `our` mainīgo `$version`. Tāpēc tā pakotnē ir šis nosaukums kopā ar sigilu. Blakus tam ir `EXPORT`, kas var šķist pārsteidzoši. Tā ir pakotne, ko Raku izveido automātiski. Tā glabā visu, ko modulis atzīmē ar `is export`, piemēram, apakšprogrammu `hello`. Tāpēc eksportēts nosaukums _neparādās_ tieši pakotnē. Tas atrodas apakšpakotnē `EXPORT`. Atslēgas tiek atgrieztas bez noteiktas secības. Tāpēc piemērs tās sakārto, lai rezultāts vienmēr būtu vienāds.

Jūs varat arī meklēt nosaukumu pakotnē. Vienkārši izmantojiet nosaukumu kā atslēgu. Tas dod to pašu vērtību kā kvalificētais nosaukums `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Moduļa eksportēto elementu uzskaitīšana

Eksportētie nosaukumi patiesībā atrodas pakotnē `EXPORT`, ko redzējāt augstāk. Tāpēc tos var uzskaitīt, ieskatoties vienu līmeni dziļāk. Eksporti bez birkas nonāk grupā `DEFAULT` (skatiet [Eksporta birkas](/lv/advanced/modules-basics/export-tags)). Šīs grupas `.keys` ir eksportētās rutīnas:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Katra atslēga ir eksportēts nosaukums ar tā sigilu. Šeit tā ir vienīgā apakšprogramma `&hello` ar `&`, kas apzīmē rutīnu. Šādi jūs varat uzzināt, ko modulis piedāvā saviem lietotājiem. Jums nav jālasa tā pirmkods. Vienkārši pajautājiet tā pakotnei `EXPORT::DEFAULT`, ko tā satur.

Šāda ieskatīšanās pakotnē noder divos gadījumos. Varbūt jūs vēlaties uzzināt, ko modulis piedāvā. Vai arī jūs vēlaties piekļūt tā nosaukumiem programmas darbības laikā. Tad jums nav jāieraksta katrs no tiem pirmkodā.

{% include nav.html %}
