---
title: Usare moduli
translations_gpt: Usare i moduli
---

{% include menu.html %}

Per usare un modulo, caricalo con l'istruzione `use`. Dopo puoi usare i nomi che il modulo esporta. È come averli scritti tu.

Prendi il file `Greeting.rakumod` dell'argomento precedente. Un programma lo usa così:

```raku
use Greeting;

say hello('Anna');
```

`hello` ha il segno `is export`. Quindi l'istruzione `use` lo rende disponibile. Il programma lo chiama direttamente:

```
Hello, Anna!
```

Raku deve trovare il modulo. Quindi il modulo deve essere nel percorso di ricerca dei moduli. È la lista dei posti dove Raku cerca i moduli. Forse il file del modulo è nella stessa directory del tuo programma. Allora di' a Raku di cercare lì con l'opzione `-I.`. Il punto significa "la directory corrente":

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku trova automaticamente i moduli installati. Ne parliamo più avanti, in [Installare moduli dal web](/it/advanced/installing-modules). Quindi ti serve `-I` solo per i moduli accanto al tuo programma.

{% include nav.html %}
