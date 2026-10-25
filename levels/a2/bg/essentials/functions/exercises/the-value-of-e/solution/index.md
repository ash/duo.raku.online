---
title: 'Solution: Стойността на e'
---

{% include menu.html %}

## Отказ от отговорност

Raku вече има константа `e`. Тя веднага дава отговора на тази задача. Решението по-долу е само за учене.

## Код

Във формулата има факториел. Вече знаем поне два начина да намерим факториел. По-късно ще има още начини. Програмата по-долу има две функции. Едната функция намира факториела. Другата събира първите елементи на формулата.

Функцията трябва да работи и без аргументи. Тогава цикълът се повтаря определен брой пъти. Затова даваме на параметъра [стойност по подразбиране](/bg/essentials/functions/default-values): `sub e-approx($max = 100)`.

Погледнете кода. Двете функции изграждат резултата си по подобен начин. Всяка от тях има [`for` в края на ред](/bg/essentials/loops/postfix-for). Този цикъл минава през [диапазон](/bg/essentials/ranges).

Ето решението:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Намерете програмата във файла [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Резултат

Ето резултатите за 10 и 100 повторения на цикъла. Опитайте и други стойности на `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
