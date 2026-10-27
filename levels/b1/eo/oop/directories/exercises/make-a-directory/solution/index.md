---
title: 'Solvo: Kreu dosierujon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `mkdir` kreas la dosierujon, kaj `.IO.d` montras, ke `reports` vere estas dosierujo.

1. La dosierujo nun ekzistas, do ni povas skribi dosieron en ĝin. Por tio, ni donas vojon, kiu enhavas la nomon de la dosierujo: `reports/data.txt`. Poste `.e` sur ĉi tiu vojo montras, ke la dosiero nun estas en la nova dosierujo.

1. La ordo gravas: `spurt` **ne** kreas mankantajn dosierujojn por vi. Provu skribi al `reports/data.txt` antaŭ ol la dosierujo `reports` ekzistas. Tio malsukcesas kun eraro kiel `Failed to open file … : No such file or directory`. La skribado funkcias nur ĉar `mkdir` unue kreas la dosierujon. Feliĉe, `mkdir` ankaŭ kreas ĉiujn mankantajn dosierujojn en la mezo de vojo. Do kun nestita vojo, kiel en `mkdir 'reports/2026'`, unu voko konstruas la tutan ĉenon.

{% include nav.html %}
