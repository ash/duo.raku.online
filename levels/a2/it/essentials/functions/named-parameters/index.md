---
title: Parametri nominati
---

{% include menu.html %}

I parametri _nominati_ non sono come i [parametri posizionali](../positional-parameters). In una chiamata, scrivi i loro nomi.

Questa funzione prende due parametri. I loro nomi sono `$from` e `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Per chiamare la funzione, scrivi il nome di ogni argomento:

```raku
say distance(from => 30, to => 10); # 20
```

Non passare gli argomenti come argomenti posizionali. Questo è un errore. Per esempio, la chiamata `distance(30, 10)` dà un errore:

    Troppi posizionali passati; previsti 0 argomenti ma ne sono stati ricevuti 2
        in sub distance at t.raku line 1
        in block <unit> at t.raku line 2

Ecco la parte buona. Puoi scrivere gli argomenti nominati in qualsiasi ordine. Queste due chiamate fanno esattamente la stessa cosa:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Passare variabili

A volte vuoi passare il valore di una variabile. La variabile ha lo stesso nome del parametro. Allora ti aiuta una sintassi speciale. Con questa sintassi scrivi di meno:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Questa chiamata fa lo stesso di una chiamata più lunga:

```raku
say distance(from => $from, to => $to); # 20
```

Anche qui, l'ordine non importa:

```raku
say distance(:$to, :$from); # 20
```

A volte la variabile e il parametro hanno nomi diversi. Allora passa una coppia in uno di questi modi:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# oppure:

say distance(:from($a), :to($b));
```

{% include nav.html %}
