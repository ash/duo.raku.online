---
title: Il compilatore Rakudo
translations_gpt:
---

{% include menu.html %}

**Rakudo** è il compilatore principale di Raku. Questo corso lo usa. Oggi Rakudo è il modo più completo per eseguire Raku. È anche molto ben testato nel lavoro reale. Quindi, quando le persone dicono «il compilatore Raku», di solito intendono Rakudo.

Rakudo stesso è scritto soprattutto in Raku. Un linguaggio più piccolo aiuta a costruirlo. Questo linguaggio è NQP, abbreviazione di «Not Quite Perl». Rakudo compila il tuo programma in bytecode. Poi esegue il bytecode su una macchina virtuale chiamata **MoarVM**. Quando installi Rakudo, ricevi anche MoarVM. Rakudo cerca di coprire tutto il linguaggio. Ti serve che ogni parte di Raku funzioni? Allora Rakudo è la scelta più sicura.

Rakudo supporta Raku 6.d. Nuove versioni di Rakudo escono spesso. Così ricevi presto correzioni e nuove funzioni.

## La macchina virtuale

Di solito, Rakudo gira su MoarVM. MoarVM è una macchina virtuale fatta solo per Raku. Ma Rakudo può funzionare anche con altre macchine virtuali. Puoi costruirlo sopra di loro. Comunque, MoarVM è la scelta standard. Ha un buon supporto. Questo corso si aspetta che tu usi MoarVM. Questa è la differenza principale tra Rakudo e [Raku++](/it/essentials/the-rakupp-compiler). Raku++ è scritto in C++. Non ha bisogno di una sua macchina virtuale.

## Codice sorgente e collegamenti

Rakudo è open source. Chiunque può seguire il suo sviluppo:

* [rakudo.org](https://rakudo.org)
* [Rakudo su GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
