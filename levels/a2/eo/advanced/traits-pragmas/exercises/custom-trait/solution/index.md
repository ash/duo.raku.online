---
title: 'Solvo: Propra trajto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La trajto estas `multi sub trait_mod:<is>`. Ĝi havas nomitan parametron, `:$role!`. Pro ĉi tiu parametro, la subrutino ruliĝas por `is role(...)`. Kelkaj trajtoj nur ĉeestas aŭ ne ĉeestas. Ĉi tiu trajto estas alia. Ĝi *ricevas* la argumenton: `is role('admin')` donas `'admin'` al `$role`.

1. La korpo konservas ĉi tiun valoron sub la nomo de la subrutino. Poste, `%role<login>` donas `admin`. Trajtoj ruliĝas dum kompilado. Do la valoro jam estas en la hako, kiam la programo ruliĝas.

{% include nav.html %}
