---
title: 'Risinājums: Pielāgota īpašība'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Programmas pirmkodu var atrast failā [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Izvade

```
admin
```

## Komentāri

1. Īpašība ir `multi sub trait_mod:<is>`. Tai ir nosaukts parametrs, `:$role!`. Šī parametra dēļ apakšprogramma darbojas ar `is role(...)`. Dažas īpašības ir tikai klāt vai nav klāt. Šī īpašība ir citāda. Tā *saņem* argumentu: `is role('admin')` dod `'admin'` parametram `$role`.

1. Ķermenis saglabā šo vērtību ar apakšprogrammas nosaukumu. Vēlāk `%role<login>` dod `admin`. Īpašības izpildās kompilēšanas laikā. Tāpēc vērtība jau ir hešā, kad programma darbojas.

{% include nav.html %}
