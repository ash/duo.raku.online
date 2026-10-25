---
title: 'Solution: Друк ряду чисел'
---

{% include menu.html %}

Є більше одного способу розв'язати цю задачу.

## Код 1

Перший розв'язок коротший і більш типовий для Raku.

```raku
my $begin = prompt 'Початок: ';
my $end = prompt 'Кінець: ';

.say for $begin .. $end;
```

🦋 Знайдіть програму у файлі [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Код 2

Другий можливий розв'язок використовує оператор `loop`.

```raku
my $begin = prompt 'Початок: ';
my $end = prompt 'Кінець: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Знайдіть програму у файлі [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Як ви бачите, перший варіант набагато коротший і ясніше показує ідею.

## Обговорення

Перший варіант програми використовує [постфіксну форму циклу `for`](/uk/essentials/loops/postfix-for). Друга програма використовує цикл `loop`.

## Вивід

Запустіть програму і введіть два числа в консолі. Обидва варіанти дають однаковий результат.

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
