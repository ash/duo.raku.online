---
title: Chiavi, valori e coppie
---

{% include menu.html %}

Altri avverbi cambiano **cosa** restituisce un accesso tramite indice. Normalmente, l'accesso restituisce solo il valore, ma questi avverbi restituiscono di più:

* `:v` — il valore (il comportamento predefinito)
* `:k` — la chiave (o l'indice)
* `:kv` — sia la chiave che il valore
* `:p` — una `Pair` di chiave e valore

Per un array, la "chiave" è l'indice:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` dà l'indice e il valore insieme in una lista. `@a[1]:p` li dà come coppia.

Lo stesso funziona per gli hash. È particolarmente utile con una fetta di più chiavi insieme:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Qui una fetta di due chiavi restituisce ogni chiave seguita dal suo valore. `map`, `for` e strumenti simili si basano spesso su questi avverbi. Ti permettono di elaborare chiavi e valori fianco a fianco, senza ricerche separate.

{% include nav.html %}
