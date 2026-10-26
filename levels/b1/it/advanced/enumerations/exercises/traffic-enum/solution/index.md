---
title: 'Solution: Semafori'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `my Light $current` è una variabile normale, e puoi cambiarla. L'unico limite è che deve contenere un `Light`. Quando assegni la costante successiva, il semaforo va avanti. Ogni volta il numero segue il nome: `0`, `1`, `2`.

1. Sembra che `$current++` debba passare da solo al colore successivo. Ma fallisce con un errore di controllo del tipo. `++` usa la costante come un semplice numero e restituisce un `Int` (`red` diventa `1`). Ma un `Int` non va bene per il tipo `Light`. Quindi fai avanzare il semaforo assegnando la costante successiva, come sopra.

1. Il controllo del tipo vale per ogni assegnazione, non solo per la prima. `$current` accetta `red`, `amber` o `green`. Qualcosa che non è un `Light` dà un errore di controllo del tipo. Questo vale, per esempio, per un semplice numero o per una stringa.

{% include nav.html %}
