---
title: 'Solution: Потрійне заперечення'
---

{% include menu.html %}

Програма із завдання не компілюється. Їй потрібне невелике виправлення. Ось правильний варіант, який працює. У ньому є пробіл між `!` і `!!`:

## Код

```raku
my $value = False;
say ! !!$value;
```

🦋 Ви можете знайти повний код у файлі [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Вивід

Програма виводить протилежне булеве значення. Ви, мабуть, цього й очікували:

```console
$ raku triple-negation.raku
True
```

## Коментарі

Програма з трьома знаками оклику не компілюється. Ми цього не очікували:

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

Ще один пробіл розв'язує цю проблему. Але будьте уважні. Не зробіть іншої помилки. Подивіться на цю програму:

```raku
my $value = False;
say !!! $value;
```

Ця програма компілюється. Але потім вона зупиняється з таким повідомленням:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Чому так стається? `!!!` — це спеціальний оператор. Він позначає частину коду як заглушку. Заглушка — це код, який ще не готовий. Якщо програма доходить до цього місця, вона зупиняється. Вона також виводить повідомлення. Тут повідомлення — це поточне значення змінної `$value`. Більше можна прочитати в 📖 [документації](https://docs.raku.org/routine/!!!).

{% include nav.html %}
