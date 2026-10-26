---
title: Valori e chiavi
---

{% include menu.html %}

Ogni costante di un enum ha sia un nome sia un numero. Il metodo `.value` restituisce il numero, e `.key` restituisce il nome come stringa:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Non devi per forza usare i numeri automatici da zero. Per scegliere tu i valori, scrivi le costanti come coppie:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Qui la settimana lavorativa parte da uno invece che da zero.

Il tipo enum può anche elencare da solo tutte le sue costanti. Il suo metodo `.enums` restituisce una mappa che collega ogni nome al suo valore:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Questi tre metodi, `.value`, `.key` e `.enums`, ti permettono di muoverti liberamente. Puoi andare da una costante al suo numero e da un numero di nuovo ai dati. Puoi anche lavorare con l'intero insieme. Ecco perché gli enum sono utili per cose come menu, stati e tabelle di ricerca.

{% include nav.html %}
