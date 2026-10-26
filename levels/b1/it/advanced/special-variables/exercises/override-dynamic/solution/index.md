---
title: 'Solution: Sovrascrivere la dinamica'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `task` chiama `log-it` ma non nomina mai `$*prefix`. Eppure il valore arriva a `log-it`. La ricerca dinamica va verso l'esterno nello stack delle chiamate, oltre `task`. Arriva a chi si trova nello stack in quel momento.

1. I due blocchi impostano valori diversi. Quindi la *stessa* chiamata `task()` dà un prefisso diverso ogni volta. È questo che rende utili le variabili dinamiche. Il contesto arriva al codice annidato in profondità. Non devi passarlo come argomento attraverso ogni routine intermedia.

{% include nav.html %}
