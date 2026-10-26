---
title: 'Solution: Sovrascrivere la dinamica'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub log-it($msg) {
    say "$*prefix: $msg";
}

sub task {
    log-it('working');
}

{
    my $*prefix = 'INFO';
    task();
}

{
    my $*prefix = 'DEBUG';
    task();
}
```

🦋 Puoi trovare il codice sorgente nel file [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Output

```
INFO: working
DEBUG: working
```

## Commenti

1. `task` chiama `log-it`. Ma non usa mai `$*prefix`. Eppure il valore arriva a `log-it`. La ricerca dinamica torna indietro nello stack delle chiamate. Va oltre `task`. Arriva al codice che è nello stack in quel momento.

1. I due blocchi impostano valori diversi. Quindi la *stessa* chiamata `task()` dà un prefisso diverso ogni volta. Per questo le variabili dinamiche sono utili. Le informazioni arrivano al codice molto in basso nella catena di chiamate. Nessuna routine in mezzo deve passarle come argomento.

{% include nav.html %}
