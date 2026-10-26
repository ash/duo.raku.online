---
title: 'Risinājums: Nedēļas līdz Ziemassvētkiem'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Jūs varat atņemt vienu `Date` no otra. Rezultāts ir dienu skaits starp tiem. Šeit tas ir `181`. Tāpēc jums nav pašiem jāskaita katra mēneša dienas. Vēlākais datums ir pirmais. Tāpēc rezultāts ir pozitīvs.

1. Operators `div` dala veselus skaitļus. Tas dod pilno nedēļu skaitu: `181 div 7` ir `25`. Moduļa operators `%` dod to, kas paliek pāri pēc dalīšanas. Tās ir atlikušās dienas: `181 % 7` ir `6`.

{% include nav.html %}
