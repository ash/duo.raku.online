---
title: 'Oplossing: Een eigen trait'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Je kunt de broncode vinden in het bestand [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Uitvoer

```
admin
```

## Opmerkingen

1. De trait is een `multi sub trait_mod:<is>` met de benoemde parameter `:$role!`. Door deze parameter draait hij bij `is role(...)`. Sommige traits zijn alleen aanwezig of afwezig, maar deze *ontvangt* het argument. Hier bindt `is role('admin')` de waarde `'admin'` aan `$role`.

1. De body slaat deze waarde op onder de naam van de subroutine. Als je later `%role<login>` leest, krijg je `admin`. Traits draaien tijdens het compileren, dus de waarde staat er al als het programma draait.

{% include nav.html %}
