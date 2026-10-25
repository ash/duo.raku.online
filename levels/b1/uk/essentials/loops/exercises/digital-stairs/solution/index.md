---
title: 'Solution: Цифрові сходи'
---

{% include menu.html %}

Програма використовує два цикли та два діапазони.

## Код

Ось одне можливе рішення:

```raku
my $size = prompt 'Enter the size: ';

for 1..$size -> $n {
    .print for 1..$n;
    print "\n";
}
```

🦋 Знайдіть програму у файлі [digital-stairs.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/digital-stairs.raku).

## Вивід

Запустіть програму та введіть розмір фігури:

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

Зверніть увагу, як програма друкує поточну цифру:

```raku
.print for 1..$n;
```

Як і `say`, `print` також можна викликати як метод. Тут його викликають на [змінній теми](/uk/essentials/loops/topic) `$_`.

{% include nav.html %}
