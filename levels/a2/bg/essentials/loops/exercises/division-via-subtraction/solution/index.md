---
title: 'Solution: Деление чрез изваждане'
---

{% include menu.html %}

Делението е изваждане отново и отново. Програмата има цикъл `while`. Цикълът изважда `$b` от `$a`. Той повтаря това, докато `$a` не е по-малко от `$b`. Променливата `$n` брои колко пъти минава цикълът. Това число е и резултатът, който ни трябва.

## Код

Ето цялата програма:

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

Стартирайте програмата няколко пъти. Първо използвайте дадените стойности. Те се делят точно:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

След това опитайте други стойности. Например, променете `$b` на `20` и проверете, че резултатът е правилен:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
