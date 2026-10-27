---
title: Elencare una directory
translations_gpt:
---

{% include menu.html %}

La routine `dir` restituisce le voci di una directory, ognuna come oggetto percorso. Il loro ordine non è fisso. Quindi spesso si ordina il risultato, e così l'output ha sempre lo stesso ordine.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Il programma stampa in ordine i nomi dei file nella directory `box`:

```
a.txt
b.txt
```

Ogni voce è un oggetto percorso completo. Il metodo `basename` dà solo il nome finale, senza la parte della directory. A un oggetto percorso puoi fare tutte le domande di prima: `.f`, `.d` e `.e`. Così puoi, per esempio, percorrere una directory e scegliere solo i file.

{% include nav.html %}
