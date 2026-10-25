---
title: 'Solution: Потрійне заперечення'
---

{% include menu.html %}

Програма із завдання не компілюється, тому їй потрібне невелике виправлення. Ось правильний робочий варіант (з доданим пробілом між `!` і `!!`):

## Код

```raku
my $value = False;
say ! !!$value;
```

🦋 Ви можете знайти повний код у файлі [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Вивід

Як ви, мабуть, і очікували, програма виводить протилежне булеве значення:

```console
$ raku triple-negation.raku
True
```

## Коментарі

Несподівано програма з трьома знаками оклику не скомпілювалася:

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

Один додатковий пробіл розв'язує цю проблему. Але не потрапте в іншу пастку. Подивіться на наступну програму:

```raku
my $value = False;
say !!! $value;
```

Ця програма компілюється, але зупиняється з наступним повідомленням:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Це відбувається тому, що `!!!` — спеціальний оператор. Він позначає частину коду як заглушку, тобто незавершений код. Якщо програма доходить до цього місця, вона зупиняється і виводить повідомлення. У нашому випадку повідомленням було поточне значення змінної `$value`. Більше подробиць можна знайти в 📖 [документації](https://docs.raku.org/routine/!!!).

{% include nav.html %}
