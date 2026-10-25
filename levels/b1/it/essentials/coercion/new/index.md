---
title: Conversione dei tipi usando le forme del costruttore
---

{% include menu.html %}

Un modo simile è creare un nuovo oggetto del tipo che ti serve. Per farlo, chiami il suo costruttore, che ha lo stesso nome del tipo. Per esempio:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Qui una stringa che contiene un numero in virgola mobile viene convertita in un intero.

{% include nav.html %}
