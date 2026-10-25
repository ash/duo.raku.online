---
title: 'Solutio: FizzBuzz in ansa'
---

{% include menu.html %}

Hoc tempore, programma quemque numerum in circulo probat. Verba non statim imprimit. Primum, ea in variabili separata colligit. Deinde hanc variabilem in chordam ponit.

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

Haec solutio unum parvum problema habet. Semper spatium post colon imprimit. Hoc facit etiam sine Fizz aut Buzz. Programmatori valde diligenti hoc non placet. Muta programma et id corrige.

{% include nav.html %}
