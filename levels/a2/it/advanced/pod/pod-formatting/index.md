---
title: Formattazione e codice
translations_gpt:
---

{% include menu.html %}

Nel testo Pod, le parole si segnano con _codici di formattazione_. Ogni codice è una lettera. Dopo la lettera si mettono parentesi angolari intorno al testo:

* `B<…>` — grassetto
* `I<…>` — corsivo
* `C<…>` — codice (tutte le lettere hanno la stessa larghezza)
* `L<…>` — un collegamento

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Nel testo formattato, `important` è in grassetto. `say` è scritto con un carattere per il codice. Si può mettere un codice dentro un altro codice. In questo modo si combinano. Quindi `B<C<say>>` è codice in grassetto.

A volte serve un intero blocco di codice. Un piccolo pezzo dentro una riga non basta. Allora si usa un blocco di codice: `=begin code … =end code`. Ha una riga all'inizio e una riga alla fine. Mantiene il testo esattamente così com'è:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Le righe nel blocco di codice appaiono esattamente come sono scritte. Raku non le legge come Pod. Quindi il Pod ha codici dentro le righe, e ha blocchi di codice. Con questi si può descrivere un'API. Un'API è il modo in cui altri programmi usano il tuo codice. Si scrivono testi formattati ed esempi. Gli esempi sembrano codice che si può eseguire. Tutto questo resta accanto al codice che descrive.

{% include nav.html %}
