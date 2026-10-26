---
title: Atslēgas, vērtības un pāri
translations_gpt:
---

{% include menu.html %}

Citi apstākļvārdi maina to, **ko** indekss atgriež. Parasti indekss atgriež vērtību. Šie apstākļvārdi atgriež vairāk:

* `:v` — vērtību; tas ir noklusējums
* `:k` — atslēgu vai indeksu
* `:kv` — atslēgu un vērtību
* `:p` — atslēgas un vērtības `Pair`

Masīvam «atslēga» ir indekss:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` atgriež indeksu un vērtību kopā sarakstā. `@a[1]:p` atgriež tos kā pāri.

Tas darbojas arī ar jaukteņiem. Tas ir ļoti noderīgi ar šķēli. Šķēlē ir vairākas atslēgas uzreiz:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Šeit šķēlē ir divas atslēgas. Rezultāts ir atslēga, tās vērtība, nākamā atslēga, tās vērtība. `map`, `for` un līdzīgi rīki bieži izmanto šos apstākļvārdus. Ar tiem jūs varat strādāt ar atslēgām un vērtībām kopā. Jums nav vajadzīgi atsevišķi meklējumi.

{% include nav.html %}
