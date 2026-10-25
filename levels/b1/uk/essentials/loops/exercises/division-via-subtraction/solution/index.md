---
title: 'Solution: Ділення через віднімання'
---

{% include menu.html %}

Ділення — це повторне віднімання. Програма має цикл `while`, який віднімає `$b` від `$a` і повторює це, поки поточне значення `$a` не менше за `$b`. Змінна `$n` рахує ітерації, і це також результат, який нам потрібен.

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

Потім спробуйте, наприклад, змінити `$b` на `20` і перевірте, що результат правильний:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
