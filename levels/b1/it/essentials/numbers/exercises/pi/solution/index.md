---
title: 'Solution: Il valore di π'
---

{% include menu.html %}

Un programma che stampa il valore di π è abbastanza semplice.

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

Raku ci dà una costante integrata chiamata `π`, quindi il programma è molto semplice. Comunque, ecco altri modi per fare lo stesso:

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
