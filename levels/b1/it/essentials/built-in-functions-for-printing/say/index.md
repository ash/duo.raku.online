---
title: '`say`'
---

{% include menu.html %}

Ecco cosa fa la routine incorporata `say`:

1. Chiama il metodo `gist` sui suoi argomenti.
1. Aggiunge un carattere di nuova linea.
1. Converte il risultato in UTF-8.
1. Lo invia al flusso `STDOUT`.

Per l'utente, sembra semplice. `say` stampa semplicemente il contenuto di una variabile sul terminale e aggiunge una nuova linea.

Il primo passo ha bisogno di qualche spiegazione. Ogni tipo di dato incorporato, come gli interi o le stringhe, ha un metodo `gist`. Per questi tipi semplici, restituisce un valore che rappresenta l'elemento. Le persone possono leggere facilmente questo valore.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Array e hash sono esempi di dati più complessi. Per questi dati, il metodo `gist` aggiunge un po' di formattazione.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Puoi chiamare `say` sia come funzione sia come metodo:

```raku
say 42;
say(42);
42.say;
```

Puoi passare diversi argomenti a `say`. Unisce le parti dell'output senza nessuno spazio tra loro.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
