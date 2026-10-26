---
title: Appiattimento e itemizzazione
translations_gpt:
---

{% include menu.html %}

Se metti un array dentro un altro, Raku _non_ unisce da solo i loro elementi. Guarda questo programma:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

L'array `@c` ha solo due elementi, gli array `@a` e `@b`. Raku tiene ogni contenitore come un solo elemento. Non svuota il suo contenuto nell'array esterno. Lo stesso succede quando metti un array tra altri valori:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Se vuoi davvero una sola sequenza piatta, chiedila direttamente con la routine `flat`:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemizzazione (Itemization)

A volte vuoi il contrario. Vuoi proteggere un contenitore dall'appiattimento, anche dentro `flat`. Il costrutto `$(...)` _itemizza_ il suo argomento. Vuol dire che segna il risultato come un singolo elemento. Confronta l'esempio precedente con questo:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Qui `$(@a)` tiene `@a` come un solo elemento. Ma `@b` viene comunque appiattito nei suoi due valori. Questa è di nuovo l'idea del sigillo `$`. Un `$` significa "tratta questo come una singola cosa".

{% include nav.html %}
