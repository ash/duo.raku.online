---
title: Moduļu introspekcija
translations_gpt:
---

{% include menu.html %}

Moduļa nosaukums izveido arī _pakotni_. Pakotne ir nosaukumtelpa. Tā glabā moduļa nosaukumus. Iepriekš, [sadaļā par konteineriem](/lv/advanced/containers), jūs redzējāt `WHO`. Tas atgriež pakotnes `Stash`. `Stash` ir pakotnes simbolu jeb nosaukumu tabula. Moduļu introspekcija to izmanto. Ar to programma ieskatās modulī.

Tālākie piemēri izmanto moduli `Greeting` no iepriekšējām tēmām. Tam ir apakšprogramma, ko tas eksportē. Tam ir arī koplietots `our` mainīgais:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Lai iegūtu moduļa pakotni, rakstiet `::` aiz tā nosaukuma. Tad pievienojiet `.keys`. Tas uzskaita pakotnes nosaukumus:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

Modulim `Greeting` no iepriekšējām tēmām ir `our` mainīgais `$version`. Tāpēc tā pakotnē ir šis nosaukums. Nosaukumā ir arī sigils. Blakus tam jūs redzat `EXPORT`. Tas var jūs pārsteigt. Arī `EXPORT` ir pakotne. Raku to izveido automātiski. Modulis dažas lietas atzīmē ar `is export`. `EXPORT` glabā tās visas, piemēram, apakšprogrammu `hello`. Tāpēc eksportēts nosaukums _nav_ tieši pakotnē. Tas ir pakotnē `EXPORT`. Tā ir mazāka pakotne moduļa pakotnes iekšienē. Atslēgas nenāk noteiktā secībā. Tāpēc piemērs tās sakārto. Tad rezultāts vienmēr ir vienāds.

Jūs varat arī atrast nosaukumu pakotnē. Izmantojiet nosaukumu kā atslēgu. Jūs iegūstat to pašu vērtību kā ar pilno nosaukumu `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Moduļa eksportu uzskaitīšana

Eksportētie nosaukumi patiesībā ir jau redzētajā pakotnē `EXPORT`. Tāpēc jūs varat tos uzskaitīt. Vienkārši ieskatieties vienu līmeni dziļāk. Eksporti bez birkas nonāk grupā `DEFAULT`. Par birkām varat lasīt sadaļā [Eksporta birkas](/lv/advanced/modules-basics/export-tags). Grupas `DEFAULT` atslēgas `.keys` ir eksportētās rutīnas:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Katra atslēga ir eksportēts nosaukums ar tā sigilu. Šeit ir tikai viena atslēga: apakšprogramma `&hello`. Sigils `&` parāda, ka tā ir rutīna. Tā jūs varat uzzināt, ko modulis dod saviem lietotājiem. Jums nav jālasa tā pirmkods. Vienkārši pajautājiet tā pakotnei `EXPORT::DEFAULT`, kas tajā ir.

Ir noderīgi šādi ieskatīties pakotnē. Jūs varat uzzināt, kas modulim ir. Jūs varat arī piekļūt tā nosaukumiem, kamēr programma darbojas. Tad jums nav jāraksta katrs nosaukums kodā.

{% include nav.html %}
