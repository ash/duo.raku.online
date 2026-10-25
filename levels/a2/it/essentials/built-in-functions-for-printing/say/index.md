---
title: '`say`'
---

{% include menu.html %}

La routine incorporata `say` fa quattro cose:

1. Chiama il metodo `gist` sui suoi argomenti.
1. Aggiunge un carattere di nuova linea.
1. Converte il risultato in UTF-8.
1. Lo invia al flusso `STDOUT`.

Per l'utente, è semplice. `say` stampa il valore di una variabile nel terminale. Poi aggiunge una nuova linea.

Il primo passo ha bisogno di una spiegazione. Ogni tipo di dato incorporato ha un metodo `gist`. Gli interi e le stringhe sono esempi di questi tipi. Per questi tipi semplici, `gist` restituisce l'elemento come un valore facile da leggere.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Alcuni dati sono più complessi, per esempio gli array o gli hash. Per questi dati, `gist` aggiunge un po' di formattazione.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Puoi chiamare `say` come funzione. Puoi anche chiamarla come metodo:

```raku
say 42;
say(42);
42.say;
```

Puoi passare più di un argomento a `say`. Unisce le parti dell'output. Tra le parti non ci sono spazi.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
