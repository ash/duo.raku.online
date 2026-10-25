---
title: 'Solution: Ділення через віднімання'
---

{% include menu.html %}

Ділення — це віднімання, знову і знову. Програма має цикл `while`. Щоразу цикл віднімає `$b` від `$a`. Він робить це, поки `$a` не менше за `$b`. Змінна `$n` рахує проходи. Це число — відповідь.

## Код

Ось уся програма:

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

Запустіть програму кілька разів. Почніть із чисел у коді. Вони діляться без остачі:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Потім спробуйте інші числа. Наприклад, змініть `$b` на `20`. Перевірте, що результат правильний:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
