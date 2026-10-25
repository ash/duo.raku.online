---
title: Raku, Rakudo, Raku++ un mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** ir programmēšanas valodas nosaukums. **Kompilators** ir programma, kas nolasa jūsu kodu un izpilda to. Raku nav piesaistīts tikai vienam kompilatoram. Šajā kursā lieto **Rakudo**, kas pastāv jau daudzus gadus. Ir arī jaunāki: **Raku++** un **mutsu**.

## Vairāk nekā viens kompilators

Raku uzbūve nenosaka, kurš kompilators jums jālieto. Tās uzbūves dokumentiem līdzi nāk testu kopa, ko sauc Roast. Kompilatoru var uzrakstīt jebkurš. Ja tas iztur šos testus, tas ir Raku kompilators.

Ilgu laiku Rakudo bija vienīgais pilnīgais un stabilais kompilators. Tagad tā vairs nav. 2026. gada jūlijā parādījās otrs kompilators: **Raku++**, kas uzrakstīts C++ valodā. Tā izpildāmais fails saucas `rakupp`. Versija 5.4.1 iztur visu Roast testu kopu. Tas arī startē pārsteidzoši ātri. Šis kurss piemēros lieto Rakudo. Bet tas, ko jūs mācāties, ir pati Raku valoda. Gandrīz viss no tās bez izmaiņām darbojas arī uz Raku++.

Ir arī trešā īstenošana, **mutsu**. Tas ir interpretators, ko Rust valodā uzrakstījis Tokuhiro Matsuno. Tas kompilē Raku baitkodā savai virtuālajai mašīnai. Ar WebAssembly palīdzību tas darbojas arī tīmekļa pārlūkprogrammā. Tā vietnē ir Raku pamācība un spēļu laukums, kas balstīti uz to. Projekts joprojām tiek aktīvi izstrādāts. Tā autors saka, ka tas vēl nav gatavs īstiem projektiem. Bet tas jau iztur gandrīz visus Roast testu failus.

Nākamās lappuses aplūko visus trīs pēc kārtas: Rakudo, Raku++ un mutsu. Tās arī paskaidro, kā tos uzstādīt.

## Ārējās saites

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
