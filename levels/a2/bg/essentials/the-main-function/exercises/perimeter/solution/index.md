---
title: 'Solution: Периметър на правоъгълник'
---

{% include menu.html %}

Тази програма трябва да работи с един или два аргумента от командния ред. Решението показва нов трик. Втората променлива има стойност по подразбиране. Това е стойността на първата променлива: `sub MAIN($a, $b = $a)`. Така не създаваме две мулти-функции. Вместо това имаме една обща функция. За квадрат тази функция задава размера на втората страна.

## Код

Ето решението:

```raku
sub MAIN($a, $b = $a) {
    my $perimeter = 2 * ($a + $b);

    my $shape = $a == $b ?? 'square' !! 'rectangle';
    say "The perimeter of a $shape is $perimeter.";
}
```

🦋 Намерете програмата във файла [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Изход

Опитайте различни входни стойности. Тествайте и квадрати, и правоъгълници.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
The perimeter of a square is 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
The perimeter of a rectangle is 6.
```

Има и трети случай. Трябва да тествате и него. Подайте две равни числа. Програмата пак трябва да види, че това е квадрат:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
The perimeter of a square is 8.
```

{% include nav.html %}
