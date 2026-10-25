---
title: Liste
---

{% include menu.html %}

Le liste sono simili agli array, ma sono immutabili. Questo vuol dire che non puoi cambiare la dimensione o gli elementi di una lista. Per creare una lista, usa le parentesi tonde:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Sottoscrivere le liste

Per ottenere un singolo elemento di una lista, usa le parentesi quadre con l'indice:

```raku
say $odd[3]; # 7
```

Però non puoi impostare un nuovo valore:

```raku
$odd[3] = 8; # Non OK
```

Se provi a farlo, ottieni un'eccezione:

    Cannot modify an immutable List ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Assegnare una lista a un array

Cosa succede se salvi una lista in una variabile che ha il sigillo `@`?

```raku
my @data = (40, 42, 44);
```

In questo caso, la variabile `@data` contiene un array, quindi puoi cambiarne gli elementi.

%%tipblock
## Variabile vs lista

Nota che le liste sono immutabili. Ma puoi comunque riusare la variabile che contiene la lista.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
