---
title: 'Solution: Perimetro di un rettangolo'
---

{% include menu.html %}

Questo programma deve funzionare con uno o due argomenti della riga di comando. La soluzione mostra un nuovo trucco. La seconda variabile ha un valore predefinito. È il valore della prima variabile: `sub MAIN($a, $b = $a)`. Quindi non creiamo due multi-funzioni. Invece, abbiamo una sola funzione generale. Per un quadrato, questa funzione imposta la misura del secondo lato.

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

Prova diversi valori di input. Testa sia i quadrati sia i rettangoli.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
Il perimetro di un quadrato è 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
Il perimetro di un rettangolo è 6.
```

C'è anche un terzo caso. Dovresti testare anche questo. Passa due numeri uguali. Il programma deve comunque vedere che è un quadrato:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
Il perimetro di un quadrato è 8.
```

{% include nav.html %}
