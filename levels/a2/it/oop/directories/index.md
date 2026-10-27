---
title: Lavorare con le directory
translations_gpt:
---

{% include menu.html %}

A volte devi lavorare con il file system stesso. Il file system contiene tutti i file e tutte le directory del disco. Per esempio, controlli che cosa esiste, oppure crei delle directory. Una directory è una cartella. Può contenere file e altre directory. Per questo lavoro Raku usa gli _oggetti percorso_. Un percorso dice dove si trova un file o una directory. Il metodo `.IO` trasforma qualsiasi stringa in un oggetto percorso. Poi l'oggetto percorso risponde alle domande su questo percorso.

Due domande sono le più comuni. Il percorso esiste? E che tipo di cosa è?

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` controlla se il percorso esiste. `.f` controlla se è un file regolare. `.d` controlla se è una directory.

`mkdir` crea una nuova directory:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

Il prossimo argomento mostra come elencare che cosa c'è in una directory.

{% include nav.html %}
