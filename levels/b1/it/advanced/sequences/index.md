---
title: Sequenze
---

{% include menu.html %}

Una _sequenza_ è una serie di valori in ordine, prodotti uno dopo l'altro. Raku costruisce le sequenze con l'operatore `...`. L'operatore trova il modello nei valori che gli dai. Poi genera il resto, fino a un punto finale.

La sequenza più semplice conta solo da un valore a un altro:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Se dai due valori iniziali, Raku trova il passo tra di loro. Poi continua con lo stesso passo. Ecco come crei una sequenza aritmetica:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Qui i valori iniziali `1, 3` rendono il passo uguale a due. Quindi Raku conta di due in due e si ferma quando raggiunge `11`.

Il valore che `...` produce ha il tipo `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

I prossimi argomenti mostrano altri modelli che l'operatore `...` sa riconoscere. Mostrano anche come una sequenza può essere lazy, e perfino infinita.

{% include nav.html %}
