---
title: 'Решение: Тройная инверсия'
---

{% include menu.html %}

Программа из задания не компилируется. Её нужно немного исправить. Вот правильный рабочий вариант. В нём есть пробел между `!` и `!!`:

## Код

```raku
my $value = False;
say ! !!$value;
```

🦋 Вы можете найти исходный код в файле [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Вывод

Программа выводит противоположное булево значение. Вы, наверное, этого и ожидали:

```console
$ raku triple-negation.raku
True
```

## Комментарии

Программа с тремя восклицательными знаками не компилируется. Мы этого не ожидали:

```console
$ raku triple-negation.raku
===SORRY!=== Error while compiling /Users/ash/raku-course/exercises/booleans/triple-negation.raku
Two terms in a row
at /Users/ash/raku-course/exercises/booleans/triple-negation.raku:2
------> say !!!⏏$value;
    expecting any of:
        infix
        infix stopper
        postfix
        statement end
        statement modifier
        statement modifier loop
```

Ещё один пробел решает эту проблему. Но будьте осторожны. Не ошибитесь снова. Посмотрите на эту программу:

```raku
my $value = False;
say !!! $value;
```

Эта программа компилируется. Но потом она останавливается с таким сообщением:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Почему так происходит? `!!!` — это специальный оператор. Он помечает часть кода как заглушку. Заглушка — это код, который ещё не готов. Если программа доходит до этого места, она останавливается. Она также выводит сообщение. Здесь сообщение — это текущее значение переменной `$value`. Больше вы можете прочитать в 📖 [документации](https://docs.raku.org/routine/!!!).

{% assign human=1 %}
{% include nav.html %}
