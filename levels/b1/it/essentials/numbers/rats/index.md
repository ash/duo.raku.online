---
title: Numeri razionali
---

{% include menu.html %}

I numeri razionali sono una caratteristica unica di Raku. Hanno un loro tipo di dato, `Rat`.

Internamente, un numero razionale è una frazione. Ha due parti intere, il numeratore e il denominatore. Questo vuol dire che numeri come 1/3 si possono salvare in modo esatto.

Ci sono diversi modi per scrivere un numero `Rat` in un programma Raku:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Nota che qui la barra fa parte del modo in cui si scrive il numero. Non è un operatore di divisione. Quindi `1/2` non significa che dividi 1 per 2. Però, quando stampi i numeri razionali, sembrano numeri decimali o interi:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Tutto quello che c'è dopo il simbolo `#` su una riga è un commento, che il compilatore ignora. In questo corso, useremo questi commenti per mostrare che cosa stampa il programma.

## Forma decimale

È importante capire questo. Se scrivi un numero in forma decimale, come `0.5`, Raku crea un numero `Rat`. Non è un intero, e non è nemmeno un numero a virgola mobile. In altri linguaggi, questi numeri si chiamano `float` o `double`. È comunque un numero razionale!

Dai un'occhiata al seguente esempio:

```raku
say 0.1 + 0.2 - 0.3;
```

Se un linguaggio usa qui l'aritmetica a virgola mobile, il risultato non sarà 0. Il sito [0.30000000000000004.com](https://0.30000000000000004.com) ha una lista completa di esempi. In tutti questi esempi, l'aritmetica a virgola mobile non dà il risultato atteso.

Ma Raku stampa uno `0` esatto. Questo succede perché tratta `0.1`, `0.2` e `0.3` come numeri razionali. Internamente, li tiene come `1/10`, `2/10` e `3/10`. Eseguilo dalla riga di comando per controllare:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Forme Unicode

Puoi anche usare i caratteri Unicode per le frazioni, come `½`, `¼` o `¾`. Probabilmente non sono sempre facili da digitare con la tastiera. Ma queste frazioni hanno esattamente gli stessi valori delle loro versioni ASCII. Queste si possono scrivere come frazione o come numero decimale:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Per alcune frazioni, come `1/3`, hai meno scelte: `⅓` o `<1/3>`. Questo perché la forma decimale avrebbe bisogno di un numero infinito di cifre.

{% include nav.html %}
