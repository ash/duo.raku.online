---
title: Використання `repeat`
---

{% include menu.html %}

Блок `while` або `until` може ніколи не виконатися, якщо умова від самого початку є `False`. Блок `repeat`, навпаки, завжди виконується хоча б один раз. Його умову перевіряють після блоку. Для перевірки ви використовуєте ті самі слова, `while` або `until`.

Погляньте на цю програму.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Змінна `$x` починає зі значення `100`. Умова `while` перевіряє, чи `$x` менше або дорівнює `10`. З таким значенням умова вже є `False`, але блок усе одно спершу виконується один раз.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Тепер змінімо програму, щоб вона використовувала `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Запустіть її, щоб перевірити, що вона працює так, як ви очікуєте:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
