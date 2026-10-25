---
title: 'Solution: Stampa di una serie di numeri'
---

{% include menu.html %}

C'è più di un modo per risolvere questo problema.

## Codice 1

La prima soluzione è più corta e più tipica di Raku.

```raku
my $begin = prompt 'Inizio: ';
my $end = prompt 'Fine: ';

.say for $begin .. $end;
```

🦋 Trova il programma nel file [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Codice 2

Una seconda soluzione possibile usa l'istruzione `loop`.

```raku
my $begin = prompt 'Inizio: ';
my $end = prompt 'Fine: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Trova il programma nel file [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Come vedi, la prima variante è molto più corta e mostra l'idea in modo più chiaro.

## Discussione

La prima variante del programma usa la [forma postfissa del ciclo `for`](/it/essentials/loops/postfix-for). Il secondo programma usa un `loop`.

## Output

Esegui il programma e inserisci i due numeri nella console. Entrambe le varianti danno lo stesso output.

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
