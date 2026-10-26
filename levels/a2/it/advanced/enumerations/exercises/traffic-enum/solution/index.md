---
title: 'Solution: Semafori'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Puoi trovare il codice sorgente nel file [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Output

```
red is 0
amber is 1
green is 2
```

## Commenti

1. `my Light $current` è una variabile normale. Puoi cambiare il suo valore. Ma può contenere solo un `Light`. Assegna la costante successiva, e il semaforo va avanti. Ogni volta, il numero cambia con il nome: `0`, `1`, `2`.

1. Sembra che `$current++` passi da solo al colore dopo. Ma fallisce con un errore di controllo del tipo. `++` vede la costante solo come il suo numero. Restituisce un `Int`: `red` diventa `1`. Ma un `Int` non è un `Light`. Quindi, per far avanzare il semaforo, assegna la costante successiva, come sopra.

1. Raku controlla il tipo a ogni assegnazione, non solo alla prima. `$current` accetta `red`, `amber` o `green`. Non accetta altri valori, come un numero o una stringa. Questi valori non sono un `Light`. Un'assegnazione così dà un errore di controllo del tipo.

{% include nav.html %}
