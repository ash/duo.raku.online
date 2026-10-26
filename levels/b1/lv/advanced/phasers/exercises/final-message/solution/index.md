---
title: 'Risinājums: Noslēdzošais ziņojums'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `END` fāzeris ir uzrakstīts pirms cikla, bet tas izpildās pēdējais. Tas izpildās, kad galvenais kods ir pabeigts. Līdz tam `$count` ir palielināts trīs reizes.

1. Fāzeris aptver `$count`, tas ir, tas tur saiti uz šo mainīgo. Tāpēc tas nolasa *galīgo* vērtību. Tas nenolasa `0` no rindas, kurā atrodas fāzeris. Tas ir parastais iemesls, kāpēc kopsavilkumu ievieto `END`.

{% include nav.html %}
