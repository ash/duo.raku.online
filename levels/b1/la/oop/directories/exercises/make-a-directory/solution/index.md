---
title: 'Solutio: Directorium crea'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Inveni codicem fontem in archivo [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Exitus

```
True
True
```

## Commentarii

1. `mkdir` directoriam creat, et `.IO.d` ostendit `reports` vere directoriam esse.

1. Directoria nunc exsistit, itaque archivum in eam scribere possumus. Ad hoc semitam damus quae nomen directoriae includit: `reports/data.txt`. Deinde `.e` in hac semita ostendit archivum nunc in nova directoria esse.

1. Ordo refert: `spurt` directorias absentes pro te **non** creat. Conare in `reports/data.txt` scribere antequam directoria `reports` exsistit. Hoc deficit cum errore sicut `Failed to open file … : No such file or directory`. Scriptio solum succedit quia `mkdir` directoriam primum creat. Feliciter `mkdir` etiam quaslibet directorias absentes in media semita creat. Itaque cum semita nidificata, ut in `mkdir 'reports/2026'`, una vocatio totam catenam aedificat.

{% include nav.html %}
