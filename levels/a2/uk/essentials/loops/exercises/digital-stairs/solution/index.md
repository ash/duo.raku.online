---
title: 'Solution: Цифрові сходи'
---

{% include menu.html %}

Програма використовує два цикли та два діапазони.

## Код

Ось один спосіб розв'язати завдання:

```raku
my $size = prompt 'Enter the size: ';

for 1..$size -> $n {
    .print for 1..$n;
    print "\n";
}
```

🦋 Знайдіть програму у файлі [digital-stairs.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/digital-stairs.raku).

## Вивід

Запустіть програму та введіть розмір:

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

Подивіться, як програма друкує кожну цифру:

```raku
.print for 1..$n;
```

Ви можете викликати `print` як метод, як і `say`. Тут програма викликає його на [змінній теми](/uk/essentials/loops/topic) `$_`.

{% include nav.html %}
