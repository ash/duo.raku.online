---
title: 'Решение: Цифровая лестница'
---

{% include menu.html %}

Программа использует два цикла и два диапазона.

## Код

Вот один способ это решить:

```raku
my $size = prompt 'Введите размер: ';

for 1..$size -> $n {
    .print for 1..$n;
    print "\n";
}
```

🦋 Найдите программу в файле [digital-stairs.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/digital-stairs.raku).

## Вывод

Запустите программу и введите размер:

```console
$ raku exercises/loops/digital-stairs.raku
Введите размер: 7
1
12
123
1234
12345
123456
1234567
```

## Комментарий

Посмотрите, как программа печатает каждую цифру:

```raku
.print for 1..$n;
```

Вы можете вызвать `print` как метод, так же как `say`. Здесь программа вызывает его на [переменной темы](/ru/essentials/loops/topic) `$_`.

{% include nav.html %}
