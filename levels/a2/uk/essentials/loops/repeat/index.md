---
title: Використання `repeat`
---

{% include menu.html %}

Цикл `while` або `until` може взагалі не виконатися. Це буває, коли умова на початку є `False`. Блок `repeat` інший. Він завжди виконується хоча б один раз. Raku перевіряє умову після блоку. Для перевірки ви використовуєте ті самі слова: `while` або `until`.

Подивіться на цю програму.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

На початку змінна `$x` дорівнює `100`. Умова `while` перевіряє, чи `$x` дорівнює `10` або менше. Тож умова вже є `False`. Але блок коду все одно виконується один раз.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Тепер напишімо програму з `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Запустіть її і перевірте результат:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
