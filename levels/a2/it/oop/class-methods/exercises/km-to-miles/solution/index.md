---
title: 'Soluzione: Da chilometri a miglia'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Trova il programma nel file [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Output

```
6.21
```

## Commenti

1. La conversione non ha bisogno di nessun oggetto. Quindi è un metodo di classe. Il programma lo chiama direttamente su `Converter`.

1. Un metodo di classe può comunque avere parametri. Qui riceve il numero di chilometri. Restituisce le miglia.

{% include nav.html %}
