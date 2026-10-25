---
title: Ausführen von REPL
---

{% include menu.html %}

REPL steht für _Read–eval–print loop_. Das ist ein eingebauter Shell-Modus. Sie geben Anweisungen ein. Nach jeder Anweisung sehen Sie das Ergebnis auf dem Bildschirm. Sie sehen den Zustand der Variablen. Sie sehen auch die Ausgabe Ihres Programms.

Geben Sie das ein, um die Rakudo-Shell zu starten:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

Die Ausgabe hängt von Ihrer Version des Compilers ab. In der Ausgabe oben schlägt die Shell vor, einige Module zu installieren. Mit ihnen ist die Shell angenehmer. Darum sehen Sie diese Nachricht.

Am Ende sehen Sie das Prompt-Zeichen `>`. Hier geben Sie Ihr Programm oder Teile davon ein. Die Shell kompiliert Ihren Code Zeile für Zeile. Das macht sie, wenn Sie die Eingabetaste drücken.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
