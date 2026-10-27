---
title: "Catturare l'output"
translations_gpt:
---

{% include menu.html %}

Di solito un programma esterno stampa sullo schermo. Ma forse vuoi leggere il suo output nel tuo programma. Allora aggiungi `:out` quando avvii il programma. Ricevi indietro un oggetto `Proc`. Ha un handle `.out`. Da questo handle puoi leggere l'output:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` manda l'output standard del programma dentro il `Proc`. L'output standard è il flusso per il normale output di un programma. L'handle `.out` funziona come gli handle di file della sezione precedente. `.slurp` legge tutto il testo in una volta. L'avverbio `:close` è una scorciatoia utile. Chiude l'handle per te dopo la lettura. Prima lo facevi da solo con `.close` su un handle di file. Così non resta niente di aperto. Infine `.chomp` toglie il ritorno a capo alla fine. `echo` aggiunge questo ritorno a capo.

Lo stesso funziona con `shell`. Questo è utile con una pipeline. In una pipeline un comando manda il suo output al comando successivo. Con `shell` puoi catturare il risultato finale:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Puoi catturare anche il flusso degli errori. Questo flusso si chiama errore standard. Un programma stampa lì i suoi messaggi di errore. Per questo flusso usa `:err` e l'handle `.err`. Puoi passare sia `:out` sia `:err`. Allora i due flussi restano separati. Ognuno ha il suo handle. Così puoi leggere ognuno per conto suo:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Qui il comando della shell stampa due righe. Una riga va sull'output standard. L'altra riga va sull'errore standard. La parte `>&2` la manda lì. Abbiamo chiesto tutti e due i flussi. Quindi `.out` e `.err` li tengono separati. Il normale output del programma non si mescola mai con i suoi messaggi di errore.

Catturare l'output è molto utile. Un programma esterno diventa una parte del tuo programma. Lo esegui e leggi il suo risultato. Poi il tuo programma va avanti e usa questi dati.

{% include nav.html %}
