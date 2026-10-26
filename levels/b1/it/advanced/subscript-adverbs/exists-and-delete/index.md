---
title: Exists e delete
---

{% include menu.html %}

L'avverbio `:exists` trasforma un accesso tramite indice in una domanda. C'è un valore a questa chiave o indice? L'avverbio restituisce un valore booleano, ma non prende il valore stesso:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Questo è il modo giusto per controllare una chiave. Se leggi solo `%h<plum>`, ottieni un valore indefinito. A seconda dei dati, questo può nascondere la differenza tra “assente” e “presente ma indefinito”.

L'avverbio `:delete` rimuove l'elemento e ti restituisce il suo valore:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

L'elemento `apple` non c'è più. Ricevi indietro il valore eliminato `1`, così puoi usarlo.

Entrambi gli avverbi funzionano anche con gli array, tramite indice:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Come appare l'array dopo che rimuovi un elemento in mezzo? Ecco la risposta:

```raku
say @a; # [10 (Any) 30]
```

Quindi una sola notazione coerente ti permette di controllare e cambiare i contenitori direttamente. Non ti servono metodi separati per questo.

{% include nav.html %}
