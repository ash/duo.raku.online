---
title: 'Solution: Принтиране на серия от числа'
---

{% include menu.html %}

Можете да решите тази задача по повече от един начин.

## Код 1

Първото решение е по-кратко. То е и повече в стила на Raku.

```raku
my $begin = prompt 'Начало: ';
my $end = prompt 'Край: ';

.say for $begin .. $end;
```

🦋 Намерете програмата във файла [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Код 2

Второто решение използва оператора `loop`.

```raku
my $begin = prompt 'Начало: ';
my $end = prompt 'Край: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Намерете програмата във файла [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Както виждате, първият вариант е много по-кратък. Той също показва идеята по-ясно.

## Дискусия

Първият вариант използва [постфиксната форма на цикъла `for`](/bg/essentials/loops/postfix-for). В тази форма `for` идва след израза. Втората програма използва `loop`.

## Изход

Стартирайте програмата. Въведете двете числа в конзолата. И двата варианта отпечатват един и същ резултат.

```console
$ raku exercises/positionals/series-of-numbers.raku
Начало: 15
Край: 19
15
16
17
18
19
```

{% include nav.html %}
