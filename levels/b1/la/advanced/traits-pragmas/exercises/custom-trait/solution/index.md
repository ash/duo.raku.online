---
title: 'Solutio: Proprietas personalis'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Trait est `multi sub trait_mod:<is>` cum parametro nominato `:$role!`. Hoc parametrum efficit ut pro `is role(...)` currat. Quaedam traits tantum praesentia vel absentia sunt, sed hoc argumentum *accipit*. Hic `is role('admin')` ligat `'admin'` parametro `$role`.

1. Corpus hunc valorem sub nomine subroutinae reponit. Cum postea `%role<login>` legis, `admin` accipis. Traits tempore compilationis currunt, itaque insertio iam adest cum programma currit.

{% include nav.html %}
