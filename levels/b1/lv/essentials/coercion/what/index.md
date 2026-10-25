---
title: 'Introspekcija ar `WHAT`'
---

{% include menu.html %}

Lai redzētu mainīgā datu tipu, izsauciet uz tā `WHAT` metodi:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Kā redzat komentāros, tips tiek izdrukāts iekavās. Piemēram, `(Int)` vai `(Str)`.

Nav nekādu problēmu izsaukt metodi uz paša literāļa. Piemēram:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Ievērojiet, ka mēs ieliekam `-1` iekavās. Bez tām `say -1.WHAT` mēģinātu likt mīnusu pirms `1.WHAT` rezultāta. Tas izraisa izņēmumu.

{% include nav.html %}
