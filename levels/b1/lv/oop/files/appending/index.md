---
title: Pievienošana failam
translations_gpt:
---

{% include menu.html %}

Pēc noklusējuma `spurt` aizstāj visu, kas bija failā. Lai tā vietā pievienotu esoša faila beigās, padodiet nosaukto argumentu `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

Otrais `spurt` patur veco saturu un pievieno jauno rindu aiz tā. Tāpēc beigās failā ir abas rindas:

```
line1
line2
```

Bez `:append` otrais izsaukums pārrakstītu failu. Paliktu tikai `line2`. Pievienošana noder tādām lietām kā žurnālfaili. Katra programmas palaišana papildina augošu pierakstu, nevis sāk no jauna.

{% include nav.html %}
