---
title: Atslēgas, vērtības un pāri
translations_gpt:
---

{% include menu.html %}

Citi apstākļvārdi maina to, **ko** indekss atdod. Parasti indekss atgriež tikai vērtību, bet šie apstākļvārdi atgriež vairāk:

* `:v` — vērtību (noklusējums)
* `:k` — atslēgu (vai indeksu)
* `:kv` — gan atslēgu, gan vērtību
* `:p` — atslēgas un vērtības `Pair`

Masīvam «atslēga» ir indekss:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` dod indeksu un vērtību kopā sarakstā. `@a[1]:p` dod tos kā pāri.

Tas pats darbojas ar jaukteņiem. Tas ir īpaši noderīgi ar vairāku atslēgu šķēli uzreiz:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Šeit divu atslēgu šķēle atdod katru atslēgu, kam seko tās vērtība. `map`, `for` un līdzīgi rīki bieži paļaujas uz šiem apstākļvārdiem. Tie ļauj apstrādāt atslēgas un vērtības līdzās, bez atsevišķiem meklējumiem.

{% include nav.html %}
