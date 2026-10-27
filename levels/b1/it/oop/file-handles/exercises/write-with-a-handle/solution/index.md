---
title: 'Soluzione: Scrivere con un handle'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `open` con il flag `:w` dà un handle per la scrittura. L'handle resta aperto durante tutto il ciclo, quindi ogni `$fh.say` aggiunge un'altra riga. Qui un handle è meglio di `spurt`, che aprirebbe di nuovo il file ogni volta.

1. `close` salva i dati su disco. Quindi lo `slurp` successivo rilegge tutte e tre le righe.

{% include nav.html %}
