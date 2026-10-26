---
title: Rendering di Pod
translations_gpt:
---

{% include menu.html %}

Un file può contenere del Pod. Allora il compilatore può trasformarlo in testo formattato. Per questo non esegue il programma. Si usa l'opzione `--doc`:

```
raku --doc mymodule.raku
```

Prendiamo l'esempio di prima, con un'intestazione e un paragrafo. Per questo esempio il comando stampa più o meno questo:

```
My Module

This module does something useful.
```

Questo funziona anche con gli elenchi e i blocchi di codice. Guardiamo questo Pod:

```raku
=begin pod

=head1 Shopping list

Things to buy:

=item Apples
=item Bread
=item Cheese

Run it like this:

=begin code
say 'hello';
=end code

=end pod
```

Con `raku --doc` stampa questo:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Ogni `=item` diventa un punto elenco. Il blocco `=begin code … =end code` si sposta un po' a destra. Il suo testo resta esattamente come è scritto.

## Trasformare il Pod in HTML

Allo stesso modo si possono avere anche altri formati. Per l'HTML si installa un modulo di formattazione. Questo si fa una sola volta. Poi si scrive il suo nome dopo `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Ora lo stesso documento esce come HTML. L'intestazione diventa un `<h1>`. L'elenco diventa un `<ul>` con elementi `<li>`. Il blocco di codice diventa un `<pre>`:

```html
<h1>Shopping list</h1>
<p>Things to buy:</p>
<ul>
  <li>Apples</li>
  <li>Bread</li>
  <li>Cheese</li>
</ul>
<p>Run it like this:</p>
<pre class="pod-block-code">say 'hello';</pre>
```

Lo strumento mette anche tutto questo in una pagina HTML completa. La documentazione ufficiale di Raku su [docs.raku.org](https://docs.raku.org) si fa in questo modo. Viene da file Pod.

{% include nav.html %}
