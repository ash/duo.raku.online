---
title: Aritmetica delle date
---

{% include menu.html %}

Puoi fare operazioni aritmetiche con le date. Questo rende semplici molti calcoli di tutti i giorni.

Se aggiungi un intero a una data, la data va avanti di quel numero di giorni. Il risultato è una nuova data. Il mese e l'anno cambiano da soli, quando serve:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Se sottrai una data da un'altra, ottieni il numero di giorni tra le due:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Per passi più grandi ci sono i metodi `later` e `earlier`. Accettano argomenti con nome come `:days`, `:months` o `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Questi metodi contano in modo corretto quando inizia un nuovo mese o un nuovo anno. Così non devi mai preoccuparti di quanti giorni ha un mese.

{% include nav.html %}
