---
title: Namespace e our
translations_gpt: true
---

{% include menu.html %}

La parola `our` rende qualcosa visibile nel suo namespace. Una variabile con `my` è lessicale. È privata al suo blocco. Una variabile con `our` è anche una variabile di package. Puoi arrivarci dall'esterno attraverso il percorso `::`:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` funziona. La variabile `count` ha `our`. Ma `$Counter::secret` non funziona. La variabile `secret` è lessicale.

I namespace possono essere **annidati**. Questo vuol dire che un namespace è dentro un altro. Un package dentro un package crea un percorso `::` più lungo:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

Il nome completo `$Outer::Inner::val` è come un percorso. Va dal namespace esterno a quello interno. Poi va alla variabile. La libreria standard usa proprio questa struttura. Nomi come `IO::Socket::INET` sono namespace annidati. Anche i tuoi moduli possono funzionare così. Tengono tutte le loro parti sotto un unico nome di primo livello.

{% include nav.html %}
