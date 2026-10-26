---
title: Liste
translations_gpt:
---

{% include menu.html %}

Anche una lista è una collezione ordinata di valori. Ma, a differenza di un array, è _immutabile_. Questo vuol dire che non puoi cambiare, aggiungere o togliere i suoi elementi. Scrivi una lista come valori con delle virgole tra loro, spesso tra parentesi:

```raku
my $colours = ('red', 'green', 'blue');
```

Puoi leggere gli elementi di una lista tramite il loro indice, come con un array. Puoi anche chiedere quanti sono:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Vedi la differenza quando provi a cambiare un elemento. Con un array funziona, perché ogni elemento è un contenitore:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Con una lista, ottieni un errore. Gli elementi di una lista sono solo valori, non contenitori:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Il secondo programma si ferma con un messaggio:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Quindi, usa un array, con il sigillo `@`, quando devi cambiarne il contenuto. Usa una lista quando devi solo tenere una sequenza fissa di valori.

{% include nav.html %}
