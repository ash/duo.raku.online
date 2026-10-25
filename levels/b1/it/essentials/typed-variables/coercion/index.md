---
title: Conversione dei tipi per variabili tipizzate
---

{% include menu.html %}

I vincoli di tipo sono abbastanza rigidi. Per esempio, non puoi assegnare un valore `Num` a una variabile dichiarata come `Int`. Questo vale anche se il valore è un numero intero:

```raku
my Int $x = 42;
# $x = 42e1; # Errore
```

Usa [uno dei metodi](/it/essentials/coercion/#topics-in-this-section) per convertire il valore nel tipo giusto.

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
