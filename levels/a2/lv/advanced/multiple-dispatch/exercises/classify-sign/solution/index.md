---
title: 'Risinājums: Klasificēt izmēru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Šīs programmas pirmkodu var atrast failā [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Izvade

```
small
medium
large
```

## Komentāri

1. Visi trīs kandidāti pieņem vienu `Int`. Bez `where` klauzulām tie konfliktē. Raku nevar izvēlēties starp tiem. Nosacījumi pirmajos divos padara tos atšķirīgus. Trešais kandidāts pieņem visus pārējos skaitļus.

1. `where` klauzulas pārbauda `$n.abs`. Tāpēc svarīgs ir tikai skaitļa lielums, nevis zīme. `size(7)` atbilst pirmajam kandidātam un dod `small`. Izsaukumā `size(-250)` absolūtā vērtība ir `250`. Tā neatbilst nevienam no abiem nosacījumiem. Tāpēc tā nonāk pie pēdējā kandidāta, kas pieņem visu pārējo. Rezultāts ir `large`.

1. Raku pārbauda kandidātus no specifiskākā līdz vispārīgākajam. Šeit tā ir tieši to secība kodā.

{% include nav.html %}
