---
title: Aggiungere a un file
translations_gpt:
---

{% include menu.html %}

Di solito `spurt` sostituisce tutto il vecchio contenuto del file. Ma forse vuoi aggiungere qualcosa alla fine di un file. Per questo, passa l'argomento nominato `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

Il secondo `spurt` tiene il vecchio contenuto. Aggiunge la nuova riga dopo il vecchio contenuto. Così alla fine il file ha tutte e due le righe:

```
line1
line2
```

Senza `:append`, la seconda chiamata scrive sopra il file. Allora il file ha solo `line2`. Aggiungere qualcosa alla fine di un file si dice aggiungere in coda. È utile per esempio per i file di log. Un file di log è un registro del lavoro di un programma. Ogni esecuzione del programma aggiunge qualcosa a questo registro. Così il registro cresce. Il programma non ricomincia con un file vuoto.

{% include nav.html %}
