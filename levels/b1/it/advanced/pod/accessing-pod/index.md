---
title: Accedere al Pod
translations_gpt:
---

{% include menu.html %}

Il Pod si può mostrare come testo formattato. Ma un programma può anche leggere il proprio Pod **dall'interno**, mentre è in esecuzione. La variabile speciale `$=pod` contiene il Pod del file corrente. È una lista di oggetti blocco. Così un programma può esaminare la propria documentazione:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Qui `$=pod` ha un solo elemento, il blocco `pod`. Si può navigare al suo interno e leggere intestazioni, paragrafi ed elementi come dati. Gli strumenti che generano documentazione, o che controllano che ci sia, si basano su questo. La documentazione si può mostrare con `--doc` o leggere attraverso `$=pod`. In entrambi i casi è una parte vera e propria del programma. Non è un commento da buttare via.

{% include nav.html %}
