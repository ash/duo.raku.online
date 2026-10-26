---
title: Moduļu izmantošana
translations_gpt:
---

{% include menu.html %}

Lai izmantotu moduli, ielādējiet to ar teikumu `use`. Pēc tam ir pieejami nosaukumi, ko modulis eksportē. Jūs varat tos izmantot tā, it kā jūs pats tos būtu uzrakstījis.

Lūk, kā programma izmanto failu `Greeting.rakumod` no iepriekšējā temata:

```raku
use Greeting;

say hello('Anna');
```

`hello` bija atzīmēta ar `is export`, tāpēc teikums `use` to padara pieejamu. Programma to izsauc tieši:

```
Hello, Anna!
```

Raku var atrast moduli tikai tad, ja tas ir uz moduļu meklēšanas ceļa. Jūsu moduļa fails var atrasties tajā pašā direktorijā, kur jūsu programma. Tādā gadījumā lieciet Raku meklēt tur ar opciju `-I.`. Punkts nozīmē «pašreizējā direktorija»:

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku atrod instalētos moduļus automātiski. Tie ir aplūkoti vēlāk, sadaļā [Moduļu instalēšana no tīmekļa](/lv/advanced/installing-modules). Tāpēc opcija `-I` jums vajadzīga tikai moduļiem blakus jūsu paša programmai.

{% include nav.html %}
