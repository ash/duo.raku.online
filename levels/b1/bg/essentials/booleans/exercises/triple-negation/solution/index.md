---
title: 'Solution: Тройно отрицание'
---

{% include menu.html %}

Програмата от задачата не се компилира, така че има нужда от малка поправка. Ето правилен вариант, който работи (с добавен интервал между `!` и `!!`):

## Код

```raku
my $value = False;
say ! !!$value;
```

🦋 Можете да намерите пълния код във файла [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Резултат

Както вероятно сте очаквали, програмата отпечатва обратната булева стойност:

```console
$ raku triple-negation.raku
True
```

## Коментари

Изненадващо, програмата с три удивителни знака не се компилира:

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

Един допълнителен интервал решава този проблем. Но не попадайте в друг капан. Вижте следната програма:

```raku
my $value = False;
say !!! $value;
```

Тази програма се компилира, но спира със следното съобщение:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Това се случва, защото `!!!` е специален оператор. Той маркира част от кода като временен код, тоест недовършен код. Ако програмата стигне до това място, тя спира и отпечатва съобщението. В нашия случай съобщението беше текущата стойност на променливата `$value`. Вижте 📖 [документацията](https://docs.raku.org/routine/!!!) за повече подробности.

{% include nav.html %}
