---
title: Variabili tipizzate
---

{% include menu.html %}

In Raku, una variabile scalare (o un contenitore scalare) contiene un singolo oggetto. Questo oggetto può essere di tipi diversi. Per esempio, la stessa variabile può contenere prima un numero e poi una stringa:

```raku
my $var = 42;
$var = 'Hello';
```

Ecco un altro esempio, che mescola tipi di dati diversi in un'espressione:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Questo probabilmente non è il modo migliore di scrivere codice. Ma è un programma Raku perfettamente corretto.

Però Raku ti permette di scegliere cosa può contenere una variabile. Troverai più dettagli negli argomenti qui sotto.

{% include nav.html %}
