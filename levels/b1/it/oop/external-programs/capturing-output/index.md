---
title: "Catturare l'output"
translations_gpt:
---

{% include menu.html %}

A volte il tuo programma deve leggere quello che stampa un programma esterno, invece di mostrarlo. Per farlo, passa `:out` quando avvii il programma. Il `Proc` restituito ha allora un handle `.out` da cui leggere:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` manda l'output standard del programma dentro il `Proc`. L'handle `.out` funziona come gli handle di file della sezione precedente. `.slurp` ne legge tutto il contenuto in una volta. L'avverbio `:close` è una scorciatoia utile: chiude l'handle al posto tuo dopo la lettura. Con un handle di file facevi da solo la stessa pulizia, con `.close`. In questo modo non resta niente di aperto. Infine `.chomp` toglie il ritorno a capo che `echo` aggiunge alla fine.

Lo stesso funziona con `shell`. Questo è comodo quando vuoi catturare il risultato di una pipeline:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Puoi catturare anche il flusso degli errori, con `:err` e l'handle `.err` che gli corrisponde. Se passi sia `:out` sia `:err`, i due flussi restano separati. Ognuno ha il suo handle, così puoi leggerli separatamente:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Qui il comando della shell stampa una riga sull'output standard e una sull'errore standard. La parte `>&2` redirige lì la seconda riga. Abbiamo chiesto entrambi i flussi, quindi `.out` e `.err` li tengono separati. Il normale output del programma non si mescola mai con i suoi messaggi di errore.

Catturare l'output ti permette di usare un programma esterno come un mattoncino. Lo esegui, leggi il suo risultato e prosegui con quei dati nel tuo programma.

{% include nav.html %}
