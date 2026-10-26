---
title: 'Solution: Una variabile dinamica'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 Puoi trovare il codice sorgente nel file [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Output

```
running as guest
running as admin
```

## Commenti

1. Il twigil `*` rende `$*user` dinamica. `whoami` non la riceve mai come parametro. Trova il valore nello stack delle chiamate. Quindi la prima chiamata mostra il valore predefinito, `guest`.

1. Il blocco interno dichiara di nuovo `$*user` come `admin`. Questo dura finché il blocco gira. La *stessa* `whoami` ora vede `admin`. La ricerca dinamica controlla chi c'è adesso nello stack delle chiamate. Sovrascrivi una variabile dinamica in uno scope. Allora tutto il codice che chiami da lì riceve più diritti. E non cambi per niente `whoami`.

{% include nav.html %}
