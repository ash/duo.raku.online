---
title: 'Risinājums: Anonīms kvadrāts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Atrodiet programmu failā [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Izvade

```
(1 4 9)
```

## Komentāri

1. Apakšprogrammai `sub ($x) { $x * $x }` nav nosaukuma. Programma to nekad neglabā mainīgajā. Tā to iedod tieši `map` kā argumentu.

1. `map` to lieto katram `1, 2, 3` elementam. Tā reizina katru skaitli pašu ar sevi. Rezultāts ir `(1 4 9)`. Visbiežāk anonīmu apakšprogrammu raksta tieši tam. To iedod uzreiz, kā šeit.

{% include nav.html %}
