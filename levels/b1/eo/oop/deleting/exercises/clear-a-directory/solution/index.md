---
title: 'Solvo: Malplenigu dosierujon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Vi povas trovi la fontkodon en la dosiero [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Eligo

```
False
```

## Komentoj

1. `rmdir` forigas nur malplenajn dosierujojn, do la dosieroj devas esti forigitaj unue. `'cache'.IO.dir` listigas la erojn, kaj `.unlink for …` forigas ĉiun el ili.

1. Nun, kiam la dosierujo estas malplena, `rmdir` forigas ĝin. La fina testo `.e` donas `False`, kio montras, ke `cache` malaperis.

{% include nav.html %}
