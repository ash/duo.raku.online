---
title: 'Тест: Пары'
---

{% include menu.html %}

## 1

Допишите программу. Она должна вывести вот это:

    India
    New Delhi

Вот программа:

{:.quiz-code}
. | my $city = India => &apos;New Dehli&apos;;
key | say $city.␣␣␣␣;
value | say $city.␣␣␣␣;

## 2

Что напечатает эта программа?

```raku
my $data = 1 => 2;
say $data.WHAT;
```

{:.quiz-select}
(Pair) | Вывод: (: (Int), (Array), (Pair) :) | Это пара `Pair $data = 1 => 2`, где и ключ, и значение являются целыми числами.

{% include quiz.html %}

{% include nav.html %}
