---
title: 'Solution: Il valore di e'
---

{% include menu.html %}

## Disclaimer

Raku ha già una costante `e`. Dà subito la risposta a questo compito. La soluzione qui sotto serve solo per imparare.

## Codice

Nella formula c'è un fattoriale. Conosciamo già almeno due modi per calcolare un fattoriale. Altri modi arrivano più avanti. Il programma qui sotto ha due funzioni. Una funzione calcola il fattoriale. L'altra somma i primi elementi della formula.

La funzione deve funzionare anche senza argomenti. Allora il ciclo gira un numero fisso di volte. Quindi diamo al parametro un [valore predefinito](/it/essentials/functions/default-values): `sub e-approx($max = 100)`.

Guarda il codice. Le due funzioni costruiscono il loro risultato in modo simile. Ognuna ha un [`for` alla fine di una riga](/it/essentials/loops/postfix-for). Questo ciclo percorre un [intervallo](/it/essentials/ranges).

Ecco la soluzione:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Trova il programma nel file [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Output

Ecco i risultati per 10 e 100 giri del ciclo. Prova anche altri valori di `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
