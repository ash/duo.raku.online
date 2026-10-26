---
title: Array
translations_gpt:
---

{% include menu.html %}

Un array è un contenitore ordinato. Anche ogni elemento di un array è un contenitore scalare.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

Il sigillo `@` mostra che la variabile funziona come un oggetto `Positional`. Così puoi prendere ogni elemento con il suo indice:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Ogni elemento è un contenitore scalare. Così puoi assegnargli un nuovo valore. Funziona proprio come una normale variabile scalare:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Puoi anche assegnare un valore di un altro tipo. Per esempio:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Per questo gli array sono _mutabili_. Questo vuol dire che puoi cambiarli. Ogni posto in un array è un contenitore. Può ricevere un nuovo valore. Le [liste](/it/advanced/ordered-containers/lists) sono diverse. Lo vedrai nel prossimo argomento.

{% include nav.html %}
