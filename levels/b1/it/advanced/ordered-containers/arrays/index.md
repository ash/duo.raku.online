---
title: Array
translations_gpt:
---

{% include menu.html %}

Un array è un contenitore ordinato, e anche i suoi elementi sono contenitori scalari.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

Il sigillo `@` vuol dire che una variabile così si comporta come un oggetto `Positional`. Così puoi usare gli indici per leggere i singoli elementi:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Ogni elemento è un contenitore scalare, quindi puoi assegnargli un nuovo valore. Lo fai come con una variabile scalare separata:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Puoi anche assegnare un valore di un altro tipo, per esempio:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

È questo che rende gli array _mutabili_, cioè modificabili. Ogni posizione è un contenitore che può ricevere un nuovo valore. Nel prossimo argomento, vedrai che le [liste](/it/advanced/ordered-containers/lists) si comportano in modo diverso.

{% include nav.html %}
