---
title: 'Risinājums: True un False virknes'
---

{% include menu.html %}

Šis uzdevums ir līdzīgs [iepriekšējam](../../true-false-numbers). Bet šoreiz uzdevums ir nedaudz grūtāks. Ir vairāk ‘aizdomīgu’ virkņu, kuras var uzskatīt par `False`. Izpētīsim tās.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

No visām šīm virknēm tikai tukšā virkne tiek pārveidota par `False`. Visas pārējās virknes kļūst par `True`, pat ja tās satur tikai atstarpes vai rakstzīmi `0`.

🦋 Pilnu programmu ar iepriekš minēto piemēru var atrast failā [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
