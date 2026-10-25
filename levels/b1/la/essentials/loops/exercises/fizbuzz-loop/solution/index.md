---
title: 'Solutio: FizzBuzz in ansa'
---

{% include menu.html %}

Hoc tempore, programma divisibilitatem intra circulum probat. Verba non statim imprimit. Potius, ea primum in variabili separata colligit. Postea hanc variabilem in chordam inserit.

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

Programmatori valde diligenti haec solutio fortasse non placet. Semper spatium post colon imprimit, etiam sine Fizz aut Buzz. Muta programma ut hoc corrigas.

{% include nav.html %}
