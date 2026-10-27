---
title: Elencare una directory
translations_gpt:
---

{% include menu.html %}

La routine `dir` restituisce le voci di una directory. Una voce è un file o una directory al suo interno. Ogni voce è un oggetto percorso. L'ordine delle voci non è fisso. Quindi spesso si ordina il risultato. Così l'output arriva sempre nello stesso ordine.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Questo programma stampa i nomi dei file nella directory `box`. I nomi sono in ordine:

```
a.txt
b.txt
```

Ogni voce è un oggetto percorso completo. Il metodo `basename` dà solo il nome alla fine. Non dà la parte della directory. A un oggetto percorso puoi fare tutte le domande di prima: `.f`, `.d`, `.e`. Così, per esempio, puoi prendere solo i file da una directory.

{% include nav.html %}
