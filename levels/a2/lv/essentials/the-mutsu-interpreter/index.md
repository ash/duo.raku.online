---
title: Interpretators mutsu
translations_gpt:
---

{% include menu.html %}

**mutsu** ir trešā Raku īstenošana. Tokuhiro Matsuno to uzrakstīja **Rust** valodā. Tāpat kā Rakudo, tas kompilē jūsu programmu baitkodā. Tad tas izpilda baitkodu uz virtuālās mašīnas. Bet šī mašīna nav MoarVM. Tā ir paša mutsu mašīna. Tā atrodas `mutsu` programmas failā.

mutsu atbalsta Raku 6.d. Tā autors joprojām daudz pie tā strādā. Tas vēl nav gatavs īstiem projektiem. Autors to saka skaidri. Bet tas jau iztur gandrīz visus Roast testu failus. Tāpēc gandrīz visas šī kursa programmas uz tā darbojas bez izmaiņām.

Mācoties ir svarīga viena lieta, kas vēl trūkst. Dažu kompilēšanas laika pārbaužu vēl nav. Šīs pārbaudes notiek pirms programmas palaišanas. Šeit ir pats redzamākais gadījums versijā 0.24.0. Varbūt jūs aizmirstat deklarēt mainīgo. Rakudo un Raku++ par to ziņo pirms programmas palaišanas. Bet mutsu to nedara. Vai kurss rāda šādu kļūdas paziņojumu? Tad izmēģiniet šo piemēru ar kādu no abiem pārējiem kompilatoriem.

## Raku pārlūkprogrammā

Jūs varat arī kompilēt mutsu uz WebAssembly. Tad tas darbojas tīmekļa lappusē. Tā vietne, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), to izmanto. Tajā ir Raku ievads angļu un japāņu valodā. Tajā ir arī pamācība. Pamācībā jūs visu izmēģināt paši. Un tajā ir spēļu laukums. Tur jūs varat palaist Raku, neko neinstalējot. Visās šajās lappusēs darbojas pats mutsu.

## Moduļi

mutsu nāk ar savu zef pakotņu pārvaldnieka kopiju. Šo kopiju sauc `mzef`. Tāpēc ar mutsu jūs varat instalēt Raku moduļus kā parasti. Ierakstiet `mzef install` un tad moduļa nosaukumu.

## Pirmkods

mutsu ir atvērtā koda projekts. To var atrast vietnē [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Šajā lapā ir arī izlaidumu būvējumi un būvēšanas norādes.

{% include nav.html %}
