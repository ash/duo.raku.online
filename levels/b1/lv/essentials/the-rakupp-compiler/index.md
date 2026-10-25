---
title: Kompilators Raku++ 🆕
translations_gpt:
---

{% include menu.html %}

**Raku++** ir otrs Raku kompilators. Tā izpildāmais fails saucas `rakupp`, un tas pirmoreiz tika izlaists 2026. gada jūlijā. Rakudo darbojas uz MoarVM virtuālās mašīnas. Savukārt Raku++ ir uzrakstīts **C++** valodā. Tam nav vajadzīga sava virtuālā mašīna.

Tas ir gan **interpretators**, gan **kompilators**. Tas var izpildīt programmu tieši. Vai arī tas var pārtulkot to mašīnkodā, lai iegūtu papildu ātrumu. Nav smagas izpildlaika vides, kas jāpalaiž. Tāpēc `rakupp` startē tikai dažās milisekundēs. Tas padara to patīkamu īsiem skriptiem un ikdienas darbam terminālī. Tā autors to sauc par ātrāko Raku kompilatoru.

Pēc noklusējuma Raku++ atbalsta Raku 6.d. Tas atbalsta 6.e, ja programma to pieprasa ar `use v6.e.PREVIEW`. Versija 5.4.1 tika izlaista 2026. gada oktobrī. Tā iztur visus 1425 Roast testu kopas failus. Roast ir oficiālā Raku testu kopa.

Raku++ darbojas arī tīmekļa pārlūkprogrammā. Tas ir kompilēts uz WebAssembly un darbina spēļu laukumu vietnē [raku.online](https://raku.online). Tur varat izmēģināt Raku, neko neinstalējot.

## Interpretatora un kompilatora režīmi

Jūs varat uzreiz palaist programmu, tieši tāpat kā ar Rakudo:

```console
$ rakupp hello.raku
```

Vai arī lieciet Raku++ izveidot no programmas atsevišķu mašīnkoda izpildāmo failu. Tas darbojas vēl ātrāk:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Ikdienas mācībām pietiek ar parasto interpretatora režīmu. Kompilēšanas režīmi ir domāti tad, kad vēlaties papildu ātrumu.

## Pirmkods

Raku++ ir atvērtā koda projekts. To var atrast vietnē [github.com/ash/rakupp](https://github.com/ash/rakupp). Tur ir arī gatavi izlaidumu faili un būvēšanas norādes.

{% include nav.html %}
