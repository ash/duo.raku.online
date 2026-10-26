---
title: Contenitori scalari
translations_gpt:
---

{% include menu.html %}

I contenitori scalari conservano valori singoli, o scalari. Lo dice il nome. Questi contenitori hanno il sigillo `$`.

Ecco un uso molto semplice di uno scalare:

```raku
my $lang = 'Raku';
```

La variabile `$lang` è un contenitore scalare.

Di default, un contenitore scalare non limita il tipo dei dati. Così potete metterci un valore di qualsiasi tipo. Ecco l'esempio più semplice. Prima una variabile contiene un intero. Poi la stessa variabile contiene una stringa:

```raku
my $value = 42;
$value = 'forty-two';
```

L'autore non consiglia di scrivere codice così.

Dentro Raku, questo vuol dire una cosa. Di default, un nuovo contenitore può contenere valori del tipo `Any`. `Any` è il tipo base per quasi tutti gli altri tipi. Per esempio, `Int` e `Str` vengono da `Any`.

{% include nav.html %}
