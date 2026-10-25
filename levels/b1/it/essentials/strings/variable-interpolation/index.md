---
title: Interpolazione delle variabili
---

{% include menu.html %}

Nelle sezioni precedenti, alcune stringhe erano tra virgolette singole e altre tra virgolette doppie. Lo hai notato? Questa differenza è molto importante.

Ovviamente, con le virgolette doppie è facile mettere una virgoletta singola dentro una stringa:

```raku
say "O'Henry";
```

A proposito, un apostrofo corretto è comunque meglio di una virgoletta singola. Dopotutto, [Raku è bravo con Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Ma il vero potere delle virgolette doppie è che possono _interpolare_ le variabili. Come vedremo presto, possono anche eseguire codice! Dai un'occhiata a questo programma:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

Come probabilmente ti aspetti, il programma stampa `Hello, Karl!`. Il valore della variabile ha sostituito il nome `$name`, insieme al suo sigillo `$`.

Il valore interpolato è il valore che la variabile ha al momento dell'interpolazione. Quindi, se cambi `$name` e la interpoli di nuovo, viene usato il nuovo valore. Facciamo una prova:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

Questa volta, la stessa stringa produce messaggi diversi:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
