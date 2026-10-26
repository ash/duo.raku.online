---
title: 'Risinājums: Heredoc'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Programmas pirmkodu var atrast failā [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Izvade

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Komentāri

1. Heredoc sākas ar `qq:to`, nevis ar `q:to`. Tāpēc tas interpolē. Tas strādā kā `qq` virkne. Tas ievieto skalāru `$name`, `$count` un `$item` vērtības. Tas *arī* izpilda kodu teksta iekšienē. Bloks `{$count * $price}` aprēķina `3 * 25`. Tāpēc kopsumma `75` parādās tekstā.

1. Apskatiet dubultpēdiņas `"$item"`. Šeit tās ir tikai parastas rakstzīmes. Heredoc iekšienē pēdiņas nav norobežotāji. Tāpēc tām nevajag atpakaļsvītru. Raku izdrukā pēdiņas tādas, kādas tās ir. Bet tas joprojām interpolē `$item`.

1. Pamattekstam un aizverošajam `END` abiem priekšā ir četras atstarpes. Raku noņem terminatora atkāpi no katras rindas. Tāpēc šīs četras atstarpes nekad nenonāk virknē. Izvade sākas pie kreisās malas.

1. Heredoc jau beidzas ar jaunrindu. Tāpēc programma izmanto `print`, nevis `say`. `say` pievieno vēl vienu jaunrindu. Tā rodas lieka tukša rinda.

{% include nav.html %}
