---
title: 'Solution: Indici dispari'
---

{% include menu.html %}

Puoi risolvere questo compito con `loop`. Aggiungi 2 alla variabile del ciclo ogni volta. Ma puoi anche usare un ciclo `for`. Va da 1 alla metà della lunghezza dell'array. Poi moltiplichi ogni numero per due.

## Codice

Ecco la soluzione:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Trova il programma nel file [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Output

Prima esegui il programma con i dati originali.

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
```

Poi, aggiungi un altro elemento ai dati:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21, 22;
```

Il nuovo elemento ha un indice dispari. Controlla che sia nell'output:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Commenti

Questo compito torna nella prossima parte del corso. Lì lo risolviamo in un modo molto diverso.

{% include nav.html %}
