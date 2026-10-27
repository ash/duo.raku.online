---
title: 'Solvo: Kreu dosierujon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Vi povas trovi la fontkodon en la dosiero [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Eligo

```
True
True
```

## Komentoj

1. `mkdir` kreas la dosierujon. `.IO.d` montras, ke `reports` estas dosierujo.

1. Nun la dosierujo ekzistas. Do ni povas skribi dosieron en ĝin. Por tio, ni donas vojon kun la nomo de la dosierujo en ĝi: `reports/data.txt`. Poste ni kontrolas ĉi tiun vojon per `.e`. La kontrolo montras, ke la dosiero estas en la nova dosierujo.

1. La ordo estas grava. `spurt` **ne** kreas mankantajn dosierujojn por vi. Provu skribi al `reports/data.txt` antaŭ ol la dosierujo `reports` ekzistas. Vi ricevas eraron kiel `Failed to open file … : No such file or directory`. Do unue faru la dosierujon, kiel `mkdir` faras ĉi tie. Tiam la skribado funkcias. Kaj jen io bona pri `mkdir`. Ĝi ankaŭ kreas mankantajn dosierujojn en la mezo de vojo. Ekzemple, `mkdir 'reports/2026'` kreas la tutan ĉenon de dosierujoj per unu voko.

{% include nav.html %}
