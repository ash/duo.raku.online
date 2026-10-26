---
title: 'Risinājums: Saistīt skalāru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Šīs programmas pirmkodu var atrast failā [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Izvade

```
9
1
```

## Komentāri

1. Saistīšana ar `:=` neveido kopiju. Tā padara `$bound` par otru nosaukumu `$source` konteineram. Tāpēc `$bound` redz `$source` izmaiņu. Tas izdrukā `9`.

1. Parastā piešķiršana ar `=` kopē vērtību citā konteinerā. Tāpēc vēlākā izmaiņa neskar `$copy`. Tas joprojām izdrukā `1`.

1. Tāda ir uzdevuma jēga. Jūs redzat abus veidus blakus. `:=` kopīgo konteineru. `=` kopē vērtību.

{% include nav.html %}
