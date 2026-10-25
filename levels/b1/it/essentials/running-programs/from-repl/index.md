---
title: Esecuzione da REPL
---

{% include menu.html %}

REPL sta per _Read–eval–print loop_. È una modalità shell integrata. Tu scrivi le istruzioni e lo schermo mostra il risultato di ogni passo. Questo include lo stato delle variabili e l'output del tuo programma.

Per avviare la shell di Rakudo, basta digitare:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

L'output può dipendere dalla versione del compilatore che hai. Qui la shell consiglia di installare alcuni moduli per un'esperienza d'uso migliore. Per questo vedi questo messaggio.

Alla fine, c'è un carattere di prompt, `>`. Qui puoi scrivere il tuo programma o alcune sue parti. La shell lo compila riga per riga appena premi Invio.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
