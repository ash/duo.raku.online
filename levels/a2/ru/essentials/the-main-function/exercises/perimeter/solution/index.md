---
title: 'Решение: Периметр прямоугольника'
---

{% include menu.html %}

Эта программа должна работать с одним или двумя аргументами командной строки. Решение показывает новый трюк. У второй переменной есть значение по умолчанию. Это значение первой переменной: `sub MAIN($a, $b = $a)`. Поэтому мы не создаём две мультифункции. Вместо этого у нас одна общая функция. Для квадрата эта функция задаёт размер второй стороны.

## Код

Вот решение:

```raku
sub MAIN($a, $b = $a) {
    my $perimeter = 2 * ($a + $b);

    my $shape = $a == $b ?? 'square' !! 'rectangle';
    say "Периметр $shape равен $perimeter.";
}
```

🦋 Найдите программу в файле [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Вывод

Попробуйте разные входные значения. Проверьте и квадраты, и прямоугольники.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
Периметр квадрата равен 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
Периметр прямоугольника равен 6.
```

Есть ещё третий случай. Его тоже нужно проверить. Передайте два равных числа. Программа всё равно должна понять, что это квадрат:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
Периметр квадрата равен 8.
```

{% include nav.html %}
