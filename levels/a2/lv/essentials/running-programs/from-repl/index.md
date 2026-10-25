---
title: Palaišana no REPL
---

{% include menu.html %}

REPL ir saīsinājums no _Read–eval–print loop_ (lasīt-izpildīt-izdrukāt cilpa). Tas ir iebūvēts čaulas režīms. Jūs ievadāt instrukcijas. Pēc katras jūs redzat rezultātu uz ekrāna. Jūs redzat mainīgo stāvokli. Jūs redzat arī savas programmas izvadi.

Ievadiet šo, lai sāktu Rakudo čaulu:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

Izvade ir atkarīga no jūsu kompilatora versijas. Augstāk redzamajā izvadē čaula iesaka instalēt dažus moduļus. Ar tiem čaulu ir patīkamāk lietot. Tāpēc jūs redzat šo ziņojumu.

Beigās jūs redzat uzvednes rakstzīmi `>`. Šeit jūs ievadāt savu programmu vai tās daļas. Čaula kompilē jūsu kodu pa rindai. Tā to dara, kad jūs nospiežat Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
