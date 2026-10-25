---
title: L'interprete mutsu
translations_gpt:
---

{% include menu.html %}

**mutsu** è una terza implementazione di Raku. Tokuhiro Matsuno l'ha scritta in **Rust**. Come Rakudo, compila il tuo programma in bytecode. Poi esegue il bytecode su una macchina virtuale. Ma questa macchina non è MoarVM. È la macchina di mutsu stesso. Si trova dentro il file di programma `mutsu`.

mutsu supporta Raku 6.d. Il suo autore ci lavora ancora molto. Non è ancora pronto per progetti veri. L'autore lo dice chiaramente. Ma supera già quasi tutti i file di test di Roast. Quindi quasi tutti i programmi di questo corso funzionano su mutsu senza cambiamenti.

Una cosa che manca è importante mentre impari. Alcuni controlli in fase di compilazione non ci sono ancora. Questi controlli avvengono prima di eseguire il programma. Ecco il caso più visibile, nella versione 0.24.0. Forse dimentichi di dichiarare una variabile. Rakudo e Raku++ lo segnalano prima di eseguire il programma. Ma mutsu non lo fa. Il corso mostra un messaggio di errore così? Allora prova quell'esempio con uno degli altri due compilatori.

## Raku nel browser

Puoi anche compilare mutsu in WebAssembly. Allora gira dentro una pagina web. Il suo sito, [tokuhirom.github.io/mutsu](https://tokuhirom.github.io/mutsu/), usa questa possibilità. Ha un'introduzione a Raku in inglese e in giapponese. Ha anche un tutorial. Nel tutorial provi le cose da solo. E ha un campo da gioco. Lì puoi eseguire Raku senza installare niente. Tutte queste pagine usano mutsu stesso.

## Moduli

mutsu ha una sua copia del gestore di pacchetti zef. Questa copia si chiama `mzef`. Quindi puoi installare i moduli Raku per mutsu come al solito. Scrivi `mzef install` e poi il nome del modulo.

## Codice sorgente

mutsu è open source. Lo trovi su [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). La pagina ha anche le build delle release e le istruzioni di compilazione.

{% include nav.html %}
