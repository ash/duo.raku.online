---
title: Liste
---

{% include menu.html %}

Le liste sono come gli array, ma sono immutabili. Non puoi cambiare la dimensione di una lista. Non puoi cambiare neanche i suoi elementi. Usa le parentesi tonde per creare una lista:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Indicizzare le liste

Per prendere un elemento di una lista, usa le parentesi quadre. Metti dentro l'indice:

```raku
say $odd[3]; # 7
```

Ma non puoi dare a un elemento un nuovo valore:

```raku
$odd[3] = 8; # Non OK
```

Se ci provi, ottieni un'eccezione:

    Cannot modify an immutable List ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Assegnare una lista a un array

Puoi salvare una lista in una variabile con il sigillo `@`. Che cosa succede allora?

```raku
my @data = (40, 42, 44);
```

Allora la variabile `@data` contiene un array. Puoi cambiarne gli elementi.

%%tipblock
## Variabile o lista

Una lista è immutabile. Ma puoi comunque usare di nuovo la sua variabile. Puoi metterci una nuova lista.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
