---
title: 'Solution: Un trait personalizzato'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Puoi trovare il codice sorgente nel file [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Output

```
admin
```

## Commenti

1. Il trait è una `multi sub trait_mod:<is>` con il parametro nominato `:$role!`. Questo parametro la fa eseguire per `is role(...)`. Alcuni trait sono solo presenti o assenti, ma questo *riceve* l'argomento. Qui `is role('admin')` lega `'admin'` a `$role`.

1. Il corpo memorizza questo valore sotto il nome della subroutine. Quando poi leggi `%role<login>`, ottieni `admin`. I trait vengono eseguiti in fase di compilazione, quindi la voce c'è già durante l'esecuzione.

{% include nav.html %}
