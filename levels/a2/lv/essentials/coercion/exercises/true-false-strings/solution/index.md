---
title: 'Risinājums: True un False virknes'
---

{% include menu.html %}

Šis uzdevums ir līdzīgs [iepriekšējam](../../true-false-numbers). Bet šoreiz uzdevums ir mazliet grūtāks. Šeit vairāk virkņu var izskatīties kā `False`. Apskatīsim tās.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

No visām šīm virknēm tikai tukšā virkne kļūst par `False`. Visas pārējās virknes kļūst par `True`. Pat virkne tikai ar atstarpēm kļūst par `True`. Arī virkne ar rakstzīmi `0` ir `True`.

🦋 Pilnu programmu ar iepriekš minēto piemēru var atrast failā [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
