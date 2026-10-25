---
title: Raku, Rakudo, Raku++ un mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** ir programmēšanas valodas nosaukums. **Kompilators** ir programma. Tas nolasa jūsu kodu un izpilda to. Raku valodai var būt vairāki kompilatori. Šis kurss lieto **Rakudo**, vecāko un labi zināmo kompilatoru. Ir arī jaunāki: **Raku++** un **mutsu**.

## Vairāk nekā viens kompilators

Raku uzbūve nesaka, kuru kompilatoru lietot. Uzbūves dokumentiem ir līdzi testu kopa. Šo kopu sauc Roast. Kompilatoru var uzrakstīt jebkurš. Ja tas iztur šos testus, tas ir Raku kompilators.

Ilgu laiku Rakudo bija vienīgais pilnīgais un stabilais kompilators. Tagad tā vairs nav. 2026. gada jūlijā iznāca otrs kompilators: **Raku++**. Tā autors to uzrakstīja C++ valodā. Tā programmas fails saucas `rakupp`. Versija 5.4.1 iztur visus Roast testus. Tas arī startē ļoti ātri. Šis kurss piemēros lieto Rakudo. Bet jūs mācāties pašu Raku valodu. Gandrīz viss no tās darbojas arī uz Raku++, bez izmaiņām.

Ir arī trešais: **mutsu**. Tas ir interpretators. Tokuhiro Matsuno to uzrakstīja Rust valodā. Tas kompilē Raku kodu baitkodā. Tad šo baitkodu izpilda tā paša virtuālā mašīna. To var palaist arī tīmekļa pārlūkprogrammā, ar WebAssembly palīdzību. Tā vietnē ir Raku pamācība un spēļu laukums. Abi darbojas uz mutsu. Autors joprojām daudz pie tā strādā. Autors saka, ka tas vēl nav gatavs īstiem projektiem. Bet tas jau iztur gandrīz visus Roast testu failus.

Nākamās lappuses rāda katru no trim: Rakudo, Raku++ un mutsu. Tās arī rāda, kā tos uzstādīt.

## Ārējās saites

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
