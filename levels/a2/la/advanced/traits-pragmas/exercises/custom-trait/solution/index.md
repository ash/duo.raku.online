---
title: 'Solutio: Proprietas personalis'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Inveni codicem fontem in archivo [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Exitus

```
admin
```

## Commentarii

1. Trait est `multi sub trait_mod:<is>`. Parametrum nominatum habet, `:$role!`. Propter hoc parametrum sub pro `is role(...)` currit. Quaedam traits tantum adsunt vel absunt. Hoc trait aliud est. Argumentum *accipit*: `is role('admin')` dat `'admin'` parametro `$role`.

1. Corpus hunc valorem sub nomine subroutinae servat. Postea `%role<login>` dat `admin`. Traits tempore compilationis currunt. Ergo valor iam in hash est cum programma currit.

{% include nav.html %}
