---
title: Accedere al Pod
translations_gpt:
---

{% include menu.html %}

Il Pod si può mostrare come testo formattato. Ma un programma può anche leggere il proprio Pod **dall'interno**. Lo fa mentre è in esecuzione. La variabile speciale `$=pod` contiene il Pod del file corrente. È una lista di oggetti blocco. Così un programma può guardare la propria documentazione:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Qui `$=pod` ha un solo elemento: il blocco `pod`. Si può entrare in questo blocco. Lì si possono leggere intestazioni, paragrafi ed elementi come dati. Alcuni strumenti creano documentazione. Altri strumenti controllano se la documentazione c'è. Tutti questi strumenti ne hanno bisogno. La documentazione si può mostrare con `--doc`. Oppure si può leggere attraverso `$=pod`. In tutti e due i casi è una vera parte del programma. Non è un commento, e Raku non la butta via.

{% include nav.html %}
