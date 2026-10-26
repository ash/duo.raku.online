---
title: 'Risinājums: Ligzdots nosaukums'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Šīs programmas pirmkodu var atrast failā [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Izvade

```
10
20
```

## Komentāri

1. Šeit viena vārdtelpa ir otras iekšienē. Tas veido garāku `::` ceļu. Mainīgais un apakšprogramma ir divus līmeņus dziļi, vārdtelpā `Outer::Inner`.

1. Pilnais nosaukums `$Outer::Inner::base` sasniedz mainīgo. `Outer::Inner::doubled()` sasniedz apakšprogrammu caur tiem pašiem diviem līmeņiem. Apakšprogrammas nosaukumam nav sigila. Tāpēc tam priekšā nav `$`, bet mainīgajam tas ir.

1. Abiem priekšā ir `our`. Tas padara tos redzamus ārpus to moduļa. Ar `my` tie paliktu privāti modulim `Inner`.

{% include nav.html %}
