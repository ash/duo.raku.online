---
title: 'Solvo: Malplenigu dosierujon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `rmdir` forigas nur malplenan dosierujon. Do la programo unue forigas la dosierojn. `'cache'.IO.dir` donas liston de la eroj. `.unlink for …` forigas ĉiun el ili.

1. Nun la dosierujo estas malplena, kaj `rmdir` forigas ĝin. La lasta testo `.e` donas `False`. Do `cache` vere malaperis.

{% include nav.html %}
