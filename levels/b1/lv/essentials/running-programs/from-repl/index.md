---
title: Palaišana no REPL
---

{% include menu.html %}

REPL nozīmē _Read–eval–print loop_ (lasīt-izpildīt-izdrukāt cilpa). Tas ir iebūvēts čaulas režīms. Jūs ievadāt instrukcijas, un ekrāns parāda katra soļa rezultātu. Tas ietver mainīgo stāvokli un jūsu programmas izvadi.

Lai sāktu Rakudo čaulu, vienkārši ievadiet:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

Izvade var atšķirties atkarībā no tā, kāda kompilatora versija jums ir. Šeit čaula iesaka instalēt dažus moduļus labākai lietotāja pieredzei. Tāpēc jūs redzat šo ziņojumu.

Beigās ir uzvednes rakstzīme, `>`. Šeit jūs varat ievadīt savu programmu vai tās daļas. Čaula to kompilē pa rindai, tiklīdz jūs nospiežat Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
