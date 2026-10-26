---
title: Usare moduli
translations_gpt: Usare i moduli
---

{% include menu.html %}

Per usare un modulo, caricalo con l'istruzione `use`. Dopo, i nomi che il modulo esporta sono disponibili. Puoi usarli come se li avessi scritti tu.

Ecco come un programma usa il file `Greeting.rakumod` dell'argomento precedente:

```raku
use Greeting;

say hello('Anna');
```

`hello` è stato contrassegnato con `is export`, quindi l'istruzione `use` lo rende disponibile. Il programma lo chiama direttamente:

```
Hello, Anna!
```

Raku può trovare il modulo solo se è nel percorso di ricerca dei moduli. Il file del tuo modulo può essere nella stessa directory del tuo programma. In questo caso, di' a Raku di cercare lì con l'opzione `-I.`. Il punto significa "la directory corrente":

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku trova automaticamente i moduli installati. Ne parleremo più avanti, in [Installare moduli dal web](/it/advanced/installing-modules). Quindi l'opzione `-I` ti serve solo per i moduli accanto al tuo programma.

{% include nav.html %}
