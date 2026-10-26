---
title: Il metodo `.gist`
---

{% include menu.html %}

Il metodo `.gist` restituisce una rappresentazione del valore **leggibile per le persone**. È la forma che vorresti *leggere*. `say` e `note` stampano proprio questa, perché chiamano `.gist` su ogni argomento.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Per i valori semplici, il gist è solo il valore stesso. Per i dati composti, `.gist` aggiunge un po' di formattazione, così la struttura è facile da leggere:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Un oggetto tipo è un valore che rappresenta il tipo stesso. Il suo gist è il suo nome tra parentesi. Questo lo rende facile da notare nell'output:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
