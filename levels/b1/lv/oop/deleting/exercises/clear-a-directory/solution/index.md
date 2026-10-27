---
title: 'Risinājums: Iztīriet direktoriju'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `rmdir` noņem tikai tukšas direktorijas, tāpēc vispirms jāizdzēš faili. `'cache'.IO.dir` uzskaita ierakstus, un `.unlink for …` izdzēš katru no tiem.

1. Tagad, kad direktorija ir tukša, `rmdir` to noņem. Pēdējā `.e` pārbaude dod `False`, un tas parāda, ka `cache` vairs nav.

{% include nav.html %}
