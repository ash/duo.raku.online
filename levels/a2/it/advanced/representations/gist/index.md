---
title: Il metodo `.gist`
---

{% include menu.html %}

Il metodo `.gist` restituisce una forma del valore **leggibile per le persone**. È la forma che vuoi *leggere*. `say` stampa proprio questa forma. Anche `note` la stampa. Chiamano `.gist` su ogni argomento.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Per i valori semplici, il gist è solo il valore. Alcuni dati hanno più parti. Per questi dati, `.gist` aggiunge un po' di formattazione. Così puoi ancora leggere bene la struttura:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Un oggetto tipo è un valore. Rappresenta il tipo stesso. Il suo gist è il nome del tipo tra parentesi. Così lo vedi facilmente nell'output:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
