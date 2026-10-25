---
title: 'Solution: Принтиране на серия от числа'
---

{% include menu.html %}

Има повече от един начин да решите тази задача.

## Код 1

Първото решение е по-кратко и по-типично за Raku.

```raku
my $begin = prompt 'Начало: ';
my $end = prompt 'Край: ';

.say for $begin .. $end;
```

🦋 Намерете програмата във файла [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Код 2

Второ възможно решение използва оператора `loop`.

```raku
my $begin = prompt 'Начало: ';
my $end = prompt 'Край: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Намерете програмата във файла [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Както виждате, първият вариант е много по-кратък и показва идеята по-ясно.

## Дискусия

Първият вариант на програмата използва [постфиксната форма на цикъла `for`](/bg/essentials/loops/postfix-for). Втората програма използва цикъл `loop`.

## Изход

Стартирайте програмата и въведете двете числа в конзолата. И двата варианта дават един и същ изход.

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
