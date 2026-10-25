---
title: 'Solution: Il valore di π'
---

{% include menu.html %}

È facile stampare il valore di π.

## Codice

```raku
say π;
```

🦋 Puoi trovare il codice completo nel file [pi.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/pi.raku).

## Output

Esegui il programma e vedi cosa stampa:

```console
$ raku exercises/numbers/pi.raku
3.141592653589793
```

## Commenti

Raku ha una costante integrata `π`. Quindi il programma è molto semplice. Ma ci sono altri modi per fare la stessa cosa:

```raku
    π.say;
```

Oppure:

```raku
    pi.say;
```

Oppure:

```raku
    say pi;
```

{% include nav.html %}
