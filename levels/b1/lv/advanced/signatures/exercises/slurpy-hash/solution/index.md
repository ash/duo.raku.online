---
title: 'Risinājums: Slurpy nosauktie argumenti'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 Pirmkodu var atrast faila [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Izvade

```
Anna: colour=red, size=5
```

## Komentari

1. Fiksētais pozicionālais parametrs `$name` saņem vērtību pirmais. Tad uzsūcošais `*%opts` savāc visus atlikušos nosauktos argumentus hešā.

1. `%opts.sort` sakārto pārus pēc atslēgas, tāpēc izvade vienmēr ir vienāda: `colour` ir pirms `size`. `.map` ar `.key` un `.value` pārvērš katru pāri par virkni `key=value`. Tad `.join(', ')` savieno virknes kopā.

1. Galīgā virkne ietver `$name` un gatavā `$details` vērtības. Tas dod `Anna: colour=red, size=5`.

{% include nav.html %}
