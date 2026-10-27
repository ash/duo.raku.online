---
title: 'Solutio: Directorium crea'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `mkdir` directoriam creat. `.IO.d` ostendit: `reports` directoria est.

1. Nunc directoria exsistit. Itaque archivum in eam scribere possumus. Ad hoc semitam cum nomine directoriae damus: `reports/data.txt`. Deinde hanc semitam per `.e` probamus. Inspectio ostendit: archivum in nova directoria est.

1. Ordo magni momenti est. `spurt` directorias absentes pro te **non** creat. Conare in `reports/data.txt` scribere antequam directoria `reports` exsistit. Errorem accipis sicut `Failed to open file … : No such file or directory`. Itaque directoriam primum fac, ut `mkdir` hic facit. Tum scriptio bene procedit. Et ecce res bona de `mkdir`. Etiam directorias absentes in media semita creat. Exempli gratia, `mkdir 'reports/2026'` totam catenam directoriarum una vocatione creat.

{% include nav.html %}
