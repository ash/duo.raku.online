---
title: 'Risinājums: Saistīt skalāru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Saistīšana ar `:=` neveido kopiju. Tā padara `$bound` par vēl vienu nosaukumu tam pašam konteineram, kas ir `$source`. Tāpēc `$source` izmaiņa ir redzama caur `$bound`, kas izdrukā `9`.

1. Parastā piešķiršana ar `=` kopē vērtību atsevišķā konteinerā. Tāpēc vēlākā izmaiņa neietekmē `$copy`, un tas joprojām izdrukā `1`.

1. Visa jēga ir redzēt abus blakus. `:=` kopīgo konteineru, bet `=` izveido vērtības kopiju.

{% include nav.html %}
