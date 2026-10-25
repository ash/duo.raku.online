---
title: Ausführen von REPL
---

{% include menu.html %}

REPL steht für _Read–eval–print loop_. Das ist ein eingebauter Shell-Modus. Sie geben Anweisungen ein, und der Bildschirm zeigt das Ergebnis jedes Schritts. Dazu gehören der Zustand der Variablen und die Ausgabe Ihres Programms.

Um die Rakudo-Shell zu starten, geben Sie einfach ein:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

Die Ausgabe kann von der Version des Compilers abhängen, die Sie haben. Hier empfiehlt die Shell, einige Module für eine bessere Benutzererfahrung zu installieren. Deshalb sehen Sie diese Nachricht.

Am Ende steht ein Prompt-Zeichen, `>`. Hier können Sie Ihr Programm oder Teile davon eingeben. Die Shell kompiliert es Zeile für Zeile, sobald Sie die Eingabetaste drücken.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
