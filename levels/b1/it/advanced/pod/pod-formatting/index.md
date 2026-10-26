---
title: Formattazione e codice
translations_gpt:
---

{% include menu.html %}

All'interno del testo Pod, le parole si marcano con _codici di formattazione_ di una sola lettera. Si scrive la lettera e poi le parentesi angolari intorno al testo:

* `B<…>` — grassetto
* `I<…>` — corsivo
* `C<…>` — codice (con tutte le lettere della stessa larghezza)
* `L<…>` — un collegamento

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Dopo il rendering, `important` appare in grassetto e `say` con un carattere per il codice. I codici possono stare uno dentro l'altro e si possono combinare, quindi `B<C<say>>` è codice in grassetto.

A volte serve un intero blocco di codice, non solo un pezzo dentro una riga. Allora si usa un blocco di codice con righe chiare di inizio e di fine, `=begin code … =end code`. Mantiene il testo esattamente come è scritto:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Le righe all'interno del blocco di codice vengono mostrate esattamente come sono scritte. Non vengono lette come Pod. Con i codici in linea e i blocchi di codice insieme, il Pod può documentare un'API. Può avere testo formattato ed esempi che sembrano codice vero e funzionante. Tutto questo resta accanto al codice che descrive.

{% include nav.html %}
