---
title: Contenitori scalari
translations_gpt:
---

{% include menu.html %}

Come dice il nome, i contenitori scalari conservano valori singoli, o scalari. Questi contenitori hanno il sigillo `$`.

Ecco un modo molto semplice e diretto di usare uno scalare:

```raku
my $lang = 'Raku';
```

La variabile `$lang` è un contenitore scalare.

Di default, i contenitori scalari non limitano il tipo dei loro dati. Quindi potete metterci un valore di qualsiasi tipo. Ecco il modo più semplice per mostrarlo. Potete usare la stessa variabile per un intero e poi per una stringa:

```raku
my $value = 42;
$value = 'forty-two';
```

L'autore non vi incoraggia a scrivere programmi in questo modo.

Internamente, questo vuol dire quanto segue. Di default, un nuovo contenitore può contenere valori del tipo `Any`. `Any` è il tipo base della maggior parte degli altri tipi, come `Int` o `Str`.

{% include nav.html %}
