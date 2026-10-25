---
title: 'Решение: Название числа'
---

{% include menu.html %}

В программе ниже есть свой массив с названиями чисел. В нём есть названия от 0 до 20. Ещё там есть названия десятков: 20, 30 и так далее. Потом идёт цепочка условных проверок. Они выбирают для числа правило записи.

## Код

```raku
my $n = @*ARGS[0];

my @names = <
    zero one two three four five six seven eight nine ten
    eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty
    thirty fourty fifty sixty seventy eighty ninety >;

if $n < 20 {
    say @names[$n];
}
elsif $n % 10 { # Двузначные неокругленные числа, например, 34
    say @names[$n / 10 + 18] ~ '-' ~ @names[$n % 10];
}
else { # Кратные 10, например, 50
    say @names[$n / 10 + 18];
}
```

🦋 Найдите программу в файле [spell-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/spell-a-number.raku).

## Пример

Запустите программу несколько раз. Проверьте все три ветви `if`—`elsif`—`else`.

```console
$ raku exercises/positionals/spell-a-number.raku 5
five

$ raku exercises/positionals/spell-a-number.raku 12
twelve

$ raku exercises/positionals/spell-a-number.raku 67
sixty-seven

$ raku exercises/positionals/spell-a-number.raku 80
eighty
```

{% include nav.html %}
