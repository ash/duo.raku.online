---
title: 'Solution: Semafori'
---

{% include menu.html %}

Ecco l'idea della soluzione. Un array contiene i quattro stati del semaforo. Noi ‘cicliamo l'indicizzazione’ di questo array:

```raku
my @lights = <yellow red yellow green>;
```

All'inizio, conta i secondi dalla partenza. Usa questo numero direttamente come indice nell'array. Dopo, il numero diventa più grande di 3. Allora torni all'inizio dell'array. Lo fa l'operatore modulo `%`. La lunghezza dell'array è `@lights.elems`. Ma qui non devi chiamare il metodo `elems`. L'array è un operando di `%`. Così Raku converte il nome dell'array in un numero. Questa conversione dà il numero di elementi.

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

Esegui il programma. Poi prova anche altri valori nel programma.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
