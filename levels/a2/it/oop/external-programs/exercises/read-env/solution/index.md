---
title: 'Soluzione: Passate una variabile a un processo figlio'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Trova il programma nel file [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Output

```
3
```

## Commenti

1. `spurt` crea `notes.txt` con tre righe. Poi impostiamo `%*ENV<NOTES>` al nome del file. Così il nome del file ora è nell'ambiente. Ogni programma figlio riceve questo ambiente.

1. Il comando `shell` riceve questo ambiente. Sostituisce `$NOTES` con `notes.txt`. Poi manda il file dentro `wc -l`. `wc -l` conta le righe del file. La redirezione `< "$NOTES"` è importante. Grazie a questa, l'output è solo il numero `3`. Catturiamo questo numero con `:out` e lo ripuliamo con trim.

1. Alla fine facciamo pulizia in Raku con `unlink`. Per questo non ci serve una shell. Cancellare un file è una semplice operazione sul file system. Quindi non c'è motivo di avviare un altro processo per farlo. Un processo è un programma in esecuzione.

{% include nav.html %}
