---
title: Lavorare con le directory
translations_gpt:
---

{% include menu.html %}

A volte devi lavorare con il file system stesso. Per esempio, puoi voler controllare che cosa esiste o creare delle directory. Per questo, Raku usa gli _oggetti percorso_. Puoi trasformare qualsiasi stringa in un oggetto percorso con il metodo `.IO`. L'oggetto percorso poi risponde alle domande su quel percorso.

Molto spesso chiedi se un percorso esiste e che tipo di cosa è:

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` controlla se il percorso esiste. `.f` controlla se è un file regolare, e `.d` se è una directory.

Per creare una nuova directory, usa `mkdir`:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

Nel prossimo argomento vedrai come elencare il contenuto di una directory.

{% include nav.html %}
