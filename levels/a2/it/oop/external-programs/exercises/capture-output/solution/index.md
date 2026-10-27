---
title: "Soluzione: Catturate l'output"
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Trova il programma nel file [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Output

```
3
```

## Commenti

1. `:out` manda l'output dentro il `Proc`. L'output non va sullo schermo. `.out.slurp(:close)` lo rilegge tutto. `.trim` toglie il ritorno a capo alla fine. `echo` aggiunge questo ritorno a capo.

1. Ora l'output è una normale stringa nel nostro programma. La trattiamo come qualsiasi altro dato. `.words.elems` divide la stringa dove ci sono spazi. Poi conta i pezzi. Il risultato è `3`. Per questo catturiamo l'output. Il programma esterno diventa una parte del nostro lavoro. Usiamo il suo risultato nei passi successivi.

{% include nav.html %}
