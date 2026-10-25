---
title: 'Решение: Вывод серии чисел'
---

{% include menu.html %}

Эту задачу можно решить не одним способом.

## Код 1

Первое решение короче. Ещё оно больше в стиле Raku.

```raku
my $begin = prompt 'Начало: ';
my $end = prompt 'Конец: ';

.say for $begin .. $end;
```

🦋 Найдите программу в файле [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Код 2

Второе решение использует оператор `loop`.

```raku
my $begin = prompt 'Начало: ';
my $end = prompt 'Конец: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Найдите программу в файле [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Как видите, первый вариант гораздо короче. Ещё он яснее показывает идею.

## Обсуждение

Первый вариант использует [постфиксную форму цикла `for`](/ru/essentials/loops/postfix-for). В этой форме `for` стоит после оператора. Вторая программа использует `loop`.

## Вывод

Запустите программу. Введите два числа в консоли. Оба варианта выводят одинаковый результат.

```console
$ raku exercises/positionals/series-of-numbers.raku
Начало: 15
Конец: 19
15
16
17
18
19
```

{% include nav.html %}
