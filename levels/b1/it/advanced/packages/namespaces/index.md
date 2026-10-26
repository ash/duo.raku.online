---
title: Namespace e our
translations_gpt: true
---

{% include menu.html %}

È il dichiaratore `our` che rende un nome visibile nel suo namespace. Una variabile dichiarata con `my` è lessicale, cioè è privata al suo blocco. Una variabile dichiarata con `our` è anche una variabile di package. Puoi raggiungerla dall'esterno attraverso il percorso `::`:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` funziona perché `count` è stata dichiarata con `our`. Ma `$Counter::secret` non funzionerebbe, perché `secret` è lessicale.

I namespace possono essere **annidati**, cioè uno può stare dentro un altro. Un package dentro un package dà un percorso `::` più lungo:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

Il nome completo `$Outer::Inner::val` porta dal namespace esterno a quello interno. Da lì, porta alla variabile. È proprio così che è organizzata la libreria standard: nomi come `IO::Socket::INET` sono namespace annidati. Anche i tuoi moduli raggruppano così le loro parti sotto un unico nome di primo livello.

{% include nav.html %}
