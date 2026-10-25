---
title: 'Solution: Perimetro di un rettangolo'
---

{% include menu.html %}

Questo programma deve poter accettare uno o due argomenti della riga di comando. La soluzione mostra un nuovo trucco. Il valore predefinito della seconda variabile è il valore della prima: `sub MAIN($a, $b = $a)`. Quindi, invece di due multi-funzioni, abbiamo una sola funzione generale. Se la figura è un quadrato, questa funzione imposta la misura del secondo lato.

## Codice

Ecco la soluzione:

```raku
sub MAIN($a, $b = $a) {
    my $perimetro = 2 * ($a + $b);

    my $forma = $a == $b ?? 'quadrato' !! 'rettangolo';
    say "Il perimetro di un $forma è $perimetro.";
}
```

🦋 Trova il programma nel file [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Output

Prova diversi valori di input per testare sia i quadrati che i rettangoli.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
Il perimetro di un quadrato è 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
Il perimetro di un rettangolo è 6.
```

Nota che c'è un terzo caso, che dovresti anche testare. Con due numeri uguali, il programma dovrebbe comunque capire che è un quadrato:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
Il perimetro di un quadrato è 8.
```

{% include nav.html %}
