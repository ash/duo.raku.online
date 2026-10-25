---
title: 'Solutio: FizzBuzz in ansa'
---

{% include menu.html %}

Hoc tempore, programma divisibilitatem in circulo probat. Verba non statim imprimit. Primum, ea in variabili separata colligit. Postea, hanc variabilem in chordam ponit.

## Codex

Hic est nova solutio:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Inveni codicem fontem in archivo [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Exitus

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Commentarium

Programmatori valde diligenti haec solutio fortasse non placet. Spatium post colon imprimit, etiam pro numeris sine Fizz aut Buzz. Muta programma ut hoc problema corrigas.

{% include nav.html %}
