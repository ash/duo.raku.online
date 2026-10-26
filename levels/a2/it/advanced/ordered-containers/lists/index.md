---
title: Liste
translations_gpt:
---

{% include menu.html %}

Anche una lista è una collezione ordinata di valori. Ma non è come un array. Una lista è _immutabile_. Non puoi cambiare i suoi elementi. Non puoi neanche aggiungere o togliere elementi. Per scrivere una lista, metti delle virgole tra i valori. Spesso intorno ci sono delle parentesi:

```raku
my $colours = ('red', 'green', 'blue');
```

Puoi leggere gli elementi di una lista con il loro indice. Puoi anche chiedere quanti elementi ci sono. È come con un array:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Ora prova a cambiare un elemento. Qui vedi la differenza. Con un array funziona. Ogni elemento di un array è un contenitore:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Con una lista, ottieni un errore. Gli elementi di una lista sono solo valori. Non sono contenitori:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Il secondo programma si ferma. Stampa questo messaggio:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Quindi, devi cambiare i dati? Allora usa un array, con il sigillo `@`. Devi solo tenere alcuni valori in un ordine fisso? Allora usa una lista.

{% include nav.html %}
