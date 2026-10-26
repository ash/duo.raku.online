---
title: 'Розв''язання: Скористайтеся перетворювачем'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

Програма `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature).

## Вивід

```console
$ raku -I. temperature.raku 100
212
```

## Коментарі

1. `use Temperature` завантажує модуль. Також він імпортує експортовану підпрограму `c-to-f`. Тож програма може викликати її напряму.

1. `sub MAIN($celsius)` отримує аргумент командного рядка. Тож ви обираєте температуру, коли запускаєте програму. Вона не записана в коді наперед. Без аргументу Raku автоматично виводить повідомлення про використання. Це повідомлення показує, як запускати програму.

1. Raku має знайти модуль. Тому ви запускаєте програму з `-I.`. Тоді Raku шукає `Temperature.rakumod` у поточному каталозі. Програма переводить `100` °C у `212` °F.

{% include nav.html %}
