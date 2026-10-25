---
title: 'Solution: Тройно отрицание'
---

{% include menu.html %}

Програмата от задачата не се компилира. Тя има нужда от малка поправка. Ето правилен вариант, който работи. В него има интервал между `!` и `!!`:

## Код

```raku
my $value = False;
say ! !!$value;
```

🦋 Можете да намерите пълния код във файла [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Резултат

Програмата отпечатва обратната булева стойност. Вероятно сте очаквали това:

```console
$ raku triple-negation.raku
True
```

## Коментари

Програмата с три удивителни знака не се компилира. Не очаквахме това:

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

Още един интервал решава този проблем. Но внимавайте. Не правете друга грешка. Вижте тази програма:

```raku
my $value = False;
say !!! $value;
```

Тази програма се компилира. Но после спира с това съобщение:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Защо се случва това? `!!!` е специален оператор. Той маркира част от кода като временен код. Временният код е код, който още не е готов. Ако програмата стигне до това място, тя спира. Тя също отпечатва съобщение. Тук съобщението е текущата стойност на променливата `$value`. Можете да прочетете повече в 📖 [документацията](https://docs.raku.org/routine/!!!).

{% include nav.html %}
