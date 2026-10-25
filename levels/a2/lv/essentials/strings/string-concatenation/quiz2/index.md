---
title: 'Tests 2: Virkņu un skaitļu savienošana'
---

{% include menu.html %}

Jūs varat savienot skaitli un virkni. Raku pats pārvērš skaitli par virkni. Katrā daļā zemāk izvēlieties rindas, kas izdrukā pareizo virkni.

## 1

Kuras rindas izdrukā `Alpha2`?

{:.quiz}
1 | say 'Alpha2';
0 | say 'Alpha' 2; | Šeit atstarpe ir sintakses kļūda.
1 | say 'Alpha', '2'; | Šeit nav virkņu savienošanas, bet rezultāts ir pareizs.
1 | say 'Alpha' ~ '2';
1 | say 'Alpha' ~ 2; | Skaitlis tiek pārveidots par virkni un pēc tam savienots.
0 | say 'Alpha' + 2; | `+` neveic virkņu savienošanu.
0 | say 'Alpha' . 2; | Arī `.` neveic virkņu savienošanu.

## 2

Kuras rindas izdrukā `123`?

{:.quiz}
1 | say 1 ~ 2 ~ 3; | Šeit notiek virkņu savienošana, pat skaitļiem.
0 | say 1 + 2 + 3; | Parasta aritmētiska izteiksme.
1 | say '1' ~ '2' ~ '3'; | Viena rakstzīme arī ir virkne.
0 | say '1' + '2' + '3'; | Tā kā ir `+`, virknes tiek pārveidotas par skaitļiem.
1 | say 1 ~ 23;
1 | say 12 ~ 3;
1 | say 123 ~ ''; | `''` ir tukša virkne, tāpēc tās pievienošana nemaina rezultātu.

{% include quiz.html %}

{% include nav.html %}
