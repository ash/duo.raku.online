---
title: 'Solution: Цифрови стълби'
---

{% include menu.html %}

Програмата използва два цикъла и два диапазона.

## Код

Ето едно възможно решение:

```raku
my $size = prompt 'Enter the size: ';

for 1..$size -> $n {
    .print for 1..$n;
    print "\n";
}
```

🦋 Намерете програмата във файла [digital-stairs.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/digital-stairs.raku).

## Резултат

Стартирайте програмата и въведете размера:

```console
$ raku exercises/loops/digital-stairs.raku
Enter the size: 7
1
12
123
1234
12345
123456
1234567
```

## Коментар

Вижте как програмата отпечатва текущата цифра:

```raku
.print for 1..$n;
```

Както и `say`, можете да извикате `print` като метод. Тук го извикваме върху [променливата тема](/bg/essentials/loops/topic) `$_`.

{% include nav.html %}
