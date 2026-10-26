---
title: Тест — Динамични променливи
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Nothing
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`show` е на най-горното ниво. Тя е точно до `my $*n = 1`. Но това място няма значение. Raku търси динамичната променлива през *стека на извикванията*. Той не гледа къде е кодът. Тук `run` извиква `show`. А `run` декларира `$*n` отново като `2`. Така тази стойност е в сила и програмата отпечатва `2`.

</div>

{% include nav.html %}
