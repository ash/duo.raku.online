---
title: Exists e delete
---

{% include menu.html %}

L'avverbio `:exists` trasforma un accesso tramite indice in una domanda. C'è un valore a questa chiave o indice? La risposta è `True` o `False`. L'avverbio non prende il valore:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Questo è il modo giusto per controllare una chiave. Puoi anche solo leggere `%h<plum>`. Ma allora ottieni un valore indefinito. Oppure, con alcuni dati, non vedi la differenza. La chiave è “assente”? Oppure è “presente ma indefinita”?

L'avverbio `:delete` rimuove l'elemento. Restituisce il valore dell'elemento:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

L'elemento `apple` non c'è più. Ricevi indietro il suo valore `1`. Puoi usare questo valore.

Tutti e due gli avverbi funzionano anche con gli array. Lì usi un indice:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Rimuovi un elemento dal centro. Come appare l'array allora? Ecco la risposta:

```raku
say @a; # [10 (Any) 30]
```

Quindi usi una sola notazione, e funziona sempre allo stesso modo. Con questa notazione puoi fare domande su un contenitore. Puoi anche cambiare direttamente il contenitore. Non ti servono metodi separati per questo.

{% include nav.html %}
