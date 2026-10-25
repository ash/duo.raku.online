---
title: Introspezione con `WHAT`
---

{% include menu.html %}

Per vedere il tipo di dato in una variabile, chiama il metodo `WHAT` su di essa:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Come vedi nei commenti, il tipo viene stampato tra parentesi. Per esempio, `(Int)` o `(Str)`.

Non c'è nessun problema a chiamare un metodo su un letterale. Per esempio:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Nota che mettiamo `-1` tra parentesi. Senza parentesi, `say -1.WHAT` proverebbe a mettere un meno davanti al risultato di `1.WHAT`. Questo porta a un'eccezione.

{% include nav.html %}
