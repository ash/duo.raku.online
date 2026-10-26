---
title: 'Risinājums: Noslēdzošais ziņojums'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Šīs programmas pirmkodu var atrast failā [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Izvade

```
processed 3 items
```

## Komentāri

1. `END` fāzeris kodā ir pirms cikla. Bet tas izpildās pēdējais, pēc galvenā koda. Līdz tam cikls jau trīs reizes ir pieskaitījis 1 mainīgajam `$count`.

1. Fāzeris tur saiti uz mainīgo `$count`. Tāpēc tas nolasa mainīgā *galīgo* vērtību. Tas nenolasa `0` no fāzera rindas. Tas ir parastais iemesls, kāpēc kopsavilkumu liek `END` fāzerī.

{% include nav.html %}
