---
title: Sadalīšana un apvienošana
---

{% include menu.html %}

Jūs varat sadalīt virkni daļās vairākos veidos. Jūs varat arī salikt daļas atkal kopā.

Metode `words` sadala virkni vārdu sarakstā. Vārdus atdala tukšās rakstzīmes, piemēram, atstarpe:

```raku
say 'Hello big World'.words; # (Hello big World)
```

Metode `split` sagriež virkni pie atdalītāja. Atdalītāju izvēlaties jūs:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Šeit ir svarīgs īpašs gadījums. Jūs varat sadalīt virkni pie **tukšās virknes** `''`. Tad jūs saņemat virknes atsevišķās rakstzīmes. Bet jūs saņemat arī vēl divas tukšas virknes. Tās ir pašā sākumā un pašās beigās. Tāpēc rezultātā ir par diviem elementiem vairāk, nekā jūs gaidāt:

```raku
say 'abc'.split('').elems;        # 5 — trīs burti, plus tukša virkne katrā galā
say 'abc'.split('', :skip-empty); # (a b c) — adverbs :skip-empty izlaiž tukšos
```

Vai jūs gribat sadalīt virkni rakstzīmēs? Izsauciet metodi `comb` bez argumentiem. Tā to dara tieši. Nav lieku tukšu virkņu:

```raku
say 'Raku'.comb; # (R a k u)
```

Metode `join` dara pretējo. Tā savieno vērtību sarakstu vienā virknē. Tā ieliek atdalītāju starp vērtībām:

```raku
say <a b c>.join('-'); # a-b-c
```

Vēl divas metodes strādā ar virknes daļām. Metode `substr` jums dod virknes gabalu. Jūs tai norādāt sākuma pozīciju. Ja vēlaties, jūs varat norādīt arī garumu:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Un `trim` noņem atstarpes abos virknes galos:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
