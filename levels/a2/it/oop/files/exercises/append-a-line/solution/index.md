---
title: 'Soluzione: Costruite un registro'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Trova il programma nel file [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Output

```
start
entry 1
entry 2
entry 3
```

## Commenti

1. Il primo `spurt` crea un file nuovo con la riga `start`.

1. Ogni `spurt` nel ciclo ha `:append`. Quindi aggiunge la sua riga dopo il vecchio contenuto. Non sostituisce il file. Un file di log cresce proprio così. Ogni giro del ciclo aggiunge un'altra riga alla fine. Ogni esecuzione di un programma può aggiungere una riga nello stesso modo.

1. Senza `:append`, ogni giro scrive sopra il file. Allora resta solo l'ultima riga.

{% include nav.html %}
