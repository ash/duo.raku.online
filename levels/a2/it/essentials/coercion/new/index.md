---
title: Conversione dei tipi usando le forme del costruttore
---

{% include menu.html %}

C'è un modo simile. Puoi creare un nuovo oggetto del tipo che ti serve. Per questo, chiama il costruttore del tipo. Un costruttore crea nuovi oggetti. Il suo nome è uguale al nome del tipo. Per esempio:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Qui la stringa contiene un numero in virgola mobile. Raku la converte in un intero.

{% include nav.html %}
