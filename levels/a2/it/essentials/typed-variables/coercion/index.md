---
title: Conversione dei tipi per variabili tipizzate
---

{% include menu.html %}

I vincoli di tipo sono regole per i tipi delle variabili. Queste regole sono abbastanza rigide. Per esempio, prendi una variabile con il tipo `Int`. Non puoi assegnarle un valore `Num`. Questo vale anche se il valore è un numero intero:

```raku
my Int $x = 42;
# $x = 42e1; # Errore
```

Per convertire il valore, usa [uno dei metodi](/it/essentials/coercion/#topics-in-this-section).

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
