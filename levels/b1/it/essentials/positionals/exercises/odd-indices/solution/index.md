---
title: 'Solution: Indici dispari'
---

{% include menu.html %}

Puoi risolvere questo compito con il costrutto `loop`. In questo caso aggiungi 2 alla variabile del ciclo a ogni iterazione. Ma puoi anche usare un ciclo `for`. Scorre i numeri da 1 alla metà della lunghezza dell'array. Poi moltiplichi ogni numero per due.

## Codice

Ecco la soluzione:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Trova il programma nel file [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Output

Prima, esegui il programma con gli elementi originali dei dati.

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

Controlla che il nuovo elemento con indice dispari compaia nell'output:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Commenti

Torneremo su questo compito nella prossima parte del corso. Allora lo risolveremo in un modo completamente diverso.

{% include nav.html %}
