---
title: 'Solution: Una variabile dinamica'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il twigil `*` rende `$*user` dinamica. `whoami` non la riceve mai come parametro. Invece, trova il valore cercando verso l'esterno nello stack delle chiamate. Quindi la prima chiamata mostra il valore predefinito, `guest`.

1. Il blocco interno dichiara di nuovo `$*user` come `admin`, e questo dura finché il blocco è in esecuzione. La *stessa* `whoami` ora vede `admin`. Questo perché la ricerca dinamica segue chi c'è nello stack in quel momento. Sovrascrivere una variabile dinamica in uno scope dà più diritti a tutto ciò che viene chiamato da lì. E non devi cambiare per niente `whoami`.

{% include nav.html %}
