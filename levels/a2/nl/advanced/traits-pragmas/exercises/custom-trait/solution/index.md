---
title: 'Oplossing: Een eigen trait'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. De trait is een `multi sub trait_mod:<is>`. Hij heeft een benoemde parameter, `:$role!`. Door deze parameter draait de sub bij `is role(...)`. Sommige traits zijn er alleen, of zijn er niet. Deze trait is anders. Hij *krijgt* het argument: `is role('admin')` geeft `'admin'` aan `$role`.

1. De body bewaart deze waarde onder de naam van de subroutine. Later geeft `%role<login>` de waarde `admin`. Traits draaien tijdens het compileren. De waarde staat dus al in de hash als het programma draait.

{% include nav.html %}
