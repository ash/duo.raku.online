---
title: Lanĉado de REPL
---

{% include menu.html %}

REPL signifas _Read–eval–print loop_. Ĝi estas enkonstruita ŝelreĝimo. Vi tajpas instrukciojn, kaj la ekrano montras la rezulton de ĉiu paŝo. Tio inkluzivas la staton de la variabloj kaj la eligon de via programo.

Por starti Rakudo-ŝelon, simple tajpu:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

La eligo povas dependi de la versio de la kompililo, kiun vi havas. Ĉi tie, la ŝelo rekomendas instali kelkajn modulojn por pli bona uzanta sperto. Tial vi vidas ĉi tiun mesaĝon.

Fine, estas prompta signo, `>`. Ĉi tie vi povas tajpi vian programon aŭ partojn de ĝi. La ŝelo kompilas ĝin linion post linio, tuj kiam vi premas Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
