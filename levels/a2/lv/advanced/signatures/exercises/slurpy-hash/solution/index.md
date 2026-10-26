---
title: 'Risinājums: Slurpy nosauktie argumenti'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Vispirms fiksētais pozicionālais parametrs `$name` saņem savu vērtību. Tad uzsūcošais `*%opts` savāc visus pārējos nosauktos argumentus. Tas tos ieliek hešā.

1. `%opts.sort` sakārto pārus pēc atslēgas. Tāpēc izvade vienmēr ir vienāda: `colour` ir pirms `size`. `.map` no katra pāra izveido virkni `key=value`. Šim nolūkam tas izmanto `.key` un `.value`. Tad `.join(', ')` savieno virknes kopā.

1. Pēdējā virknē ir `$name` un `$details` vērtības. `$details` mēs uzbūvējām iepriekš. Rezultāts ir `Anna: colour=red, size=5`.

{% include nav.html %}
