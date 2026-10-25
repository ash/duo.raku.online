---
title: 'Solution: Stampa di una serie di numeri'
---

{% include menu.html %}

Puoi risolvere questo problema in più di un modo.

## Codice 1

La prima soluzione è più corta. È anche più nello stile di Raku.

```raku
my $begin = prompt 'Inizio: ';
my $end = prompt 'Fine: ';

.say for $begin .. $end;
```

🦋 Trova il programma nel file [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Codice 2

La seconda soluzione usa l'istruzione `loop`.

```raku
my $begin = prompt 'Inizio: ';
my $end = prompt 'Fine: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Trova il programma nel file [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Come vedi, la prima variante è molto più corta. Mostra anche l'idea in modo più chiaro.

## Discussione

La prima variante usa la [forma postfissa del ciclo `for`](/it/essentials/loops/postfix-for). In questa forma, `for` viene dopo l'istruzione. Il secondo programma usa `loop`.

## Output

Esegui il programma. Inserisci i due numeri nella console. Tutte e due le varianti stampano lo stesso risultato.

```console
$ raku exercises/positionals/series-of-numbers.raku
Inizio: 15
Fine: 19
15
16
17
18
19
```

{% include nav.html %}
