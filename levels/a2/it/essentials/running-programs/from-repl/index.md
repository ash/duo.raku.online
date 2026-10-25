---
title: Esecuzione da REPL
---

{% include menu.html %}

REPL sta per _Read–eval–print loop_. È una modalità shell integrata. Scrivi delle istruzioni. Dopo ognuna, vedi il risultato sullo schermo. Vedi lo stato delle variabili. Vedi anche l'output del tuo programma.

Scrivi questo per avviare la shell di Rakudo:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

L'output dipende dalla tua versione del compilatore. Nell'output qui sopra, la shell consiglia di installare alcuni moduli. Con questi moduli, la shell è più comoda da usare. Per questo vedi questo messaggio.

Alla fine, vedi il carattere di prompt `>`. Qui scrivi il tuo programma o alcune sue parti. La shell compila il tuo codice riga per riga. Lo fa quando premi Invio.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
