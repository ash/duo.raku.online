---
title: Basi di Pod
translations_gpt:
---

{% include menu.html %}

La documentazione Pod sta nel file sorgente. Alcune righe speciali la segnano. Queste righe iniziano con `=`. Il modo più semplice è un blocco di Pod. Il blocco si mette tra `=begin pod` e `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Dentro il blocco, le direttive mostrano la struttura del testo:

* `=head1`, `=head2`, … — intestazioni di diversi livelli
* un paragrafo normale — solo testo sulle sue righe
* `=item` — un elemento di un elenco puntato

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

La riga `=head1` è un'intestazione di primo livello. Le tre righe `=item` formano un elenco. Il Pod sta accanto al codice. Ma non cambia il codice. Il compilatore salta il Pod quando esegue il programma. Ma il compilatore può anche tirare fuori il Pod. Poi mostra il Pod come testo. Lo fa su richiesta. Un argomento più avanti lo mostra.

{% include nav.html %}
