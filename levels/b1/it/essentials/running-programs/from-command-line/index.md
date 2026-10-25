---
title: Esecuzione dalla riga di comando
---

{% include menu.html %}

Salva il testo del programma in un file di testo, per esempio, `hello.raku`. Poi passa il suo percorso allo strumento da riga di comando `raku`. Il carattere del dollaro indica il prompt della shell:

```console
$ raku hello.raku
```

Se il programma non ha errori, viene eseguito subito. Se c'è un output, lo vedrai nel terminale:

```console
$ raku hello.raku 
Hello, World!
```

Sui sistemi basati su Unix, puoi aggiungere uno shebang e rendere il file eseguibile:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

I passaggi successivi sono i seguenti:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
