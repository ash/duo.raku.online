---
title: 'Solution: Друк ряду чисел'
---

{% include menu.html %}

Ви можете розв'язати цю задачу більш ніж одним способом.

## Код 1

Перший розв'язок коротший. Він також більше в стилі Raku.

```raku
my $begin = prompt 'Початок: ';
my $end = prompt 'Кінець: ';

.say for $begin .. $end;
```

🦋 Знайдіть програму у файлі [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Код 2

Другий розв'язок використовує оператор `loop`.

```raku
my $begin = prompt 'Початок: ';
my $end = prompt 'Кінець: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Знайдіть програму у файлі [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Як ви бачите, перший варіант набагато коротший. Він також показує ідею ясніше.

## Обговорення

Перший варіант використовує [постфіксну форму циклу `for`](/uk/essentials/loops/postfix-for). У цій формі `for` стоїть після оператора. Друга програма використовує `loop`.

## Вивід

Запустіть програму. Введіть два числа в консолі. Обидва варіанти виводять однаковий результат.

```console
$ raku exercises/positionals/series-of-numbers.raku
Початок: 15
Кінець: 19
15
16
17
18
19
```

{% include nav.html %}
