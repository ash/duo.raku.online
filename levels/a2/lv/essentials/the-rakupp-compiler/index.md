---
title: Kompilators Raku++ 🆕
translations_gpt:
---

{% include menu.html %}

**Raku++** ir otrs Raku kompilators. Tā programmas fails saucas `rakupp`. Pirmā versija iznāca 2026. gada jūlijā. Rakudo darbojas uz MoarVM virtuālās mašīnas. Raku++ ir citāds. Tā autors to uzrakstīja **C++** valodā. Tam nav vajadzīga sava virtuālā mašīna.

Tas vienlaikus ir **interpretators** un **kompilators**. Tas var izpildīt programmu tieši. Tas var arī pārvērst programmu mašīnkodā. Tad programma darbojas ātrāk. Tam nav vispirms jāpalaiž liela izpildlaika sistēma. Tāpēc `rakupp` startē tikai dažās milisekundēs. Tas ir ērts īsiem skriptiem. Tas ir ērts arī ikdienas darbam komandrindā. Tā autors to sauc par ātrāko Raku kompilatoru.

Pēc noklusējuma Raku++ atbalsta Raku 6.d. Tas atbalsta arī 6.e. Programma pieprasa 6.e ar `use v6.e.PREVIEW`. Versija 5.4.1 iznāca 2026. gada oktobrī. Tā iztur visus 1425 Roast testu failus. Roast ir oficiālā Raku testu kopa.

Raku++ darbojas arī tīmekļa pārlūkprogrammā. Pārlūkam to kompilē uz WebAssembly. Spēļu laukums vietnē [raku.online](https://raku.online) darbojas ar to. Tur jūs varat izmēģināt Raku, neko neinstalējot.

## Interpretatora un kompilatora režīmi

Palaidiet programmu tieši, tāpat kā ar Rakudo:

```console
$ rakupp hello.raku
```

Vai arī palūdziet Raku++ izveidot mašīnkoda programmas failu. Tas darbojas patstāvīgi. Un tas ir vēl ātrāks:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Ikdienas mācībām jums vajag tikai vienkāršo interpretatora režīmu. Kompilēšanas režīmi ir papildu ātrumam.

## Pirmkods

Raku++ ir atvērtā koda projekts. To var atrast vietnē [github.com/ash/rakupp](https://github.com/ash/rakupp). Šajā lapā ir arī izlaidumu faili un norādes, kā to uzbūvēt.

{% include nav.html %}
