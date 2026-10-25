---
title: 'Solution: Ако числото е в границите'
---

{% include menu.html %}

Програмата създава диапазон от числата, които въвежда потребителят. След това проверката със smartmatch тества дали третото число е в границите на диапазона. Тази проверка дава булева стойност, така че можем веднага да я отпечатаме.

## Код

Ето решението:

```raku
my $begin = prompt 'От (включително): ';
my $end = prompt 'До (изключително): ';

my $n = prompt 'Какво е числото? ';

say $n ~~ $begin ..^ $end;
```

🦋 Намерете програмата във файла [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Изход

Опитайте различни случаи, включително такъв, в който числото е равно на края на диапазона.

```console
$ raku exercises/ranges/number-in-limits.raku
От (включително): 1
До (изключително): 2
Какво е числото? 1.5
True

$ raku exercises/ranges/number-in-limits.raku
От (включително): 100
До (изключително): 200
Какво е числото? 100
True

$ raku exercises/ranges/number-in-limits.raku
От (включително): -5
До (изключително): -2
Какво е числото? -2
False
```

## Коментар

Обърнете внимание как диапазонът изключва десния си край: `$begin ..^ $end`.

{% include nav.html %}
