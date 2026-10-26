---
title: 'Risinājums: No kilometriem uz jūdzēm'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Atrodiet programmu failā [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Izvade

```
6.21
```

## Komentāri

1. Pārveidošanai nevajag neviena objekta. Tāpēc tā ir klases metode. Programma to izsauc tieši uz `Converter`.

1. Klases metodei tomēr var būt parametri. Šeit tā saņem kilometru skaitu. Tā atgriež jūdzes.

{% include nav.html %}
