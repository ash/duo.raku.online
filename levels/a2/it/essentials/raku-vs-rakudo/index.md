---
title: Raku, Rakudo, Raku++ e mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** è il nome del linguaggio di programmazione. Un **compilatore** è un programma. Legge il vostro codice e lo esegue. Raku può avere più di un compilatore. Questo corso usa **Rakudo**, quello più vecchio e famoso. Ci sono anche compilatori più nuovi: **Raku++** e **mutsu**.

## Più di un compilatore

Il progetto di Raku non dice quale compilatore usare. I documenti del progetto hanno un insieme di test. Questo insieme si chiama Roast. Chiunque può scrivere un compilatore. Se supera questi test, è un compilatore Raku.

Per molto tempo, Rakudo è stato l'unico compilatore completo e stabile. Ora non è più così. Nel luglio 2026 è uscito un secondo compilatore: **Raku++**. Il suo autore l'ha scritto in C++. Il suo file di programma si chiama `rakupp`. La versione 5.4.1 supera tutti i test di Roast. Inoltre parte molto in fretta. Questo corso usa Rakudo per i suoi esempi. Ma voi imparate il linguaggio Raku stesso. Quasi tutto gira anche su Raku++, senza cambiamenti.

Ce n'è anche un terzo: **mutsu**. È un interprete. Tokuhiro Matsuno l'ha scritto in Rust. Compila il codice Raku in bytecode. Poi la sua macchina virtuale esegue questo bytecode. Potete anche eseguirlo in un browser web, grazie a WebAssembly. Il suo sito ha un tutorial di Raku e un campo da gioco. Tutti e due girano su mutsu. L'autore ci lavora ancora molto. L'autore dice che non è ancora pronto per progetti veri. Ma supera già quasi tutti i file di test di Roast.

Le prossime pagine mostrano tutti e tre: Rakudo, Raku++ e mutsu. Mostrano anche come installarli.

## Collegamenti esterni

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ su GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
