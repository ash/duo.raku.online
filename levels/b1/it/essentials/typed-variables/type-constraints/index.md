---
title: Vincoli di tipo
---

{% include menu.html %}

Raku ha un cosiddetto sistema di tipi graduale. Nella maggior parte dei casi, non devi preoccuparti del tipo di una variabile. Ma a volte potresti voler limitare una variabile a un solo tipo. Puoi farlo indicando il tipo, come qui sotto:

```raku
my Int $var = 42;
```

Ora puoi assegnare un altro valore intero a `$var`. Ma se provi a metterci una stringa, ottieni un'eccezione. Lo stesso succede anche con un numero in virgola mobile:

```raku
my Int $var = 42;
$var = '314E-2';
```

Questo programma dà il seguente errore:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
