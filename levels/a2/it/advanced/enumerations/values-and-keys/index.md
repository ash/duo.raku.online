---
title: Valori e chiavi
---

{% include menu.html %}

Ogni costante di un enum ha un nome e un numero. Il metodo `.value` dà il numero. Il metodo `.key` dà il nome come stringa:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Raku numera le costanti a partire da zero. Ma puoi cambiarlo. Scrivi le costanti come coppie. Allora scegli tu i valori:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Qui la settimana lavorativa parte da uno, non da zero.

Il tipo enum può anche elencare tutte le sue costanti. Il metodo `.enums` restituisce una mappa. Una mappa è come un hash. In questa mappa, ogni nome ha il suo valore:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Con `.value`, `.key` e `.enums` ti puoi muovere liberamente. Puoi andare da una costante al suo numero. Puoi tornare da un numero ai dati. E puoi lavorare su tutto l'insieme. Per questo gli enum sono utili, per esempio, per menu, stati e tabelle di ricerca.

{% include nav.html %}
