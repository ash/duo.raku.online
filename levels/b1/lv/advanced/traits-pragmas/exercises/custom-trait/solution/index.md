---
title: 'Risinājums: Pielāgota īpašība'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Īpašība ir `multi sub trait_mod:<is>` ar nosaukto parametru `:$role!`. Šis parametrs liek tai darboties ar `is role(...)`. Dažas īpašības ir tikai klāt vai nav klāt, bet šī *saņem* argumentu. Šeit `is role('admin')` piesaista `'admin'` parametram `$role`.

1. Ķermenis saglabā šo vērtību ar apakšprogrammas nosaukumu kā atslēgu. Kad vēlāk nolasāt `%role<login>`, jūs iegūstat `admin`. Īpašības izpildās kompilēšanas laikā, tāpēc ieraksts jau ir tur, kad programma darbojas.

{% include nav.html %}
