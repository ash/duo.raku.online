---
title: Speciālo rakstzīmju izbēgšana
---

{% include menu.html %}

Iedomājieties, ka jūs gribat izdrukāt cenu zīmi. Produkta nosaukums ir skalārajā mainīgajā. Cena ir citā skalārajā mainīgajā.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

Cena ir dolāros. Kā tad izdrukāt zīmi? Jūs gribat šādu izvadi: `Electricity costs $3.14`. Bet dubultajās pēdiņās dolāra zīme norāda uz mainīgo. Raku interpolē šo mainīgo. Lai izdrukātu pašu `$`, aizbēdziet to ar atpakaļslīpsvītru:

```raku
say "$product costs \$$price";
```

Jūs varat izmantot arī virkņu savienošanu. Tad jums nav jāaizbēg `$`:

```raku
say $product ~ ' costs $' ~ $price;
```

Šis variants izdrukā tieši tādu pašu virkni. Bet interpolācija izskatās dabiskāk. To ir vieglāk lasīt. Apskatiet virkni vienkāršajās pēdiņās: `' costs $'`. Šeit Raku neinterpolē `$` rakstzīmi. Tas to arī neaizbēg. Tā ir galvenā atšķirība. Vienkāršajās pēdiņās speciālās rakstzīmes paliek tādas, kādas tās ir.

Šeit ir vēl dažas speciālās rakstzīmes. Virknēs dubultajās pēdiņās tām ir īpaša nozīme:

`\$` | Dolāra zīme
`\n` | Jauna rinda
`\r` | Karietes atgriešana (atpakaļ uz rindas sākumu)
`\t` | Horizontāla tabulācija
`\"` | Dubultā pēdiņa
`\\` | Atpakaļslīpsvītra

Pēdiņas ap virkni ir svarīgas. Tās saka Raku, ko darīt ar speciālajām rakstzīmēm. Apskatiet šos divus piemērus:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Palaidiet šo programmu. Pirmā virkne paliek tāda, kāda tā ir, vienā rindā. Otrā virkne tagad ir divās daļās:

    One\nTwo
    Three
    Four

Dubultajās pēdiņās `\n` ir speciāla secība. Raku to pārvērš par jaunas rindas rakstzīmi. Vienkāršajās pēdiņās `\n` ir vienkārši divas parastas rakstzīmes: `\` un `n`.

Ir interesants izņēmums ar `'` un `\`. Vienkāršajās pēdiņās jūs varat aizbēgt vienpēdiņu. Ielieciet tās priekšā `\`:

```raku
say '\''; # '
```

Dažreiz aiz atpakaļslīpsvītras ir vienpēdiņa. Tad jums jāaizbēg arī atpakaļslīpsvītra:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
