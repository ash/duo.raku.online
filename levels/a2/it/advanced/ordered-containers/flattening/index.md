---
title: Appiattimento e itemizzazione
translations_gpt:
---

{% include menu.html %}

Puoi mettere un array dentro un altro. Raku _non_ unisce da solo i loro elementi. Guarda questo programma:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

L'array `@c` ha solo due elementi: gli array `@a` e `@b`. Raku tiene ogni contenitore come un solo elemento. I suoi elementi non vanno nell'array esterno. Succede lo stesso con un array tra altri valori:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Vuoi una sola sequenza piatta? Allora chiedila con la routine `flat`:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemizzazione (Itemization)

A volte vuoi il contrario. Vuoi tenere un contenitore in un solo pezzo, anche dentro `flat`. Il costrutto `$(...)` _itemizza_ il suo argomento. Questo vuol dire che segna il risultato come un solo elemento. Confronta l'esempio di prima con questo:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Qui `$(@a)` tiene `@a` come un solo elemento. Ma `@b` diventa comunque piatto. Dà i suoi due valori. Questa è di nuovo l'idea del sigillo `$`. Un `$` vuol dire "tratta questo come una sola cosa".

{% include nav.html %}
