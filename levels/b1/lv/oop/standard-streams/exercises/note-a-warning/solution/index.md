---
title: 'Risinājums: Brīdinājums ar `note`'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `note` sūta brīdinājumu uz standarta kļūdu plūsmu, bet tikai tad, ja vērtība tiešām ir negatīva. `say` sūta īsto rezultātu, absolūto vērtību `3`, uz standarta izvadi.

1. Brīdinājums paliek standarta kļūdu plūsmā. Tāpēc tas nesajaucas ar programmas īsto izvadi. Ja jūs izmetat standarta kļūdu plūsmu ar `2>/dev/null`, paliek tikai `3`.

{% include nav.html %}
