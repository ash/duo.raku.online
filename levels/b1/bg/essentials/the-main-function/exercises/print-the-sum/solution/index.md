---
title: 'Solution: Принтирайте сумата'
---

{% include menu.html %}

Програмата има само една функция `MAIN`. Тя приема два типизирани аргумента. И двата се създават от аргументите от командния ред.

## Код

Ето решението:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Намерете програмата във файла [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Изход

Опитайте различни входни числа:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Можете също да стартирате програмата без аргументи или с аргументи от други типове. Вижте какво ще се случи тогава. За обработката на такива случаи ще говорим във втората част на курса.

{% include nav.html %}
