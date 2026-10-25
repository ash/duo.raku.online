---
title: Uitvoeren vanaf REPL
---

{% include menu.html %}

REPL is een afkorting van _Read–eval–print loop_. Het is een ingebouwde shell-modus. Je typt instructies. Na elke instructie zie je het resultaat op het scherm. Je ziet de toestand van de variabelen. Je ziet ook de uitvoer van je programma.

Typ dit om de Rakudo-shell te starten:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

De uitvoer hangt af van je versie van de compiler. In de uitvoer hierboven raadt de shell aan om een paar modules te installeren. Met die modules werkt de shell prettiger. Daarom zie je dit bericht.

Aan het einde zie je het promptteken `>`. Hier typ je je programma of delen ervan. De shell compileert je code regel voor regel. Dat doet hij als je op Enter drukt.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
