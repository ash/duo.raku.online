---
title: Raku, Rakudo, Raku++ e mutsu
translations_gpt:
---

{% include menu.html %}

**Raku** è il nome del linguaggio di programmazione. Un **compilatore** è il programma che legge il vostro codice e lo esegue. Raku non è legato a un solo compilatore. Questo corso usa **Rakudo**, che esiste da molti anni. Ce ne sono anche di più nuovi: **Raku++** e **mutsu**.

## Più di un compilatore

Il progetto di Raku non dice quale compilatore dovete usare. I suoi documenti di progetto hanno una serie di test chiamata Roast. Chiunque può scrivere un compilatore. Se supera quei test, è un compilatore Raku.

Per molto tempo, Rakudo è stato l'unico compilatore completo e stabile. Ora non è più così. Nel luglio 2026 è comparso un secondo compilatore: **Raku++**, scritto in C++. Il suo file eseguibile si chiama `rakupp`. La versione 5.4.1 supera tutta la suite di test Roast. Inoltre si avvia con una velocità sorprendente. Questo corso usa Rakudo per i suoi esempi. Ma quello che imparate è il linguaggio Raku stesso. Quasi tutto gira anche su Raku++ senza cambiamenti.

C'è anche una terza implementazione, **mutsu**. È un interprete, scritto in Rust da Tokuhiro Matsuno. Compila Raku in bytecode per la sua macchina virtuale. Grazie a WebAssembly, gira anche dentro un browser web. Il suo sito ha un tutorial di Raku e un campo da gioco basati su di esso. Il progetto è ancora in fase di sviluppo attivo. Il suo autore dice che non è ancora pronto per progetti reali. Ma supera già quasi tutti i file di test di Roast.

Le pagine seguenti esaminano i tre uno alla volta: Rakudo, Raku++ e mutsu. Spiegano anche come installarli.

## Collegamenti esterni

* [raku.org](https://raku.org)
* [rakudo.org](https://rakudo.org)
* [moarvm.org](https://moarvm.org)
* [Raku++ su GitHub](https://github.com/ash/rakupp)
* [mutsu](https://tokuhirom.github.io/mutsu/)
* [Roast](https://github.com/Raku/roast)

{% include nav.html %}
