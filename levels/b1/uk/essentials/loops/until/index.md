---
title: Використання `until`
---

{% include menu.html %}

Конструкція `until` — протилежність `while`. Вона виконує блок коду, поки умова не стане `True` (іншими словами, поки умова є `False`).

Ось [програма з попередньої сторінки](../while), яку ми змінили, щоб вона використовувала `until` і нову умову:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Запустіть програму та перевірте результат:

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

Порівняйте дві програми, які роблять те саме з `while` і `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Як бачите, кожна умова протилежна іншій. Таким чином, `while` і `until` пов'язані між собою так само, як `if` і `unless`.

{% include nav.html %}
