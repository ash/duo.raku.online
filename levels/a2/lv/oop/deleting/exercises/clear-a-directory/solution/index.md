---
title: 'Risinājums: Iztīriet direktoriju'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Atrodiet programmu failā [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Izvade

```
False
```

## Komentāri

1. `rmdir` noņem tikai tukšu direktoriju. Tāpēc programma vispirms izdzēš failus. `'cache'.IO.dir` dod ierakstu sarakstu. `.unlink for …` izdzēš katru no tiem.

1. Tagad direktorija ir tukša, un `rmdir` to noņem. Pēdējā `.e` pārbaude dod `False`. Tātad `cache` tiešām vairs nav.

{% include nav.html %}
