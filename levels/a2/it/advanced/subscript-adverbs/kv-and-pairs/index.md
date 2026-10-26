---
title: Chiavi, valori e coppie
---

{% include menu.html %}

Altri avverbi cambiano **cosa** restituisce un accesso tramite indice. Di solito, l'accesso restituisce il valore. Questi avverbi restituiscono di più:

* `:v` — il valore; questo è il comportamento predefinito
* `:k` — la chiave o l'indice
* `:kv` — la chiave e il valore
* `:p` — una `Pair` della chiave e del valore

Per un array, la "chiave" è l'indice:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` restituisce l'indice e il valore insieme in una lista. `@a[1]:p` li restituisce come coppia.

Questo funziona anche con gli hash. È molto utile con una fetta. Una fetta ha più chiavi insieme:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Qui la fetta ha due chiavi. Il risultato è una chiave, il suo valore, la chiave dopo, il suo valore. `map`, `for` e strumenti simili usano spesso questi avverbi. Con loro puoi lavorare con chiavi e valori insieme. Non ti servono ricerche separate.

{% include nav.html %}
