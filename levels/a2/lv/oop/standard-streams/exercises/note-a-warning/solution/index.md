---
title: 'Risinājums: Brīdinājums ar `note`'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Atrodiet programmu failā [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Izvade

```
Warning: the value is negative
3
```

## Komentāri

1. `note` sūta brīdinājumu uz standarta kļūdu plūsmu. Tā to dara tikai tad, kad vērtība tiešām ir negatīva. `say` sūta īsto rezultātu uz standarta izvadi. Rezultāts ir absolūtā vērtība, `3`.

1. Brīdinājums iet uz standarta kļūdu plūsmu. Tāpēc tas nenokļūst programmas īstajā izvadē. `2>/dev/null` izmet standarta kļūdu plūsmu. Tad paliek tikai `3`.

{% include nav.html %}
