---
title: 'Solution: Ділення через віднімання'
---

{% include menu.html %}

Ділення — це просто віднімання, яке повторюють багато разів. Програма має цикл `while`, який віднімає `$b` від `$a`. Він повторює це, поки `$a` ще не менше за `$b`. Змінна `$n` рахує проходи циклу. Ця кількість — також результат.

## Код

Ось повна програма:

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

🦋 Знайдіть програму у файлі [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Вивід

Запустіть програму кілька разів. Почніть із заданих значень, які діляться без остачі:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Потім спробуйте інші значення. Наприклад, задайте для `$b` значення `20` і перевірте, чи правильний результат:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
