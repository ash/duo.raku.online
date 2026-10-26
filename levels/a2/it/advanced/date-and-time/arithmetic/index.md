---
title: Aritmetica delle date
---

{% include menu.html %}

Con le date puoi fare operazioni aritmetiche. Così molti calcoli di tutti i giorni diventano facili.

Puoi aggiungere un intero a una data. Allora la data va avanti di quel numero di giorni. Ottieni una nuova data. Se serve, Raku cambia anche il mese e l'anno:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Puoi anche sottrarre una data da un'altra. Ottieni il numero di giorni tra le due date:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Per passi più grandi, usa i metodi `later` e `earlier`. Prendono argomenti con nome, come `:days`, `:months` o `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Questi metodi danno sempre la data giusta. Funzionano anche quando inizia un nuovo mese o un nuovo anno. Così non devi mai sapere quanti giorni ha un mese.

{% include nav.html %}
