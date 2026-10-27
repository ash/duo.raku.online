---
title: 'Soluzione: Scrivere con un handle'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $fh = open 'out.txt', :w;
$fh.say($_) for 1..3;
$fh.close;

print slurp 'out.txt';
```

🦋 Trova il programma nel file [write-with-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/write-with-a-handle.raku).

## Output

```
1
2
3
```

## Commenti

1. `open` con il flag `:w` dà un handle per scrivere. L'handle resta aperto durante tutto il ciclo. Quindi ogni `$fh.say` aggiunge un'altra riga. Qui un handle è meglio di `spurt`. `spurt` apre di nuovo il file ogni volta.

1. `close` scrive tutti i dati sul disco. Quindi lo `slurp` dopo rilegge tutte e tre le righe.

{% include nav.html %}
