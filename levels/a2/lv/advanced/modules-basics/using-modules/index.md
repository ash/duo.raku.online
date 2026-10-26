---
title: Moduļu izmantošana
translations_gpt:
---

{% include menu.html %}

Lai izmantotu moduli, ielādējiet to ar teikumu `use`. Pēc tam jūs varat izmantot nosaukumus, ko modulis eksportē. Tas ir tā, it kā jūs tos būtu uzrakstījis pats.

Ņemiet failu `Greeting.rakumod` no iepriekšējā temata. Programma to izmanto šādi:

```raku
use Greeting;

say hello('Anna');
```

Apakšprogrammai `hello` ir atzīme `is export`. Tāpēc teikums `use` to padara pieejamu. Programma to izsauc tieši:

```
Hello, Anna!
```

Raku ir jāatrod modulis. Tāpēc modulim jābūt uz moduļu meklēšanas ceļa. Tas ir to vietu saraksts, kur Raku meklē moduļus. Varbūt moduļa fails ir tajā pašā direktorijā, kur jūsu programma. Tad lieciet Raku meklēt tur ar opciju `-I.`. Punkts nozīmē «pašreizējā direktorija»:

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku atrod instalētos moduļus automātiski. Par tiem jūs uzzināsiet vēlāk, sadaļā [Moduļu instalēšana no tīmekļa](/lv/advanced/installing-modules). Tāpēc `-I` jums vajag tikai moduļiem blakus jūsu programmai.

{% include nav.html %}
