---
title: Numeri razionali
---

{% include menu.html %}

I numeri razionali sono una caratteristica unica di Raku. Il loro tipo di dato è `Rat`.

Dentro Raku, un numero razionale è una frazione. Ha due parti intere. Il numeratore sta sopra e il denominatore sta sotto. Così puoi salvare facilmente numeri come 1/3. Restano esatti.

Ci sono alcuni modi per scrivere un numero `Rat` in Raku:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Nota che qui la barra fa parte del modo di scrivere il numero. Non è un operatore di divisione. Quindi `1/2` non vuol dire ‘dividi 1 per 2’. Ma Raku stampa i numeri razionali come numeri decimali o interi:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Il testo dopo il simbolo `#` è un commento. Il compilatore lo ignora. Nel corso, questi commenti mostrano l'output del programma.

## Forma decimale

Questo è importante da sapere. Puoi scrivere un numero in forma decimale, per esempio, `0.5`. Allora Raku crea un numero `Rat`. Non è un intero. Ma non è nemmeno un numero a virgola mobile. Altri linguaggi chiamano questi numeri `float` o `double`. È comunque un numero razionale!

Guarda questo esempio:

```raku
say 0.1 + 0.2 - 0.3;
```

Un linguaggio di programmazione può usare l'aritmetica a virgola mobile per questi calcoli. Allora il risultato non è 0. Il sito [0.30000000000000004.com](https://0.30000000000000004.com) ha una lista completa di esempi così. In questi esempi, l'aritmetica a virgola mobile non dà il risultato che ti aspetti.

Ma Raku stampa esattamente `0`. Perché? Raku vede `0.1`, `0.2` e `0.3` come numeri razionali. Dentro, li tiene come `1/10`, `2/10` e `3/10`. Esegui il codice dalla riga di comando e controlla:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Forme Unicode

Puoi anche usare i caratteri Unicode per le frazioni, come `½`, `¼` o `¾`. Forse non sono sempre facili da scrivere con la tastiera. Ma hanno esattamente gli stessi valori delle loro versioni ASCII. Una versione ASCII può essere una frazione o un numero decimale:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Alcune frazioni, come `1/3`, hanno meno forme: solo `⅓` o `<1/3>`. Una forma decimale per loro non funziona. Ha bisogno di un numero infinito di cifre.

{% include nav.html %}
