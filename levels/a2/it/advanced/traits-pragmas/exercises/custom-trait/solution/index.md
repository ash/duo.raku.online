---
title: 'Solution: Un trait personalizzato'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Il trait è una `multi sub trait_mod:<is>`. Ha un parametro nominato, `:$role!`. Grazie a questo parametro, la sub parte per `is role(...)`. Alcuni trait possono solo esserci o non esserci. Questo trait è diverso. *Riceve* l'argomento: `is role('admin')` dà `'admin'` a `$role`.

1. Il corpo salva questo valore sotto il nome della subroutine. Dopo, `%role<login>` dà `admin`. I trait lavorano durante la compilazione. Così il valore è già nell'hash durante l'esecuzione.

{% include nav.html %}
