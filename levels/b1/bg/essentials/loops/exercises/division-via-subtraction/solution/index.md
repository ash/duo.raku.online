---
title: 'Solution: Деление чрез изваждане'
---

{% include menu.html %}

Делението е просто изваждане, направено много пъти. Програмата има цикъл `while`, който изважда `$b` от `$a`. Той повтаря това, докато `$a` все още не е по-малко от `$b`. Променливата `$n` брои повторенията на цикъла. Този брой е и резултатът.

## Код

Ето пълната програма:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Намерете програмата във файла [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Резултат

Стартирайте програмата няколко пъти. Започнете с дадените стойности, които се делят точно:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

След това опитайте други стойности. Например, задайте на `$b` стойност `20` и проверете, че резултатът е правилен:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
