---
title: Scegliere quello giusto
---

{% include menu.html %}

Con gli scalari di tutti i giorni, come numeri e stringhe, le tre rappresentazioni sembrano uguali. La differenza appare con valori composti o indefiniti. Ecco un `Pair`, mostrato in tre modi:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Ecco una regola generale, a grandi linee:

* [`.gist`](../gist) — per l'output che le persone *leggeranno* (`say`, `note`).
* [`.Str`](../str) — per l'output in *testo semplice* (`print`, `put`, variabili dentro le stringhe, l'operatore `~`).
* [`.raku`](../raku-method) — per una forma *simile al codice* quando fai il debug (`dd`).

Quando scrivi una classe, puoi dare a ognuno di questi metodi una tua definizione. Allora anche i tuoi oggetti si stampano in modo chiaro. Torneremo su questo quando [creeremo le classi](/it/oop/classes) nella prossima parte.

{% include nav.html %}
