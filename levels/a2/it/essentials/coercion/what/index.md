---
title: Introspezione con `WHAT`
---

{% include menu.html %}

Puoi vedere il tipo dei dati in una variabile. Chiama il metodo `WHAT` sulla variabile:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Raku stampa il tipo tra parentesi. Lo puoi vedere nei commenti. Per esempio, `(Int)` o `(Str)`.

Puoi anche chiamare un metodo direttamente su un letterale. Un letterale è un valore scritto nel codice. Per esempio:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Nota le parentesi intorno a `-1`. Qui servono. Guarda `say -1.WHAT` senza parentesi. Qui Raku chiama prima `1.WHAT`. Poi prova a mettere un meno davanti al risultato. Questo porta a un'eccezione, un tipo di errore.

{% include nav.html %}
