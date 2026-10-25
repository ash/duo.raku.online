---
title: 'Solution: Ділення через віднімання'
---

{% include menu.html %}

Ділення — це віднімання знову і знову. Програма має цикл `while`. Цикл віднімає `$b` від `$a`. Він повторює це, поки `$a` не менше за `$b`. Змінна `$n` рахує проходи циклу. Це число — також результат, який нам потрібен.

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

Запустіть програму кілька разів. Спершу використайте задані значення. Вони діляться без остачі:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Потім спробуйте інші значення. Наприклад, змініть `$b` на `20` і перевірте, що результат правильний:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
