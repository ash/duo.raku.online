---
title: Rendering di Pod
translations_gpt:
---

{% include menu.html %}

Quando un file contiene Pod, il compilatore può trasformarlo in testo formattato. Non ha bisogno di eseguire il programma. Per questo si usa l'opzione `--doc`:

```
raku --doc mymodule.raku
```

Per l'esempio di prima, con un'intestazione e un paragrafo, questo comando stampa qualcosa come:

```
My Module

This module does something useful.
```

Anche gli elenchi e i blocchi di codice si possono renderizzare. Prendiamo come esempio questo Pod:

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

Se lo si renderizza con `raku --doc`, stampa:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Ogni `=item` diventa un punto elenco. Il blocco `=begin code … =end code` viene indentato e mostrato esattamente come è stato scritto.

## Rendering in HTML

In questo modo si possono produrre anche altri formati. Per l'HTML si installa una volta un modulo di formattazione, poi si indica il suo nome dopo `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Ora proprio lo stesso documento esce come HTML. L'intestazione diventa un `<h1>`, e l'elenco diventa un `<ul>` di elementi `<li>`. Il blocco di codice diventa un `<pre>`:

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

Lo strumento mette tutto questo in una pagina HTML completa. La documentazione ufficiale di Raku su [docs.raku.org](https://docs.raku.org) è fatta così. Viene da file sorgente Pod.

{% include nav.html %}
