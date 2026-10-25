---
title: 'Solutio: FizzBuzz in ansa'
---

{% include menu.html %}

Hoc tempore, probatio divisibilitatis in circulo fit. Pro verbis directe imprimendis, programma ea primum in variabili separata colligit et postea eam in chordam interpolat.

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

Solutor problematum valde severus hanc solutionem fortasse non perfectam putabit, quia spatium post colon imprimit etiam pro numeris qui nullum Fizz aut Buzz acceperunt. Muta programma ut hoc problema vites.

{% include nav.html %}
