---
title: Scegliere quello giusto
---

{% include menu.html %}

Prendi scalari semplici, come numeri e stringhe. Qui tutte e tre le forme sembrano uguali. Sono diverse per valori con più parti. Sono diverse anche per valori indefiniti. Ecco un `Pair`, mostrato in tre modi:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Ecco una regola semplice:

* [`.gist`](../gist) — per l'output che le persone *leggono* (`say`, `note`).
* [`.Str`](../str) — per l'output che è *testo semplice* (`print`, `put`, valori dentro le stringhe, l'operatore `~`).
* [`.raku`](../raku-method) — per una forma *simile al codice*, quando fai il debug (`dd`).

Puoi scrivere le tue classi. In una classe, puoi definire tu ognuno di questi metodi. Allora anche i tuoi oggetti si stampano in modo chiaro. Torniamo su questo nella prossima parte. Lì [creiamo le classi](/it/oop/classes).

{% include nav.html %}
