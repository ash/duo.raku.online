---
title: '`gather` e `take`'
translations_gpt:
---

{% include menu.html %}

`gather` e `take` lavorano in coppia. Con loro puoi costruire una lista in molti modi. Metti del codice in un blocco `gather`. Ogni volta che questo codice chiama `take`, un valore entra in una lista. Il blocco `gather` ti dà questa lista.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Le tre chiamate a `take` danno tre valori. `gather` li raccoglie in una lista. La lista va in `@result`.

La coppia è più utile quando le chiamate a `take` stanno dentro codice normale. Per esempio, possono stare in un ciclo con una condizione. Allora la lista ha solo i valori che prendi:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Qui il ciclo passa sui numeri da 1 a 10. Ma il codice prende solo i numeri pari. Così alla fine `@evens` contiene `2, 4, 6, 8, 10`. L'operatore `%%` controlla se un numero si divide senza resto.

Questa divisione del lavoro rende `gather`/`take` così utile. Il codice intorno a `take` decide _quando_ creare un valore. E `gather` raccoglie in silenzio ogni valore che prendi.

{% include nav.html %}
