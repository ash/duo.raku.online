---
title: 'Soluzione: Contate i caratteri'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Trova il programma nel file [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Output

```
4
```

## Commenti

1. `spurt` scrive la stringa `Raku` nel file.

1. `slurp` legge il file come stringa. `.chars` conta i suoi caratteri. Sono quattro.

1. Guarda il file. Vedi solo questi quattro caratteri. Alla fine non c'è nessun carattere di ritorno a capo.

{% include nav.html %}
