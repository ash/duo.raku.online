---
title: Pievienošana failam
translations_gpt:
---

{% include menu.html %}

Parasti `spurt` aizstāj visu veco faila saturu. Bet jūs varbūt gribat kaut ko pievienot faila beigās. Tam padodiet nosaukto argumentu `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

Otrais `spurt` patur veco saturu. Tas pievieno jauno rindu aiz tā. Tāpēc beigās failā ir abas rindas:

```
line1
line2
```

Bez `:append` otrais izsaukums pārraksta failu. Tad failā ir tikai `line2`. Rakstīšanu faila beigās sauc par pievienošanu. Tā noder, piemēram, žurnālfailiem. Žurnālfails glabā pierakstu par programmas darbu. Katra programmas palaišana papildina šo pierakstu. Tāpēc pieraksts aug. Programma nesāk no jauna ar tukšu failu.

{% include nav.html %}
