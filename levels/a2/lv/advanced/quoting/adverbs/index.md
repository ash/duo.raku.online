---
title: Citēšanas apzīmētāji
---

{% include menu.html %}

Jūs varat mainīt, kā strādā citēšanas konstrukcija. Tam jūs izmantojat _adverbus_. Citēšanas konstrukcijai ir vairākas funkcijas. Piemēram, tā var interpolēt skalārus. Tā var izpildīt kodu figūriekavās. Tā var apstrādāt atpakaļsvītras. Katrai funkcijai ir savs adverbs. Adverbs ieslēdz vai izslēdz tieši šo funkciju. Tāpēc jūs varat sākt no `q` vai `Q`. Tad jūs pievienojat tieši tās funkcijas, kas jums vajadzīgas.

Šeit ir daži bieži lietoti adverbi:

* `:s` / `:scalar` — ievieto virknē skalāro mainīgo (`$x`) vērtības
* `:c` / `:closure` — izpilda kodu `{ … }` un ievieto rezultātu virknē
* `:b` / `:backslash` — apstrādā atpakaļsvītras aizbēgšanas secības, piemēram, `\n`

Pievienojiet `q` vienu adverbu. Tad `q` iegūst vienu funkciju. Piemēram, ļaujiet tam izpildīt kodu, bet neko citu:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — parasts q atstāj bloku neskartu
say q:c/result: {3 * 4}/; # result: 12        — :c izpilda bloku
```

Ar parastu `q` Raku izdrukā `{ 3 * 4 }` tādu, kāds tas ir. Tikai `:c` izpilda bloku. Tad Raku ievieto rezultātu virknē. `$mainīgais` joprojām paliek tāds, kāds tas ir. Apskatiet šeit norobežotājus: `/…/`. Norobežotāji ir rakstzīmes ap tekstu. Jūs varat izmantot arī `{…}` kā norobežotājus. Kļūdas nav, jo kompilators pareizi saskaita figūriekavas. Bet tad iekšējais `{ 3 * 4 }` ir tikai daļa no teksta. Tas nav kods. Tāpēc `:c` to neizpilda, un tas paliek tāds, kāds ir. Vai tekstā ir `{ … }` bloks? Tad neizmantojiet `{…}` kā norobežotājus. Izmantojiet citus norobežotājus. Tad kods figūriekavās izpildās. Jūs varat arī pievienot skalāro interpolēšanu formai `Q`. Bez tās `Q` atstāj visu tekstu tādu, kāds tas ir:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Adverbi var arī **izslēgt** funkcijas. Tam uzrakstiet `!`. Šeit mēs izmantojam `qq`, bet `$` paliek parasta rakstzīme:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` ir tas pats, kas `Q` ar visiem ieslēgtiem interpolēšanas adverbiem. `q` ir tas pats, kas `Q` ar mazāk ieslēgtiem adverbiem. Ar adverbiem jūs varat izvēlēties katru funkciju starp šiem diviem galiem.

{% include nav.html %}
