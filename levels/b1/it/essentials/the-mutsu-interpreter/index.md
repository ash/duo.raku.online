---
title: L'interprete mutsu
translations_gpt:
---

{% include menu.html %}

**mutsu** è una terza implementazione di Raku, scritta in **Rust** da Tokuhiro Matsuno. Come Rakudo, compila il tuo programma in bytecode e lo esegue su una macchina virtuale. Ma questa macchina virtuale non è MoarVM. È la macchina di mutsu stesso, integrata nell'eseguibile `mutsu`.

mutsu supporta Raku 6.d ed è ancora in fase di sviluppo attivo. Il suo autore dice apertamente che non è ancora pronto per progetti reali. Ma supera già quasi tutti i file di test di Roast. Quindi quasi tutti i programmi di questo corso girano su mutsu senza cambiamenti.

C'è un limite che conta mentre impari: mancano ancora alcuni controlli in fase di compilazione. Il caso più visibile, nella versione 0.24.0, è questo. Immagina di dimenticare di dichiarare una variabile. Rakudo e Raku++ lo segnalano prima di eseguire il programma. Ma mutsu non lo fa. Quando il corso mostra un errore di questo tipo, prova quell'esempio con Rakudo o Raku++.

## Raku nel browser

mutsu si può anche compilare in WebAssembly. Allora gira dentro una pagina web. Il suo sito, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), lo usa in diversi modi. Ha un'introduzione a Raku in inglese e in giapponese. C'è anche un tutorial pratico. E c'è un campo da gioco dove puoi eseguire Raku senza installare nulla. Tutto in quelle pagine gira con mutsu stesso.

## Moduli

mutsu ha una propria copia del gestore di pacchetti zef, chiamata `mzef`. Quindi puoi installare i moduli Raku per mutsu nel solito modo. Basta scrivere `mzef install` e il nome del modulo.

## Codice sorgente

mutsu è open source. Puoi trovarlo su [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Lì ci sono anche le build delle release e le istruzioni di compilazione.

{% include nav.html %}
