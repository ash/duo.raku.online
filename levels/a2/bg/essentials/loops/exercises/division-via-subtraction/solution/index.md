---
title: 'Solution: Деление чрез изваждане'
---

{% include menu.html %}

Делението е изваждане, отново и отново. Програмата има цикъл `while`. Всеки път цикълът изважда `$b` от `$a`. Той прави това, докато `$a` не е по-малко от `$b`. Променливата `$n` брои повторенията. Това число е отговорът.

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

Стартирайте програмата няколко пъти. Започнете с числата в кода. Те се делят без остатък:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

След това опитайте други числа. Например, променете `$b` на `20`. Проверете, че резултатът е правилен:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
