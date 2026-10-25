---
title: Vincoli di tipo
---

{% include menu.html %}

Raku ha un cosiddetto sistema di tipi graduale. Questo vuol dire che puoi usare i tipi solo dove li vuoi. Di solito non devi dare il tipo di una variabile. Ma a volte puoi voler limitare il tipo di una variabile. Allora scrivi il tipo così:

```raku
my Int $var = 42;
```

Ora puoi assegnare un altro valore intero a `$var`. Ma non puoi metterci una stringa. Non puoi metterci neanche un numero in virgola mobile. Se ci provi, ottieni un'eccezione:

```raku
my Int $var = 42;
$var = '314E-2';
```

Il programma dà questo errore:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
