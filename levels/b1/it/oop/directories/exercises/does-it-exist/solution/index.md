---
title: 'Soluzione: Esiste?'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Trova il programma nel file [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Output

```
False
True
```

## Commenti

1. `.e` controlla se un percorso esiste. Il primo controllo avviene prima che creiamo il file, quindi restituisce `False`.

1. Poi `spurt` crea `test.txt`, e il secondo controllo sullo *stesso* percorso restituisce `True`. Chiedi di nuovo all'oggetto percorso, e ottieni lo stato attuale del file system.

{% include nav.html %}
