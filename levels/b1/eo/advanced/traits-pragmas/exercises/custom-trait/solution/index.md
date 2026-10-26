---
title: 'Solvo: Propra trajto'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Vi povas trovi la fontkodon en la dosiero [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Eligo

```
admin
```

## Komentoj

1. La trajto estas `multi sub trait_mod:<is>` kun la nomita parametro `:$role!`. Ĉi tiu parametro igas ĝin ruliĝi por `is role(...)`. Kelkaj trajtoj nur ĉeestas aŭ forestas, sed ĉi tiu *ricevas* la argumenton. Ĉi tie, `is role('admin')` ligas `'admin'` al `$role`.

1. La korpo konservas ĉi tiun valoron sub la nomo de la subrutino. Kiam vi poste legas `%role<login>`, vi ricevas `admin`. Trajtoj ruliĝas dum kompilado, do la ero jam estas tie, kiam la programo ruliĝas.

{% include nav.html %}
