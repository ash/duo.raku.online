---
title: Esecuzione dalla riga di comando
---

{% include menu.html %}

Salva il programma in un file di testo, per esempio, `hello.raku`. Poi dai il percorso del file allo strumento da riga di comando `raku`. Qui il carattere del dollaro è il prompt della shell:

```console
$ raku hello.raku
```

Se il programma non ha errori, parte subito. Se stampa qualcosa, vedi il risultato nel terminale:

```console
$ raku hello.raku 
Hello, World!
```

Sui sistemi basati su Unix, puoi aggiungere uno shebang. È una prima riga speciale. Puoi anche rendere il file eseguibile:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Ecco i prossimi passaggi:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
