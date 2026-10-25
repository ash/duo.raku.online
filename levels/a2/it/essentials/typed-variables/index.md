---
title: Variabili tipizzate
---

{% include menu.html %}

In Raku, una variabile scalare, o contenitore scalare, contiene un oggetto. Questo oggetto può essere di tipi diversi. Per esempio, la stessa variabile può contenere prima un numero. Poi può contenere una stringa:

```raku
my $var = 42;
$var = 'Hello';
```

Ecco un altro esempio. Un'espressione contiene tipi di dati diversi:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Questo probabilmente non è un buon modo di scrivere codice. Ma è un programma Raku del tutto corretto.

Ma Raku ti permette anche di dire cosa può contenere una variabile. Gli argomenti qui sotto ti dicono di più.

{% include nav.html %}
