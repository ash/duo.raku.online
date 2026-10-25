---
title: 'Розв''язання: Кількість аргументів командного рядка'
---

{% include menu.html %}

Ми знову отримуємо кількість аргументів з `@*ARGS.elems`. Але цього разу ми не просто виводимо її. Нам треба зробити з нею більше. Збережіть кількість у змінній. Потім виберіть потрібне слово тернарним оператором:

## Код

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Знайдіть програму у файлі [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Вивід

Перевірте три цікаві випадки: жодного аргументу, один аргумент і багато аргументів. Лише другий випадок використовує форму однини, `argument`.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}
