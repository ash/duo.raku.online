---
title: Використання `repeat`
---

{% include menu.html %}

Іноді блок `while` або `until` узагалі не виконується. Це буває, коли умова на початку є `False`. Блок `repeat` інший: він завжди виконується хоча б один раз. Raku перевіряє умову після блоку. Для перевірки ви використовуєте ті самі слова, `while` або `until`.

Подивіться на цю програму.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

На початку змінна `$x` дорівнює `100`. Умова `while` перевіряє, чи `$x` менше або дорівнює `10`. З цим значенням умова вже є `False`. Але блок коду все одно спочатку виконується.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Тепер змінімо програму і використаймо `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Запустіть її і перевірте, що вона працює:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
