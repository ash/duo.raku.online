---
title: Uitvoeren vanaf REPL
---

{% include menu.html %}

REPL staat voor _Read–eval–print loop_. Het is een ingebouwde shell-modus. Je typt instructies, en het scherm toont het resultaat van elke stap. Daar horen ook de toestand van de variabelen en de uitvoer van je programma bij.

Om de Rakudo-shell te starten, typ je eenvoudig:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

De uitvoer kan afhangen van de versie van de compiler die je hebt. Hier raadt de shell aan om een paar modules te installeren voor een betere gebruikerservaring. Daarom zie je dit bericht.

Aan het einde staat een promptteken, `>`. Hier kun je je programma of delen ervan typen. De shell compileert het regel voor regel zodra je op Enter drukt.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
