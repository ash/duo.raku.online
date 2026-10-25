---
title: Il compilatore Rakudo
translations_gpt:
---

{% include menu.html %}

**Rakudo** è l'implementazione di riferimento di Raku: il compilatore principale e standard. Questo corso lo usa. Oggi è il modo più completo per eseguire Raku. È anche ben testato nel lavoro reale. Quindi, quando si dice «il compilatore Raku», di solito si intende Rakudo.

Rakudo stesso è scritto soprattutto in Raku. Un linguaggio più piccolo, NQP («Not Quite Perl»), aiuta a costruirlo. Il tuo programma viene compilato in bytecode e gira su una macchina virtuale chiamata **MoarVM**. Ricevi MoarVM automaticamente quando installi Rakudo. Rakudo cerca di coprire tutto il linguaggio. Quindi è la scelta più sicura se ogni parte di Raku deve funzionare.

Rakudo supporta Raku 6.d. Nuove release escono spesso, quindi correzioni e nuove funzionalità ti arrivano in fretta.

## La macchina virtuale

Normalmente, Rakudo gira su MoarVM, una macchina virtuale fatta apposta per Raku. Il progetto non lega Rakudo a una sola macchina. Può anche essere costruito sopra altre macchine virtuali. Ma MoarVM è la scelta standard e ben supportata. Questo corso presume che tu la usi. Questa è la differenza principale rispetto a [Raku++](/it/essentials/the-rakupp-compiler). Raku++ è scritto in C++ e non ha bisogno di una sua macchina virtuale.

## Codice sorgente e collegamenti

Rakudo è open source, e chiunque può seguire il suo sviluppo:

* [rakudo.org](https://rakudo.org)
* [Rakudo su GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
