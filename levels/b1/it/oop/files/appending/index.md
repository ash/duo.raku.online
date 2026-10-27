---
title: Aggiungere a un file
translations_gpt:
---

{% include menu.html %}

Normalmente `spurt` sostituisce tutto quello che c'era nel file. Per aggiungere invece alla fine di un file esistente, passa l'argomento nominato `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

Il secondo `spurt` conserva il contenuto che c'era e aggiunge la nuova riga dopo. Così alla fine il file contiene tutte e due le righe:

```
line1
line2
```

Senza `:append`, la seconda chiamata scriverebbe sopra il file. Resterebbe solo `line2`. Aggiungere in coda è utile per cose come i file di log. Ogni esecuzione di un programma aggiunge qualcosa a un registro che cresce, invece di ricominciare da capo.

{% include nav.html %}
