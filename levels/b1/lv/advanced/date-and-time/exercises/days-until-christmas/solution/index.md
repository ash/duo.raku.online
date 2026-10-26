---
title: 'Risinājums: Nedēļas līdz Ziemassvētkiem'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Atrodiet programmu failā [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Izvade

```
25 weeks and 6 days
```

## Komentāri

1. Kad atņemat vienu `Date` no otra, jūs iegūstat dienu skaitu starp tiem. Šeit tas ir `181`. Tāpēc jums nav pašiem jāskaita dienas katrā mēnesī. Vēlākais datums ir rakstīts pirmais, tāpēc rezultāts ir pozitīvs.

1. Veselā dalīšana ar `div` dod veselo nedēļu skaitu: `181 div 7` ir `25`. Moduļa operators `%` dod dienas, kas paliek pāri: `181 % 7` ir `6`.

{% include nav.html %}
