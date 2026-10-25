---
title: 'Решение: Тройная инверсия'
---

{% include menu.html %}

Программа из задания не компилируется, поэтому её нужно немного исправить. Вот правильный вариант, который работает (мы добавили пробел между `!` и `!!`):

## Код

```raku
my $value = False;
say ! !!$value;
```

🦋 Вы можете найти исходный код в файле [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Вывод

Как вы, наверное, и ожидали, программа выводит противоположное булево значение:

```console
$ raku triple-negation.raku
True
```

## Комментарии

Неожиданно программа с тремя восклицательными знаками не скомпилировалась:

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

Один дополнительный пробел решает эту проблему. Но не попадитесь в другую ловушку. Посмотрите на следующую программу:

```raku
my $value = False;
say !!! $value;
```

Эта программа компилируется, но останавливается со следующим сообщением:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Так происходит, потому что `!!!` — это специальный оператор. Он помечает часть кода как заглушку, то есть незаконченный код. Если программа доходит до этого места, она останавливается и выводит сообщение. В нашем случае сообщением было текущее значение переменной `$value`. Подробнее об этом написано в 📖 [документации](https://docs.raku.org/routine/!!!).

{% assign human=1 %}
{% include nav.html %}
