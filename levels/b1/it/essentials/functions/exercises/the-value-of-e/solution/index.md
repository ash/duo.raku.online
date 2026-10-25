---
title: 'Solution: Il valore di e'
---

{% include menu.html %}

## Disclaimer

Raku ha una costante predefinita `e`. Dà subito la risposta a questo compito. La soluzione qui sotto è solo per imparare.

## Codice

La formula di questo compito contiene un fattoriale. Abbiamo già almeno due modi per calcolarlo, e altri ne seguiranno. Il programma qui sotto definisce due funzioni. Una calcola il fattoriale, e l'altra calcola la somma parziale della formula.

La funzione deve funzionare anche senza argomenti. In quel caso, il ciclo viene eseguito un numero fisso di volte. Quindi possiamo dare al parametro un [valore predefinito](/it/essentials/functions/default-values): `sub e-approx($max = 100)`.

Nel codice, nota che le due funzioni costruiscono i loro risultati in modo simile. Usano un [ciclo `for` postfisso](/it/essentials/loops/postfix-for) su un [intervallo](/it/essentials/ranges).

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

Con 10 e 100 giri del ciclo, otteniamo questi risultati. Prova anche altri valori di `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
