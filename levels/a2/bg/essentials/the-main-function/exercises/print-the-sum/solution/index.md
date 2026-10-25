---
title: 'Solution: Принтирайте сумата'
---

{% include menu.html %}

Програмата има само една функция, `MAIN`. Тя приема два аргумента с типове. И двата аргумента получават стойностите си от командния ред.

## Код

Ето решението:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Намерете програмата във файла [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Изход

Опитайте различни числа:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Можете също да стартирате програмата без аргументи. Или можете да използвате аргументи от други типове. Вижте какво се случва. Втората част на курса показва как да обработваме такива случаи.

{% include nav.html %}
