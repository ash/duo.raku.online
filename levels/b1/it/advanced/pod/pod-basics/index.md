---
title: Basi di Pod
translations_gpt:
---

{% include menu.html %}

La documentazione Pod si trova nel file sorgente. Le righe che iniziano con `=` segnano dove si trova. Il modo più semplice è scriverla tra `=begin pod` e `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

All'interno del blocco, le direttive descrivono la struttura:

* `=head1`, `=head2`, … — intestazioni di diversi livelli
* un paragrafo normale — semplicemente testo sulle sue righe
* `=item` — un elemento in un elenco puntato

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

La riga `=head1` è un'intestazione di primo livello. Le tre righe `=item` formano un elenco. Il Pod sta accanto al codice, ma non cambia il suo funzionamento. Il compilatore lo ignora quando esegue il programma. Ma su richiesta può estrarre il Pod e renderizzarlo. Un argomento successivo lo mostra.

{% include nav.html %}
