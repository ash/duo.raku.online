---
title: Використання `until`
---

{% include menu.html %}

Цикл `until` — протилежність `while`. Він виконує блок коду, поки умова не стане `True`. Іншими словами, він працює, поки умова є `False`.

Ось знову [програма з попередньої сторінки](../while). Тепер вона використовує `until` і нову умову:

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

Порівняйте ці два рядки. Вони роблять те саме з `while` і `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Ці дві умови протилежні одна одній. Тож `while` і `until` працюють у парі, так само як `if` і `unless`.

{% include nav.html %}
