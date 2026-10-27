---
title: 'Soluzione: Costruite un registro'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il primo `spurt` crea un file nuovo che contiene la riga `start`.

1. Ogni `spurt` dentro il ciclo usa `:append`. Quindi aggiunge la sua riga dopo il contenuto che c'è già, e non sostituisce il file. È proprio così che cresce un file di log. Ogni giro del ciclo aggiunge un'altra riga alla fine. Lo stesso fa ogni esecuzione di un programma.

1. Senza `:append`, ogni giro scriverebbe sopra il file. Resterebbe solo l'ultima riga.

{% include nav.html %}
