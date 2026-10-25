---
title: 'Introspekcija ar `WHAT`'
---

{% include menu.html %}

Jūs varat redzēt mainīgā datu tipu. Izsauciet uz tā `WHAT` metodi:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Raku izdrukā tipu iekavās. Jūs to redzat komentāros. Piemēram, `(Int)` vai `(Str)`.

Jūs varat izsaukt metodi arī tieši uz literāļa. Literālis ir vērtība, ko raksta kodā. Piemēram:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Ievērojiet iekavas ap `-1`. Šeit tās ir vajadzīgas. Paskatieties uz `say -1.WHAT` bez iekavām. Šeit Raku vispirms izsauc `1.WHAT`. Tad tas mēģina likt mīnusu pirms rezultāta. Tas rada izņēmumu jeb sava veida kļūdu.

{% include nav.html %}
