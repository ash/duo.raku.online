---
title: '`gather` e `take`'
translations_gpt:
---

{% include menu.html %}

La coppia `gather` e `take` è un modo flessibile per costruire una lista. Metti del codice dentro un blocco `gather`. Ogni volta che questo codice chiama `take`, il valore va nella lista che `gather` restituisce.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Le tre chiamate a `take` danno tre valori, e `gather` li raccoglie in una lista. Questa lista viene salvata in `@result`.

La coppia è davvero forte quando le chiamate a `take` sono sparse nel codice normale. Un esempio è un ciclo con una condizione. Allora la lista contiene solo i valori che hai scelto di prendere:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Qui il ciclo scorre i numeri da 1 a 10. Ma vengono presi solo quelli pari. Così alla fine `@evens` contiene `2, 4, 6, 8, 10`. L'operatore `%%` controlla se un numero è divisibile in modo esatto.

Questa divisione del lavoro è ciò che rende `gather`/`take` così utile. Il codice intorno decide _quando_ produrre un valore. E `gather` raccoglie in silenzio tutto ciò che viene preso.

{% include nav.html %}
