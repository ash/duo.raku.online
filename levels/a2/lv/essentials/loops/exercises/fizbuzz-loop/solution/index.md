---
title: 'Risinājums: FizzBuzz ciklā'
---

{% include menu.html %}

Šoreiz programma pārbauda katru skaitli ciklā. Tā neizdrukā vārdus uzreiz. Vispirms tā savāc tos atsevišķā mainīgajā. Tad tā ieliek šo mainīgo virknē.

## Kods

Šeit ir jaunais risinājums:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Atrodiet programmu failā [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Izvade

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Komentārs

Šim risinājumam ir viena maza problēma. Tas vienmēr izdrukā atstarpi pēc kola. Tas tā dara pat bez Fizz vai Buzz. Ļoti rūpīgam programmētājam tas nepatīk. Mainiet programmu un izlabojiet to.

{% include nav.html %}
