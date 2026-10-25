---
title: Використання `until`
---

{% include menu.html %}

Цикл `until` діє протилежно до `while`. Він виконує блок коду, поки умова не стане `True`. Іншими словами, він працює, доки умова є `False`.

Це [програма з попередньої сторінки](../while), але тепер з `until` і новою умовою:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Запустіть програму і подивіться на результат:

```console
$ raku t.raku 
Enter a number, which is not bigger than 10: 10
You entered 10.
Enter a number, which is not bigger than 10: 4
You entered 4.
Enter a number, which is not bigger than 10: 1
You entered 1.
Enter a number, which is not bigger than 10: 20
You entered 20.
20 is bigger than 10.
```

## `until` проти `while`

Порівняйте дві програми, які роблять те саме: одну з `while`, а другу з `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Як бачите, кожна умова протилежна іншій. Тож `while` і `until` утворюють пару так само, як `if` і `unless`.

{% include nav.html %}
