---
title: Speciālo rakstzīmju izbēgšana
---

{% include menu.html %}

Iedomājieties, ka vēlaties izdrukāt cenu zīmi. Produkta nosaukumu un tā cenu jūs glabājat divos skalārajos mainīgajos.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

Kā izdrukāt zīmi, ja cena ir dolāros? Izvadei jābūt `Electricity costs $3.14`. Bet dubultpēdiņu virknēs dolāra zīme rāda, ka mainīgais ir jāinterpolē. Lai izdrukātu pašu `$` rakstzīmi, jums tā ir jāaizbēg:

```raku
say "$product costs \$$price";
```

Protams, ar virkņu savienošanu jūs varat arī iztikt bez `$` aizbēgšanas:

```raku
say $product ~ ' costs $' ~ $price;
```

Šis variants izdrukā tieši tādu pašu virkni. Bet interpolācija izskatās dabiskāk, un to ir vieglāk lasīt. Ievērojiet virkni vienkāršajās pēdiņās `' costs $'`. Tajā `$` rakstzīme netiek ne interpolēta, ne aizbēgta. Tā ir galvenā atšķirība. Speciālās rakstzīmes vienkāršajās pēdiņās parādās tādas, kādas tās ir.

Dubultpēdiņu virknēs īpaša nozīme ir vēl dažām rakstzīmēm:

`\$` | Dolāra zīme
`\n` | Jauna rinda
`\r` | Karietes atgriešana
`\t` | Horizontāla tabulācija
`\"` | Dubultā pēdiņa
`\\` | Atpakaļslīpsvītra

Pēdiņu veids ap virkni nosaka, kā Raku apstrādā speciālās rakstzīmes. Apskatiet šos divus piemērus:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Ja jūs palaižat šo programmu, pirmā virkne parādās nemainīta, vienā rindā. Bet otrā virkne ir sadalīta divās daļās:

    One\nTwo
    Three
    Four

Dubultajās pēdiņās Raku apstrādā speciālo secību `\n` kā jaunas rindas rakstzīmi. Vienkāršajās pēdiņās tās ir tikai divas parastas rakstzīmes: `\` un `n`.

Ir interesants izņēmums ar `'` un `\`. Vienkāršajās pēdiņās jūs varat aizbēgt vienpēdiņu, ieliekot tās priekšā `\`:

```raku
say '\''; # '
```

Ja atpakaļslīpsvītrai seko vienpēdiņa, jums jāaizbēg arī atpakaļslīpsvītra:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
