---
title: Citēšanas apzīmētāji
---

{% include menu.html %}

Citēšanas konstrukcijas uzvedību var pielāgot ar _adverbiem_. Katrai citēšanas funkcijai ir savs adverbs, kas ieslēdz vai izslēdz tieši šo funkciju. Šīs funkcijas ir skalāru interpolēšana, slēgumu (koda figūriekavās) izpilde un atpakaļsvītru apstrāde. Tāpēc jūs varat sākt no `q` vai `Q`. Tad jūs pievienojat tieši tās funkcijas, kas jums vajadzīgas.

Daži bieži lietotie adverbi:

* `:s` / `:scalar` — interpolē skalāros mainīgos (`$x`)
* `:c` / `:closure` — interpolē kodu `{ … }`
* `:b` / `:backslash` — apstrādā atpakaļsvītras aizbēgšanas secības, piemēram, `\n`

Pievienojiet `q` vienu adverbu, lai ieslēgtu vienu funkciju. Piemēram, atļaujiet kodu figūriekavās, bet neko citu:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — parasts q atstāj bloku neskartu
say q:c/result: {3 * 4}/; # result: 12        — :c izpilda bloku
```

Ar parastu `q` bloks `{ 3 * 4 }` tiek izdrukāts tieši tā, kā uzrakstīts. Tikai `:c` liek blokam izpildīties un ievieto tā vērtību. Turpretī `$mainīgais` joprojām paliktu tāds, kāds tas ir. Ievērojiet šeit norobežotājus `/…/`. Jūs varētu izmantot arī `{…}` kā norobežotājus, un kods joprojām kompilētos. Kompilators pareizi saskaita ligzdotās figūriekavas. Bet tad iekšējais `{ 3 * 4 }` būtu tikai daļa no teksta, nevis slēgums. Tāpēc `:c` to atstātu tādu, kāds tas ir. Tātad, ja tekstā ir `{ … }` bloks, izvēlieties citu norobežotāju, nevis `{…}`. Tad slēgums patiešām izpildās. Jūs varat arī pievienot skalāro interpolēšanu formai `Q`, kas parasti neko nemaina:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Ar `!` adverbi arī **izslēdz** funkcijas. Lūk, kā izmantot `qq`, bet atstāt `$` tādu, kāds tas ir:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` ir tas pats, kas `Q` ar visiem ieslēgtiem interpolēšanas adverbiem. `q` ir tas pats, kas `Q` ar mazāku to kopu. Starp šiem diviem galiem adverbi ļauj jums kontrolēt katru detaļu.

{% include nav.html %}
