---
title: Sadalīšana un apvienošana
---

{% include menu.html %}

Ir vairāki veidi, kā sadalīt virkni daļās un atkal tās savienot.

Metode `words` sadala virkni vārdu sarakstā pie atstarpēm:

```raku
say 'Hello big World'.words; # (Hello big World)
```

Metode `split` sadala virkni pie atdalītāja, kuru izvēlaties jūs:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Svarīgs īpašs gadījums ir sadalīšana pie **tukšās virknes** `''`. Tā sadala virkni atsevišķās rakstzīmēs. Bet tā arī pievieno tukšu virkni pašā sākumā un pašās beigās. Tāpēc rezultātā ir par diviem elementiem vairāk, nekā jūs varētu gaidīt:

```raku
say 'abc'.split('').elems;        # 5 — trīs burti, plus tukša virkne katrā galā
say 'abc'.split('', :skip-empty); # (a b c) — adverbs :skip-empty izlaiž tukšos
```

Lai sadalītu virkni rakstzīmēs, jūs varat izsaukt metodi `comb` bez argumentiem. Tā to dara tieši, un nav lieku tukšu virkņu, kas būtu jānoņem:

```raku
say 'Raku'.comb; # (R a k u)
```

Lai ietu pretējā virzienā, izmantojiet metodi `join`. Tā savieno vērtību sarakstu vienā virknē un ieliek starp tām atdalītāju:

```raku
say <a b c>.join('-'); # a-b-c
```

Vēl divas metodes strādā ar virknes daļām. Metode `substr` atgriež virknes gabalu. Jūs tai norādāt sākuma pozīciju un, ja vēlaties, garumu:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Un `trim` noņem atstarpes virknes sākumā un beigās:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
