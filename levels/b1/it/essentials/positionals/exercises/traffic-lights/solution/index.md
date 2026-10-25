---
title: 'Solution: Semafori'
---

{% include menu.html %}

L'idea della soluzione è ‘ciclare l'indicizzazione’ di un array. L'array contiene i quattro stati del semaforo:

```raku
my @lights = <yellow red yellow green>;
```

All'inizio, il numero di secondi dalla partenza si usa direttamente come indice. Quando è più grande di 3, torni all'inizio dell'array. Lo fa l'operatore modulo `%`. La lunghezza dell'array è `@lights.elems`. Ma con `%` non devi chiamare il metodo `elems`. L'array è un operando di `%`, quindi il suo nome viene convertito in un numero. Questa conversione è fatta apposta per dare il numero di elementi.

## Codice

Ecco la soluzione:

```raku
my @lights = <yellow red yellow green>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Trova il programma nel file [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Output

Esegui il programma. Prova anche altri valori nel programma.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
