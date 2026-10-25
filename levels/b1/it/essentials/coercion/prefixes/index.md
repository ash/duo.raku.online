---
title: Conversione dei tipi con operatori prefissi
---

{% include menu.html %}

Un altro modo per cambiare il tipo di un oggetto è usare gli operatori prefissi. Sono operatori di un solo carattere. Li metti subito prima del valore (o di una variabile).

`~` | Coercizione a stringa
`+` | Coercizione numerica
`?` | Coercizione booleana

Ecco un esempio che crea un valore Booleano da un intero:

```raku
say ?42; # True
```

La conversione in una stringa è simile:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, poiché "-30" ha 3 caratteri
```

Nota che con la conversione numerica il tipo del risultato dipende dal numero. Confronta le seguenti conversioni da stringhe:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Per convertire in un valore Booleano, puoi usare anche una routine chiamata `so`. Funziona come operatore prefisso o come metodo:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
