---
title: 'Решение: Периметр прямоугольника'
---

{% include menu.html %}

Эта программа должна уметь принимать один или два аргумента командной строки. Решение показывает новый трюк. Значение по умолчанию у второй переменной — это значение первой: `sub MAIN($a, $b = $a)`. Поэтому вместо двух мультифункций у нас есть одна общая функция. Если фигура — квадрат, эта функция задаёт размер второй стороны.

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

Попробуйте разные входные значения, чтобы протестировать как квадраты, так и прямоугольники.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
Периметр квадрата равен 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
Периметр прямоугольника равен 6.
```

Обратите внимание, что есть третий случай, который тоже нужно проверить. С двумя равными числами программа всё равно должна понять, что это квадрат:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
Периметр квадрата равен 8.
```

{% include nav.html %}
