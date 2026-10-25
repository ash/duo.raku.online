---
title: Використання `repeat`
---

{% include menu.html %}

Блоки `while` та `until` можуть ніколи не виконатися, якщо умова на початку є `False`. Блок `repeat`, навпаки, завжди виконується хоча б один раз. Умова перевіряється після блоку коду. Для перевірки ви використовуєте ті самі слова `while` або `until`.

Подивіться на цю програму.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Змінна `$x` починає зі значення `100`, а умова `while` перевіряє, чи `$x` менше або дорівнює `10`. З таким значенням умова вже є `False`, але блок коду все одно спершу виконується один раз.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Давайте змінимо програму, щоб натомість використати `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Запустіть її, щоб перевірити, що вона працює як очікується:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
