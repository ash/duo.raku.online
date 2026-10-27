---
title: 'Soluzione: Passate una variabile a un processo figlio'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `spurt` crea `notes.txt` con tre righe. Poi impostiamo `%*ENV<NOTES>` al suo nome. Questo mette il nome del file nell'ambiente, che ogni programma figlio riceve.

1. Il comando `shell` riceve quell'ambiente e sostituisce `$NOTES` con `notes.txt`. Poi manda il file dentro `wc -l`, che ne conta le righe. Grazie alla redirezione `< "$NOTES"`, l'output è solo il numero `3`. Lo catturiamo con `:out` e lo ripuliamo con trim.

1. Infine la pulizia avviene di nuovo in Raku con `unlink`, e non serve nessuna shell. Cancellare un file è una semplice operazione sul file system. Non c'è motivo di avviare un altro processo per questo.

{% include nav.html %}
