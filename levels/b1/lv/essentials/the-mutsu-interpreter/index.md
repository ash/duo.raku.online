---
title: Interpretators mutsu
translations_gpt:
---

{% include menu.html %}

**mutsu** ir trešā Raku īstenošana, ko **Rust** valodā uzrakstījis Tokuhiro Matsuno. Tāpat kā Rakudo, tas kompilē jūsu programmu baitkodā un izpilda to uz virtuālās mašīnas. Bet šī virtuālā mašīna nav MoarVM. Tā ir paša mutsu mašīna, iebūvēta izpildāmajā failā `mutsu`.

mutsu atbalsta Raku 6.d, un to joprojām aktīvi izstrādā. Tā autors atklāti saka, ka tas vēl nav gatavs īstiem projektiem. Bet tas jau iztur gandrīz visus Roast testu failus. Tāpēc gandrīz visas šī kursa programmas uz tā darbojas bez izmaiņām.

Mācoties ir svarīgs viens trūkums: dažu kompilēšanas laika pārbaužu vēl nav. Visredzamākais gadījums versijā 0.24.0 ir šāds. Iedomājieties, ka jūs aizmirstat deklarēt mainīgo. Rakudo un Raku++ par to ziņo, pirms programma tiek palaista. Bet mutsu to nedara. Kad kurss rāda šādu kļūdu, izmēģiniet šo piemēru ar Rakudo vai Raku++.

## Raku pārlūkprogrammā

mutsu var arī kompilēt uz WebAssembly. Tad tas darbojas tīmekļa lappusē. Tā vietne, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), to izmanto vairākos veidos. Tajā ir Raku ievads angļu un japāņu valodā. Ir arī praktiska pamācība. Un ir spēļu laukums, kurā varat palaist Raku, neko neinstalējot. Visu šajās lappusēs darbina pats mutsu.

## Moduļi

mutsu nāk ar savu zef pakotņu pārvaldnieka kopiju, ko sauc `mzef`. Tāpēc Raku moduļus tam var instalēt ierastajā veidā. Vienkārši ierakstiet `mzef install` un moduļa nosaukumu.

## Pirmkods

mutsu ir atvērtā koda projekts. To var atrast vietnē [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Tur ir arī izlaidumu būvējumi un būvēšanas norādes.

{% include nav.html %}
