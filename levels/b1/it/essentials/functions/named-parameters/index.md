---
title: Parametri nominati
---

{% include menu.html %}

A differenza dei [parametri posizionali](../positional-parameters), i parametri _nominati_ si riconoscono dal loro nome.

Questa funzione ha due parametri che si chiamano `$from` e `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Per chiamare questa funzione, devi scrivere i nomi degli argomenti:

```raku
say distance(from => 30, to => 10); # 20
```

Se passi gli argomenti come se fossero posizionali, ottieni un errore. Per esempio, la chiamata `distance(30, 10)` causa un errore:

    Troppi posizionali passati; previsti 0 argomenti ma ne sono stati ricevuti 2
        in sub distance at t.raku line 1
        in block <unit> at t.raku line 2

La cosa buona è che puoi elencare gli argomenti nominati in qualsiasi ordine. Le seguenti due chiamate sono esattamente uguali:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Passare variabili

A volte il valore che vuoi passare è in una variabile. La variabile può anche avere lo stesso nome del parametro. Allora puoi usare una sintassi speciale che ti fa scrivere di meno:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Questo è simile a una chiamata più lunga:

```raku
say distance(from => $from, to => $to); # 20
```

Anche in questo caso, l'ordine non importa:

```raku
say distance(:$to, :$from); # 20
```

Se la variabile e il parametro hanno nomi diversi, passa una coppia. Usa uno di questi modi:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# oppure:

say distance(:from($a), :to($b));
```

{% include nav.html %}
